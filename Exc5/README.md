### Запуск
1. `minikube start --network-plugin=cni --cni=calico`
2. `kubectl create namespace development`
3. `./create-services.sh`
4. `kubectl apply -f non-admin-api-allow.yaml`

### Проверка
1. Из front-end-app есть доступ только к backend-api-app

`kubectl exec -it front-end-app -n development -- sh`

```
curl -m 2 http://admin-back-end-api-app
curl: (28) Connection timed out after 2000 milliseconds
```

```
# curl -m 2 http://front-end-app
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>

```

2. Из admin-front-end-app есть доступ только к admin-backend-api-app:
   
`kubectl exec -it admin-front-end-app -n development -- sh`

```
curl -m 2 http://admin-back-end-api-app
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```

```
curl -m 2 http://back-end-api-app
curl: (28) Connection timed out after 2001 milliseconds
```