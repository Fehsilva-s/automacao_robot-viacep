# 📦 Projeto: Testes Automatizados - API ViaCEP

Este projeto contém a automação de testes da API [ViaCEP](https://viacep.com.br/) utilizando **Robot Framework + Selenium + RequestsLibrary**.

---

## 📁 Estrutura de Pastas

```bash
AUTOMACAO VIA CEP - ROBOT+SELENIUN/
├── object/                   # keywords reutilizáveis (scripts de apoio)
│   └── keywords.robot
├── resources/               # Variáveis globais e recursos reutilizáveis
│   └── variaveis.robot
├── Testes/                  # Casos de teste principais
│   └── Teste_case_VIACEP.robot


---

▶️ Como Executar os Testes

$ python -m robot --outputdir resultados Testes/Teste_case_VIACEP.robot

---

📦 Dependências
    Python 3.9+
    Robot Framework
    RequestsLibrary

---

🧠 Autor: Felipe Souza
