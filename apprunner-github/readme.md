Para rodar basta alterar as variaveis no arquivo `terraform.tfvars` e executar os comandos:

```bash
terraform init
terraform plan
terraform apply
```

## Observação Importante
Após a primeira rodada, se você ainda não tiver o Handshake com essa conta do GitHub, você precisará acessar o console da AWS e criar a conexão manualmente. Após isso é necessário reconstruir o serviço do App Runner via AWS Console ou via CLI.