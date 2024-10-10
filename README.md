
# Projeto de Automação Web - Testes End-to-End

## Descrição

Este projeto realiza a automação de testes da aplicação web disponível em [CAC-TAT](https://cac-tat.s3.eu-central-1.amazonaws.com/index.html) utilizando o Robot Framework com BDD e o padrão de design Page Object.

## Pré-requisitos
   Para executar este projeto, você precisará das seguintes dependências instaladas: 
   robotframework==7.1
   robotframework-seleniumlibrary==6.6.1
   selenium==4.25.0
   webdriver-manager==3.8.6

## Instalação
1. **Instale as dependências**:
   pip install -r requirements.txt

2. **Crie um ambiente virtual (opcional)**: 
   python -m venv .venv
   .venv\Scripts\activate  

## Executando os Testes
   Para executar os testes, utilize o seguinte comando:
        robot -d ./logs tests/
   Ou se preferir em modo headless:
        robot -d ./logs -v BROWSER:headlesschrome tests
   Os resultados dos testes serão gerados na pasta `./logs`.




