# models/model.py

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
import joblib

# Function to load and preprocess the data
def load_data(file_path):
    data = pd.read_csv(file_path)
    X = data.drop('target', axis=1)  # Features (assumes 'target' is the label column)
    y = data['target']              # Labels
    return X, y

# Function to train the model
def train_model(X_train, y_train):
    model = RandomForestClassifier(n_estimators=100, random_state=42)
    model.fit(X_train, y_train)
    return model

# Function to evaluate the model
def evaluate_model(model, X_test, y_test):
    predictions = model.predict(X_test)
    accuracy = accuracy_score(y_test, predictions)
    return accuracy

# Function to save the trained model
def save_model(model, model_filename):
    joblib.dump(model, model_filename)

# Main function to load data, train, and save the model
def main():
    # Load data
    X, y = load_data('data/raw/your_data.csv')
    
    # Split data into training and testing sets
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    # Train model
    model = train_model(X_train, y_train)

    # Evaluate model
    accuracy = evaluate_model(model, X_test, y_test)
    print(f"Model Accuracy: {accuracy:.2f}")

    # Save the trained model
    save_model(model, 'models/trained_model/random_forest_model.pkl')

if __name__ == '__main__':
    main()
