helm upgrade --namespace actions-runner-system \
  --wait actions-runner-controller actions-runner-controller/actions-runner-controller \
  --set "githubWebhookServer.enabled=true" \
  --reuse-values
