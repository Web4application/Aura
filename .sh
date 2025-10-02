ngrok config add-authtoken 33OQXTTTmyIjVh21zBDVmxGY28O_3PhK4sybzSw72Nm2a8Dfy
ngrok http --url=unreceivable-charlsie-superingeniously.ngrok-free.dev 80
# Rollback to last backup
python tools/translate.py rollback translate-regex101-com-site-en.xlf

# Export missing
python tools/translate.py export translate-regex101-com-site-en.xlf

# Open untranslated.csv in Excel, fill in "target" column

# Import back
python tools/translate.py import translate-regex101-com-site-en.xlf untranslated.csv
