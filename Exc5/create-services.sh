kubectl create namespace development

kubectl run front-end-app --image=nginx --labels=role=front-end -n development --expose --port=80

kubectl run back-end-api-app --image=nginx --labels=role=back-end-api -n development --expose --port=80

kubectl run admin-front-end-app --image=nginx --labels=role=admin-front-end -n development --expose --port=80

kubectl run admin-back-end-api-app --image=nginx --labels=role=admin-back-end-api -n development --expose --port=80
