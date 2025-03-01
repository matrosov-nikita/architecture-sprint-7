### Запуск
1. `minikube start`
2. `kubectl create namespace development`
3. `./create-users.sh`
4. `kubectl apply -f roles.yaml`
5. `kubectl apply -f roles_bindings.yaml`
6. Проверка:
   - `kubectl auth can-i get secrets --as=secure-operator -n development`, yes
   - `kubectl auth can-i get pods --as=cluster-viewer -n development`, yes
   - `kubectl auth can-i create pods --as=cluster-viewer -n development`, no
   - `kubectl auth can-i get pods --as=cluster-manager -n development`, yes
   - `kubectl auth can-i create pods --as=cluster-manager -n development`, yes
