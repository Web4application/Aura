import tensorflow as tf
import numpy as np
from data_preprocessing import preprocess_data

def load_model(model_path):
model = tf.keras.models.load_model(model_path)
return model

def make_prediction(model, new_data):
preprocessed_data = preprocess_data(new_data)
prediction = model.predict(preprocessed_data)
return prediction

def preprocess_input(image_path):
from tensorflow.keras.preprocessing import image
img = image.load_img(image_path, target_size=(150, 150))
img_array = image.img_to_array(img)
img_array = np.expand_dims(img_array, axis=0)
img_array /= 255.0
return img_array

if __name__ == "__main__":
model = load_model('kubu_hai_model.h5')
new_data = preprocess_input('path/to/your/image.jpg')
prediction = make_prediction(model, new_data)
print(f"Prediction: {prediction}")


if __name__ == "__main__":
model = load_model('kubu_hai_model.h5')
new_data = np.array([[value1, value2, value3, ...]])  # Replace with actual data
prediction = make_prediction(model, new_data)
print(f"Prediction: {prediction}")
