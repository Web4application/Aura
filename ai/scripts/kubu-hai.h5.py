import os
import json
import logging

# Load configuration from a JSON file
def load_config(config_path='config.json'):
with open(config_path, 'r') as config_file:
config = json.load(config_file)
return config

config = load_config()

# Setup logging
def setup_logging(log_level=logging.INFO):
logging.basicConfig(level=log_level, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)
return logger

logger = setup_logging()
logger.info("Kubu-Hai package initialized")

# Utility function
def print_welcome_message():
print("Welcome to the Kubu-Hai AI package!")

print_welcome_message()

# Importing necessary modules from the package
from .ai_kubu import some_function
from .ai_main import main_function
from .ai_model import build_model

# Package-level variable
__version__ = '1.0.0'

# Initialization code
def initialize():
print("Kubu-Hai package initialized")

# Define what gets imported when using 'from package import *'
__all__ = ['some_function', 'main_function', 'build_model', 'initialize', 'load_config', 'setup_logging', 'print_welcome_message']
