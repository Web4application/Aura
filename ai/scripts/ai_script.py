import sqlite3
import pandas as pd
import tensorflow as tf
from tensorflow.keras.models import Sequential, load_model
from tensorflow.keras.layers import Dense
import joblib

# Database setup
def setup_database():
    conn = sqlite3.connect('example.db')
    cursor = conn.cursor()
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS ai_data (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        input_data TEXT,
        output_data TEXT,
        timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
    )
    ''')
    conn.commit()
    conn.close()

# Insert data into the database
def insert_data(input_data, output_data):
    conn = sqlite3.connect('example.db')
    cursor = conn.cursor()
    cursor.execute('''
    INSERT INTO ai_data (input_data, output_data)
    VALUES (?, ?)
    ''', (input_data, output_data))
    conn.commit()
    conn.close()

# Retrieve all data from the database
def get_all_data():
    conn = sqlite3.connect('example.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM ai_data')
    rows = cursor.fetchall()
    conn.close()
    return rows

# Load data
def load_data(file_path):
    return pd.read_csv(file_path)

# Preprocess data
def preprocess_data(df):
    df = df.dropna()
    return df

# Feature engineering
def feature_engineering(df):
    df['new_feature'] = df['existing_feature'] * 2  # Adjust 'existing_feature' to your actual column name
    return df

# Train TensorFlow model
def train_model(data):
    x_train = data.drop(columns=['new_feature']).values
    y_train = data['new_feature'].values

    model = Sequential([
        Dense(128, activation='relu', input_shape=(x_train.shape[1],)),
        Dense(64, activation='relu'),
        Dense(10, activation='softmax')
    ])
    model.compile(optimizer='adam', loss='sparse_categorical_crossentropy', metrics=['accuracy'])
    model.fit(x_train, y_train, epochs=5)
    model_save_path = 'models/trained_model.h5'
    model.save(model_save_path)

# Evaluate TensorFlow model
def evaluate_model(test_data):
    x_test = test_data.drop(columns=['new_feature']).values
    y_test = test_data['new_feature'].values

    model_save_path = 'models/trained_model.h5'
    model = load_model(model_save_path)
    loss, accuracy = model.evaluate(x_test, y_test)
    print(f'Test Accuracy: {accuracy}')

# Reactive behavior
def react_to_input(input_data):
    if input_data == 'Hello':
        print('Hi there!')
    else:
        print('I am here to assist you.')

# Self-awareness
def self_awareness():
    print('I am a program designed to assist with AI tasks.')

# Main function
def main():
    setup_database()
    insert_data('Sample input', 'Sample output')
    data = get_all_data()
    print('Data from database:', data)

    # Adjust the path to your dataset
    data_file_path = 'data/dataset.csv'
    df = load_data(data_file_path)
    df = preprocess_data(df)
    df = feature_engineering(df)

    train_model(df)
    evaluate_model(df)

    react_to_input('Hello')
    self_awareness()

if __name__ == "__main__":
    main()
