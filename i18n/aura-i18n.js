import fs from 'fs';
import { parseStringPromise } from 'xml2js';

class AuraI18n {
  constructor(defaultLang = 'en', localePath = './locales') {
    this.defaultLang = defaultLang;
    this.localePath = localePath;
    this.translations = {};
    this.modules = ['ui', 'notif', 'tooltip']; // default modules
    this.currentLang = defaultLang;
  }

  // Detect user language
  detectLanguage() {
    const lang = navigator.language || navigator.userLanguage || this.defaultLang;
    return lang.split('-')[0];
  }

  // Load a single .xlf file
  async loadXLF(filePath) {
    const xmlData = fs.readFileSync(filePath, 'utf8');
    const result = await parseStringPromise(xmlData);
    const transUnits = result.xliff.file[0].body[0]['trans-unit'];
    const map = {};
    transUnits.forEach(unit => {
      const id = unit.$.id;
      map[id] = unit.target[0];
    });
    return map;
  }

  // Load translations for a module
  async loadModule(moduleName, lang) {
    const filePath = `${this.localePath}/${moduleName}-${lang}.xlf`;
    try {
      const moduleTranslations = await this.loadXLF(filePath);
      this.translations = { ...this.translations, ...moduleTranslations };
    } catch (err) {
      console.warn(`Failed to load ${moduleName} for ${lang}. Falling back to default.`);
      if (lang !== this.defaultLang) {
        await this.loadModule(moduleName, this.defaultLang);
      }
    }
  }

  // Load all modules for a language
  async loadLanguage(lang) {
    this.translations = {};
    this.currentLang = lang;
    for (const module of this.modules) {
      await this.loadModule(module, lang);
    }
    this.translateUI();
  }

  // Apply translations to the UI
  translateUI() {
    document.querySelectorAll('[data-i18n]').forEach(el => {
      const key = el.getAttribute('data-i18n');
      el.textContent = this.translations[key] || el.textContent;
    });
  }

  // Initialize module
  async init(modules = ['ui', 'notif', 'tooltip']) {
    this.modules = modules;
    const lang = this.detectLanguage();
    await this.loadLanguage(lang);
  }

  // Switch language dynamically
  async switchLanguage(lang) {
    await this.loadLanguage(lang);
  }
}

export default AuraI18n;
