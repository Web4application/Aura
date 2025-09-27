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
