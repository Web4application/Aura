import onnxruntime as ort

def run_model(model_path, inputs: dict):
    sess = ort.InferenceSession(model_path)
    outputs = sess.run(None, inputs)
    return outputs
