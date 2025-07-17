# Terraform AWS Example

This project demonstrates how to create a basic AWS S3 bucket using Terraform.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/) configured with your credentials.


## Usage

1.  **Initialize Terraform:**

    ```bash
    terraform init
    ```

2.  **Plan the deployment:**

    ```bash
    terraform plan
    ```

3.  **Apply the changes:**

    ```bash
    terraform apply
    ```

4.  **Destroy the resources:**
    ```bash
    terraform destroy
    ```

## Arquivos de variáveis reais
Os arquivos de variáveis reais são utilizados para definir as configurações específicas do ambiente, como credenciais da AWS, região, etc. Certifique-se de criar um arquivo `terraform.tfvars` ou passar as variáveis diretamente na linha de comando.

terraform apply -var-file="nomeArquivo.tfvars"



## Instalação do Terraform

Siga as instruções abaixo para instalar o Terraform no Ubuntu.

1. **Atualize a lista de pacotes e instale os pré-requisitos:**

   ```bash
   sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
   ```

2. **Instale a chave GPG da HashiCorp:**

   ```bash
   wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
   ```
    
    Digite sua senha de usuário quando solicitado.

3. **Adicione o repositório oficial da HashiCorp:**

   ```bash
   echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
   ```

4. **Atualize a lista de pacotes novamente:**

   ```bash
   sudo apt-get update
   ```

5. **Instale o Terraform:**

   ```bash
   sudo apt-get install terraform
   ```

6. **Verifique a instalação:**
   ```bash
   terraform --version
   ```

## Variáveis

### Linha de comando

Você pode passar as variáveis diretamente na linha de comando ao executar o Terraform:

```bash
terraform plan -var="aws_profile=credencial 1" -var="aws_region=us-east-1" 
```

&nbsp;

# AWS CLI

##  Instalação

Siga as instruções abaixo para instalar a AWS CLI no seu sistema operacional.

## Linux

1.  **Baixe o arquivo de instalação:**

    ```bash
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    ```

2.  **Descompacte o arquivo:**

    ```bash
    unzip awscliv2.zip
    ```

3.  **Execute o instalador:**

    ```bash
    sudo ./aws/install
    ```

4.  **Verifique a instalação:**
    ```bash
    aws --version
    ```

&nbsp;

# Configurando as Credenciais da AWS CLI

Depois de instalar a AWS CLI, você precisa configurar suas credenciais para que o Terraform possa interagir com sua conta da AWS.

1.  **Execute o comando de configuração:**

    ```bash
    aws configure
    ```

2.  **Forneça suas credenciais:**

    Você será solicitado a inserir as seguintes informações:

    *   **AWS Access Key ID:** Suas credenciais de acesso da AWS.
    *   **AWS Secret Access Key:** Sua chave de acesso secreta da AWS.
    *   **Default region name:** A região da AWS onde você deseja criar seus recursos (por exemplo, `us-east-1`).
    *   **Default output format:** O formato de saída padrão (por exemplo, `json`).

    Depois de inserir essas informações, a AWS CLI criará os arquivos `credentials` e `config` no diretório `~/.aws/`.


## Como criar mais de uma credencial?

- Primeiro abrar o arquivo de credênciais `~/.aws/credentials` e adicionar uma nova seção para a nova credencial:

```ini
[credencial 1]
aws_access_key_id = YOUR_DEFAULT_ACCESS_KEY
aws_secret_access_key = YOUR_DEFAULT_SECRET_KEY

[credencial 2]
aws_access_key_id = YOUR_PROFILE_ACCESS_KEY
aws_secret_access_key = YOUR_PROFILE_SECRET_KEY
region = us-east-1
```

- Para testar a nova credencial, você pode usar o comando `aws sts get-caller-identity --profile credencial 2` para verificar se a configuração está correta.