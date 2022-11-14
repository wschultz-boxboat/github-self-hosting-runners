helm repo add actions-runner-controller https://actions-runner-controller.github.io/actions-runner-controller

helm repo update

helm upgrade --install --namespace actions-runner-system --create-namespace\
  --set=authSecret.create=true\
  --set=authSecret.github_app_id="256804"\
  --set=authSecret.github_app_installation_id="30806363"\
  --set=authSecret.github_app_private_key="$(cat /Users/william/Downloads/actions-runner-controller-testing.2022-11-01.private-key.pem)"\
  --wait actions-runner-controller actions-runner-controller/actions-runner-controller

