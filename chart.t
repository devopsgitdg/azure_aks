create dns zone: gitlab-ee.com
record set: support.gitlab-ee.com
external ip: 
create a name space

kubectl create ns gitlab-ns

helm repo add gitlab https://charts.gitlab.io/
helm repo update


helm upgrade --install gitlab gitlab/gitlab \
  --timeout 600s \
  --set global.hosts.domain=gitlab-ee.com \
  --set global.hosts.externalIP=20.72.124.187 \
  --set certmanager-issuer.email=hugo@gitlab-ee.com \
  --set postgresql.image.tag=13.6.0
  --version=6.3.0
  -n default


# Check if opening the firewall is needed with: sudo systemctl status firewalld
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo systemctl reload firewalld

sudo yum install -y postfix
sudo systemctl enable postfix
sudo systemctl start postfix

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash
 
sudo yum install -y gitlab-ee


  sudo EXTERNAL_URL="https://support.gitlab-ee.com" yum install -y gitlab-ee