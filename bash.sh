kubectl apply -f https://raw.githubusercontent.com/NVIDIA/k8s-device-plugin/v0.14.0/nvidia-device-plugin.yml
kubectl apply -f https://github.com/kedacore/keda/releases/download/v2.14.0/keda-2.14.0.yaml

docker run -it --rm ghcr.io/web4application/kubuverse@sha256:25f25b85336f0404001537eeb4cad839b5aa27aaaae12818704e9675ae8bc43d

docker pull ghcr.io/web4application/kubuverse@sha256:25f25b85336f0404001537eeb4cad839b5aa27aaaae12818704e9675ae8bc43d

docker buildx imagetools inspect ghcr.io/web4application/kubuverse:latest

kubectl create -f https://raw.githubusercontent.com/NVIDIA/dcgm-exporter/main/dcgm-exporter.yaml

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install kube-prometheus prometheus-community/kube-prometheus-stack

kubectl -n kubernetes-dashboard create token admin-user

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml

python3 --version
pip list | head -20
node -v
npm -v
go version
rustc --version
nvidia-smi   # if CUDA/GPU is baked in

cat /etc/os-release
echo $PATH
printenv

#!/bin/bash
set -e

echo "🚀 Setting up Aura + Kubuverse Kubernetes Environment..."

# 1. Deploy NVIDIA GPU device plugin
echo "⚡ Installing NVIDIA GPU device plugin..."
kubectl apply -f https://raw.githubusercontent.com/NVIDIA/k8s-device-plugin/v0.14.0/nvidia-device-plugin.yml

# 2. Deploy KEDA autoscaler
echo "⚡ Installing KEDA..."
kubectl apply -f https://github.com/kedacore/keda/releases/download/v2.14.0/keda-2.14.0.yaml

# 3. Test Kubuverse image locally
echo "⚡ Pulling and running Kubuverse image..."
docker pull ghcr.io/web4application/kubuverse@sha256:25f25b85336f0404001537eeb4cad839b5aa27aaaae12818704e9675ae8bc43d
docker run -it --rm ghcr.io/web4application/kubuverse@sha256:25f25b85336f0404001537eeb4cad839b5aa27aaaae12818704e9675ae8bc43d bash || true

# 4. Inspect multi-arch image
echo "⚡ Inspecting Kubuverse image (multi-arch)..."
docker buildx imagetools inspect ghcr.io/web4application/kubuverse:latest

# 5. Deploy NVIDIA GPU monitoring exporter
echo "⚡ Installing NVIDIA DCGM exporter..."
kubectl create -f https://raw.githubusercontent.com/NVIDIA/dcgm-exporter/main/dcgm-exporter.yaml

# 6. Install Prometheus + Grafana
echo "⚡ Installing Prometheus + Grafana monitoring stack..."
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install kube-prometheus prometheus-community/kube-prometheus-stack

# 7. Deploy Kubernetes Dashboard
echo "⚡ Installing Kubernetes Dashboard..."
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml

# 8. Create admin-user for dashboard
echo "⚡ Creating admin user for Kubernetes Dashboard..."
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: ServiceAccount
metadata:
  name: admin-user
  namespace: kubernetes-dashboard
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: admin-user
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: admin-user
  namespace: kubernetes-dashboard
EOF

# 9. Get login token for Dashboard
echo "⚡ Retrieving Dashboard login token..."
kubectl -n kubernetes-dashboard create token admin-user

echo "✅ Aura + Kubuverse environment is ready!"

docker buildx imagetools inspect ghcr.io/web4application/kubuverse@sha256:25f25b85336f0404001537eeb4cad839b5aa27aaaae12818704e9675ae8bc43d

docker run -it --rm ghcr.io/web4application/kubuverse@sha256:25f25b85336f0404001537eeb4cad839b5aa27aaaae12818704e9675ae8bc43d bash
