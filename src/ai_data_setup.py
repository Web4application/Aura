import json
import tensorflow as tf

def load_config(config_path='config.json'):
with open(config_path, 'r') as config_file:
config = json.load(config_file)
return config

config = load_config()

# Example usage of the configuration settings
train_data_path = config['data']['train_data_path']
batch_size = config['data']['batch_size']
image_size = tuple(config['data']['image_size'])

# Data augmentation settings
data_gen = tf.keras.preprocessing.image.ImageDataGenerator(
rotation_range=config['data_augmentation']['rotation_range'],
width_shift_range=config['data_augmentation']['width_shift_range'],
height_shift_range=config['data_augmentation']['height_shift_range'],
shear_range=config['data_augmentation']['shear_range'],
zoom_range=config['data_augmentation']['zoom_range'],
horizontal_flip=config['data_augmentation']['horizontal_flip'],
fill_mode=config['data_augmentation']['fill_mode']
)

# Model checkpoint settings
checkpoint_callback = tf.keras.callbacks.ModelCheckpoint(
filepath=config['checkpoint']['filepath'],
save_best_only=config['checkpoint']['save_best_only'],
save_weights_only=config['checkpoint']['save_weights_only'],
monitor=config['checkpoint']['monitor'],
mode=config['checkpoint']['mode']
)

# Early stopping settings
early_stopping_callback = tf.keras.callbacks.EarlyStopping(
monitor=config['early_stopping']['monitor'],
patience=config['early_stopping']['patience'],
mode=config['early_stopping']['mode']
)

# TensorBoard callback settings
tensorboard_callback = tf.keras.callbacks.TensorBoard(
log_dir=config['callbacks']['tensorboard']['log_dir'],
update_freq=config['callbacks']['tensorboard']['update_freq']
)

# Build and compile the model
model = build_model(config['model']['input_shape'])
model.compile(
optimizer=tf.keras.optimizers.Adam(learning_rate=config['optimizer']['learning_rate']),
loss='binary_crossentropy',
metrics=['accuracy']
)

# Train the model
model.fit(
data_gen.flow_from_directory(train_data_path, target_size=image_size, batch_size=batch_size, class_mode='binary'),
epochs=config['training']['epochs'],
validation_split=config['training']['validation_split'],
callbacks=[checkpoint_callback, early_stopping_callback, tensorboard_callback]
)
