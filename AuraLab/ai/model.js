import getpass
import os

if not os.environ.get("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"):
  os.environ["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"] = getpass.getpass("Enter API key for NVIDIA: ")

from langchain.chat_models import init_chat_model

model = init_chat_model("meta/llama3-70b-instruct", model_provider="kubulee")
