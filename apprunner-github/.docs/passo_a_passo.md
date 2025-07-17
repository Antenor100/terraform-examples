Inicie settando o profile da AWS caso não tenho o default definido:

```bash
export AWS_PROFILE=digiall
```

Após isso garanta que você tem o bucket **apprunner-digiall-site** criado na região de criação do App Runner.

Para criar o App Runner basta alterar as variáveis no arquivo `production/terraform.tfvars` ou `develop/terraform.tfvars` e executar os comandos:

```bash
terraform init -backend-config="production/backend.tfbackend"
terraform validate
terraform plan -var-file="production/terraform.tfvars"  
terraform aply -var-file="production/terraform.tfvars"  
```

## Observação Importante
Após a primeira rodada, se você ainda não tiver o Handshake com essa conta do GitHub, você precisará acessar o console da AWS e criar a conexão manualmente. Após isso é necessário reconstruir o serviço do App Runner via AWS Console ou via CLI.

Se possível faça o complete do handshake no console da AWS logo após o inicio do terraform para evitar problemas de permissão e reruns desnecessários.
