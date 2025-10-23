# 🧠 EventosTec API

  API REST desenvolvida para o gerenciamento de eventos tecnológicos — permitindo criação, listagem, filtragem e detalhamento de eventos, bem como a associação de cupons de desconto.

---

## 🚀 Visão Geral

  O **EventosTec API** foi criado com o objetivo de oferecer uma base sólida e escalável para o gerenciamento de eventos.  
A aplicação segue boas práticas de arquitetura, como separação de camadas (Controller, Service e Repository) e versionamento de API.

---

## 🧩 Modelagem e Arquitetura da Solução

A imagem abaixo apresenta duas visões principais do projeto **EventosTec API**:

- **Modelagem de Dados:** entidades principais do sistema e seus relacionamentos (Event, Address, Coupon, Classname).
- **Desenho de Solução:** representação da arquitetura implantada na AWS, incluindo EC2, S3 e comunicação com o banco de dados.

<p align="center">
  <img src="https://github.com/user-attachments/assets/733805ff-8cb4-42d7-969b-c503c91f53f7" alt="Modelagem e Arquitetura da Solução - EventosTec API" width="700"/>
</p>


---

## 🧰 Principais Tecnologias Utilizadas


| Categoria | Ferramenta / Tecnologia |
|------------|-------------------------|
| Linguagem | Java |
| Framework | Spring Boot |
| ORM | Spring Data JPA / Hibernate |
| Banco de Dados | PostgreSQL|
| Build Tool | Maven |
| Deploy | AWS EC2 |
| Controle de versão | Git / GitHub |

---

## 📦 Estrutura do Projeto

```text
src/
├── main/
│ ├── java/com/eventostec/
│ │ ├── controller/ → Endpoints da aplicação
│ │ ├── config/ → Configurações da aplicação - integração com a AWS
│ │ ├── service/ → Lógica de negócio
│ │ ├── repositories/ → Integração com o banco de dados
│ │ └── domain/ → Entidades e DTOs
│ └── resources/
│       ├── db/
│       │   └── migration/  → Scripts de migration
``` 

---

## ⚙️ Endpoints Principais

| Método | Endpoint | Descrição |
|--------|-----------|-----------|
| GET | `/api/event` | Lista os eventos futuros (com paginação). |
| GET | `/api/event/filter` | Retorna eventos filtrados por título, cidade, UF e/ou intervalo de datas (com paginação). |
| GET | `/api/event/{id}` | Retorna os detalhes completos de um evento específico, a partir do seu UUID. |
| POST | `/api/event` | Cria um novo evento; Recebe dados via multipart/form-data, permitindo o envio de imagem opcional |

---

## 🧪 Exemplo de Request (POST)

```json
POST /api/event
{
  "nome": "Java Summit 2025",
  "descricao": "Conferência sobre inovação em Java e microserviços",
	"imgUrl": "https://eventostec-imagem1.s3.amazonaws.com/93ba9eb2-8563-4fba-9408-a78fafc091ba-frontin.png",
  "eventUrl": "https://frontinsampa.com.br",
  "remote": false,
  "date": "2027-08-18T12:48:03.000+00:00",
  "address": "São Paulo - SP"
}
```
---

## ☁️ Deploy na AWS

A aplicação foi empacotada com Maven (mvn clean package) e implantada na AWS, utilizando o serviço EC2.

Etapas de deploy:

1. Build da aplicação (.jar) com Maven

2. Criação do ambiente na AWS (via console ou CLI)

3. Upload do artefato gerado

3. Configuração das variáveis de ambiente (banco, porta, etc.)

5. Deploy automatizado ou manual

---

### 🧭 Próximos Passos / Melhorias Futuras

* Implementar autenticação e autorização com JWT
* Adicionar paginação e filtros de busca
* Documentação detalhada com Swagger UI
* Adicionar testes de integração
* Dockerizar a aplicação
* Automatizar CI/CD (GitHub Actions → AWS)
* Monitoramento com CloudWatch
