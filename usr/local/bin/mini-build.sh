#!/bin/bash
SOURCE=$1
OUTPUT=$2

if [[ -z "$SOURCE" ]]; then
  echo "Usage: $0 <source-code-dir> <output-name>"
  exit 1
fi

detect_language() {
  if ls $SOURCE/*.c >/dev/null 2>&1; then echo "c"
  elif ls $SOURCE/*.cpp >/dev/null 2>&1; then echo "cpp"
  elif ls $SOURCE/*.rs >/dev/null 2>&1; then echo "rust"
  elif ls $SOURCE/*.go >/dev/null 2>&1; then echo "go"
  elif ls $SOURCE/*.py >/dev/null 2>&1; then echo "python"
  elif ls $SOURCE/*.js >/dev/null 2>&1; then echo "node"
  elif ls $SOURCE/*.java >/dev/null 2>&1; then echo "java"
  elif ls $SOURCE/pubspec.yaml >/dev/null 2>&1; then echo "flutter"
  elif ls $SOURCE/package.json >/dev/null 2>&1; then echo "node"
  else echo "unknown"
  fi
}

LANG=$(detect_language)
echo "⚡ Detected language: $LANG"

case $LANG in
  c)     gcc $SOURCE/*.c -o $OUTPUT ;;
  cpp)   g++ $SOURCE/*.cpp -o $OUTPUT ;;
  rust)  cargo build --release --manifest-path $SOURCE/Cargo.toml ;;
  go)    go build -o $OUTPUT $SOURCE ;;
  python) pyinstaller --onefile $SOURCE/*.py -n $OUTPUT ;;
  node)  npm --prefix $SOURCE install && npm --prefix $SOURCE run build ;;
  java)  javac $SOURCE/*.java -d build && jar cf $OUTPUT.jar -C build . ;;
  flutter) flutter build apk --release --target $SOURCE/lib/main.dart ;;
  *) echo "❌ Unknown source type. Manual build required." ;;
esac
