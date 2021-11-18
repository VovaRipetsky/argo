docket build
docker push
change image on line 3235

kubectl delete clusterrolebinding argocd-application-controller

kubectl create clusterrolebinding argocd-application-controller --clusterrole cluster-admin --serviceaccount=default:argocd-application-controller
kubectl apply -f argocd.yaml


tips:
- need have permissions for cluster
- need have permissions for aws kms key
-----------------------------------------

For RBAC

eksctl utils associate-iam-oidc-provider --cluster <cluster_name> --approve

eksctl create iamserviceaccount     --name default     --namespace argo     --cluster vova1    --attach-policy-arn arn:aws:iam::676833452478:policy/ArgoCD-KMS     --approve     --override-existing-serviceaccounts


