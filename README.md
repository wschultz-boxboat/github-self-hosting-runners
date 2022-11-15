# github-self-hosting-runners


# Steps
1. Install an ingress controller
  a. scripts/ingress-controller.sh
2. Import certificate manager images into ACR
  a. scripts/import-images.sh
3. Install a certificate manager
  a. scripts/cert-manager.sh
4. Install a cluster issuer
  a. manifests/cluster-issuer.yaml 
5. Install Actions Runner Controller
  a. scripts/actions-runenr-controller.sh
6. Enable GitHub Webhook for Actions Runner Controller
  a. scripts/enable-webhook.sh
7. Create Ingress Route for GitHub Webhook Server Service
  a. manifests/actions-runner-controller-ingress.yaml
8. Create Webhook within Org or Repo
  a. Followed steps [here](https://github.com/actions-runner-controller/actions-runner-controller/blob/master/docs/detailed-docs.md#webhook-driven-scaling)
9. Create Self Hosted Runner with Horizontal Autoscaling
  a. manifests/webhook-runner-deployment.yaml
10. Run a GitHub Action to test

