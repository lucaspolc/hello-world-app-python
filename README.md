##### DISPOSIÇÃO DAS PASTAS

/hello-world-app
    /app
        app.py
        requirements.txt
    /Dockerfile
    /k8s
        deployment.yaml
        service.yaml
        configmap.yaml
    /terraform
        main.tf
        variables.tf

###### command line build/deploy

docker build -t hello-world-app . && docker push lucaspolc/hello-world-app:latest && kubectl apply -f k8s/deployment.yaml && kubectl apply -f k8s/service.yaml && kubectl apply -f k8s/configmap.yaml
