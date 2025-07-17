Para rodar basta alterar as variáveis no arquivo `terraform.tfvars` e executar os comandos:

```bash
terraform init
terraform plan
terraform apply
```

## Observação Importante
Após a primeira rodada, se você ainda não tiver o Handshake com essa conta do GitHub, você precisará acessar o console da AWS e criar a conexão manualmente. Após isso é necessário reconstruir o serviço do App Runner via AWS Console ou via CLI.

Se possível faça o complete do handshake no console da AWS logo após o inicio do terraform para evitar problemas de permissão e reruns desnecessários.
