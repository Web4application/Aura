docker run -it --rm \
  -e GEMINI_API_KEY="YOUR_API_KEY_HERE" \
  --device /dev/snd \
  --device /dev/video0 \
  gemini-live-chat --mode camera