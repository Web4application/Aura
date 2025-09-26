from providers.openai_provider import call_openai
from providers.googleai_provider import call_google_ai
from config import settings

def call_enclovai(prompt, temperature=0.7, max_tokens=2048, model="auto"):
    if model == "openai" or settings.PROVIDER == "openai":
        return call_openai(prompt, temperature, max_tokens)
    elif model == "google" or settings.PROVIDER == "google":
        return call_google_ai(prompt, temperature, max_tokens)
    else:
        try:
            return call_openai(prompt, temperature, max_tokens)
        except Exception:
            return call_google_ai(prompt, temperature, max_tokens)
