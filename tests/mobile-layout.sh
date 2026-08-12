#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
from pathlib import Path

css = Path("assets/css/main.css").read_text()
assert "grid-template-columns: minmax(0, var(--container-width));" in css
assert "body > * {\n  min-width: 0;\n}" in css
assert "overflow-wrap: anywhere;" in css
PY
