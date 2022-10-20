
create dns zone: gitlab-ee.com
record set: support.gitlab-ee.com
external ip: 


az aks list --resource-group kubernetes-dg --output table

Configure kubectl to connect to your Kubernetes cluster using the az aks get-credentials command. The following command downloads credentials and configures the Kubernetes CLI to use them.

 
az aks get-credentials --resource-group kubernetes-dg --name dg-aks1
kubectl get nodes

kubectl get nodes -o wide

kubectl debug node/aks-default-30278789-vmss000001 -it --image=mcr.microsoft.com/dotnet/runtime-deps:6.0


 
chroot /host
kubectl get  ingress  -n default
 ctr containers ls

 https://docs.microsoft.com/en-us/azure/aks/troubleshoot-linux

tenant_id: e394c503-ceb8-4916-a9b1-70c7369fbc36