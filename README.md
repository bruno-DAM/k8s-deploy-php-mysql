# k8s-deploy-php-mysql

Aplicação full-stack desenvolvida em kubernetes.

### Como usar 

```bash
# Clone o projeto
git clone https://github.com/bruno-DAM/k8s-deploy-php-mysql

cd k8s-deploy-php-mysql
```

```bash
# Transforma o script em executável

chmod +x script.sh
```

```bash
./script.sh

# Consiga o IP da aplicação para acesso

kubectl.exe get service
```

Após isso, pegue o endereço **IP** do serviço **php** que irá aparecer com o comando acima, entre no arquivo **js.js** e coloque na **url: ""** o endereço **IP**. (Exemplo: url: "http://10.10.15.1").
