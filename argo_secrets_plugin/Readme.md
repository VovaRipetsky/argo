docket build
docker push
change image on line 3235

kubectl delete clusterrolebinding argocd-application-controller

kubectl create clusterrolebinding argocd-application-controller --clusterrole cluster-admin --serviceaccount=default:argocd-application-controller
kubectl apply -f argocd.yaml


tips:
- need have permissions for cluster
- need have permissions for aws kms key
