import os

class Config:
    def __init__(self):
        self.data = {
            "train_data_path": "data/train",
            "test_data_path": "data/test",
            "batch_size": 32,
            "image_size": (150, 150)
        }

        self.data_augmentation = {
            "rotation_range": 20,
            "width_shift_range": 0.2,
            "height_shift_range": 0.2,
            "shear_range": 0.2,
            "zoom_range": 0.2,
            "horizontal_flip": True,
            "fill_mode": "nearest"
        }

        self.advanced_data_augmentation = {
            "mixup": {
                "enabled": True,
                "alpha": 0.2
            },
            "cutmix": {
                "enabled": True,
                "alpha": 1.0
            }
        }

        self.model = {
            "input_shape": (150, 150, 3),
            "num_classes": 2,
            "dropout_rate": 0.5
        }

        self.training = {
            "epochs": 10,
            "learning_rate": 0.001,
            "validation_split": 0.2
        }

        self.hyperparameter_tuning = {
            "enabled": True,
            "method": "grid_search",
            "parameters": {
                "learning_rate": [0.001, 0.01, 0.1],
                "batch_size": [16, 32, 64],
                "epochs": [10, 20, 30]
            }
        }

        self.distributed_training = {
            "enabled": True,
            "strategy": "MirroredStrategy",
            "num_gpus": 2
        }

        self.checkpoint = {
            "save_best_only": True,
            "save_weights_only": False,
            "monitor": "val_loss",
            "mode": "min",
            "filepath": "checkpoints/model-{epoch:02d}-{val_loss:.2f}.h5"
        }

        self.early_stopping = {
            "monitor": "val_loss",
            "patience": 10,
            "mode": "min"
        }

        self.learning_rate_scheduler = {
            "schedule": "exponential_decay",
            "initial_learning_rate": 0.001,
            "decay_steps": 100000,
            "decay_rate": 0.96,
            "staircase": True
        }

        self.optimizer = {
            "type": "Adam",
            "learning_rate": 0.001,
            "beta_1": 0.9,
            "beta_2": 0.999,
            "epsilon": 1e-07
        }

        self.advanced_regularization = {
            "dropout": {
                "enabled": True,
                "rate": 0.5
            },
            "l1_l2": {
                "enabled": True,
                "l1": 0.01,
                "l2": 0.01
            }
        }

        self.model_ensembling = {
            "enabled": True,
            "methods": ["bagging", "boosting"],
            "num_models": 5
        }

        self.custom_callbacks = {
            "reduce_lr_on_plateau": {
                "enabled": True,
                "monitor": "val_loss",
                "factor": 0.1,
                "patience": 5,
                "min_lr": 1e-6
            },
            "csv_logger": {
                "enabled": True,
                "filename": "training_log.csv"
            }
        }

        self.monitoring = {
            "enabled": True,
            "service": "Slack",
            "webhook_url": "https://hooks.slack.com/services/your/webhook/url"
        }

        self.data_versioning = {
            "enabled": True,
            "version": "1.0.0",
            "storage_path": "data/versions"
        }

        self.logging = {
            "log_level": "INFO",
            "log_file": "logs/training.log"
        }

        self.data_paths = {
            "validation_data_path": "data/validation",
            "test_data_path": "data/test"
        }

        self.general_ai = {
            "enabled": True,
            "description": "General AI settings for basic tasks",
            "tasks": ["classification", "regression"]
        }

        self.predictive_ai = {
            "enabled": True,
            "description": "Settings for predictive AI models",
            "forecast_horizon": 10,
            "features": ["feature1", "feature2", "feature3"]
        }

        self.self_aware_ai = {
            "enabled": True,
            "description": "Simulated self-aware AI settings",
            "reflection_interval": 5
        }

        self.reactive_ai = {
            "enabled": True,
            "description": "Settings for reactive AI models",
            "rules": {
                "hungry": "eat",
                "tired": "sleep",
                "bored": "play"
            }
        }

        self.machine_learning = {
            "enabled": True,
            "algorithms": ["SVM", "RandomForest", "KNN"],
            "parameters": {
                "SVM": {
                    "C": [0.1, 1, 10],
                    "kernel": ["linear", "rbf"]
                },
                "RandomForest": {
                    "n_estimators": [100, 200, 300],
                    "max_depth": [10, 20, 30]
                },
                "KNN": {
                    "n_neighbors": [3, 5, 7],
                    "weights": ["uniform", "distance"]
                }
            }
        }

# Create an instance of the Config class
config = Config()
