# Validation Rules Reference

## JSON Validation (.json, .jsonc):
```bash
python3 -c "import json; json.load(open('/path/to/file.jsonc'))" && echo "JSON valid!"
```

## Python Validation:
```bash
python3 -m py_compile /path/to/file.py && echo "Python syntax OK!"
```

## YAML Validation:
```bash
python3 -c "import yaml; yaml.safe_load(open('/path/to/file.yaml'))" && echo "YAML valid!"
```

## Bash Script Validation:
```bash
bash -n /path/to/script.sh && echo "Bash syntax OK!"
```

## Rules:
1. Validate BEFORE writing/fixing files
2. If validation fails, fix and re-validate before completing
3. For config files (opencode.jsonc, etc.), always validate after edits
4. Report validation status in response
5. Never leave JSON with trailing commas
6. Never submit code without validating syntax first
7. Never assume the file is correct - always verify
