# SkillBridge - API Backend (Java Spring Boot)

## 👥 Autores
- **Arthur Bessa Pian** — RM 99215  
- **Marcio Gastaldi** — RM 98811  
- **Davi Desenzi** — RM 550849  

---

## 🧠 Sobre o Projeto

Esta é a **API RESTful** que alimenta o aplicativo mobile **SkillBridge**.  
Ela funciona como o “cérebro” do sistema, gerenciando:

- Trilhas de aprendizagem  
- Vagas de emprego  
- Perfil do usuário e habilidades  
- Sistema de gamificação (quiz + certificados)

Utiliza **Spring Boot + H2 Database**, facilitando testes rápidos e integração com o aplicativo mobile.

---

## 🏗️ Arquitetura

O projeto segue uma arquitetura em camadas para garantir organização e escalabilidade:

### **📌 controller (Interface da API)**
Recebe requisições HTTP do app (React Native), chama a camada de persistência e devolve respostas JSON com status HTTP apropriados.

### **📌 repository (Acesso ao Banco)**
Comunicação direta com o banco de dados.  
Utiliza interfaces que estendem `JpaRepository`, permitindo CRUD sem SQL manual.

### **📌 model (Domínio / Entidades)**
Classes que representam tabelas do banco, como:

- Trilha  
- Skill  
- Vaga  
- Certificado  

Mapeadas automaticamente via Hibernate.

### **📌 config (Configurações)**
Gerencia configurações globais, incluindo liberação de **CORS**, permitindo que o app mobile consuma a API local.

---

## ✨ Tecnologias e Ferramentas

- **Java 17 (LTS)**  
- **Spring Boot 3.x**  
- **Spring Web** — criação dos endpoints REST  
- **Spring Data JPA** — persistência com Hibernate  
- **H2 Database** — banco SQL em memória  
- **Maven** — gerenciamento de dependências  
- **Lombok** — auxilia com getters/setters automáticos  

---

## 🚀 Como Executar

1. Verifique se possui **Java 17** e **Maven** instalados  
2. Clone o repositório  
3. Abra no **IntelliJ IDEA** ou **Eclipse**  
4. Aguarde o Maven baixar as dependências  
5. Execute a classe:  
   **`SkillbridgeApplication.java`**
6. A API iniciará em:  
   👉 `http://localhost:3000`

📝 O banco H2 é recriado automaticamente a cada inicialização via **data.sql**.

---

## 🚦 Status Codes e Tratamento de Erros

A API utiliza códigos HTTP padrão:

| Código | Status                | Quando acontece? |
|--------|------------------------|------------------|
| **200** | OK | Requisições GET / PUT / POST bem-sucedidas |
| **201** | Created | Novo recurso criado via POST |
| **204** | No Content | DELETE concluído / remoção de favorito |
| **400** | Bad Request | JSON inválido ou incompleto |
| **404** | Not Found | ID inexistente no banco |
| **500** | Internal Server Error | Erro inesperado no backend |

---

## ⚡ Endpoints da API

### 🎓 Trilhas de Aprendizagem — `/trilhas`

| Método | Rota | Descrição | Sucesso |
|--------|-------|------------|----------|
| GET | `/trilhas` | Lista todas as trilhas | 200 |
| PUT | `/trilhas/{id}/favorito` | Marca trilha como favorita | 200 |
| DELETE | `/trilhas/{id}/favorito` | Remove dos favoritos | 204 |

---

### 👤 Perfil e Skills — `/skills`

| Método | Rota | Descrição | Sucesso |
|--------|-------|------------|----------|
| GET | `/skills` | Lista habilidades do usuário | 200 |
| POST | `/skills` | Cria nova skill | 200 |
| PUT | `/skills/{id}` | Atualiza skill existente | 200 |
| DELETE | `/skills/{id}` | Remove skill | 200 |

---

### 💼 Vagas — `/vagas`

| Método | Rota | Descrição | Sucesso |
|--------|-------|------------|----------|
| GET | `/vagas` | Lista vagas disponíveis | 200 |

---

### 🏆 Quiz e Certificados — `/quiz`

| Método | Rota | Descrição | Sucesso |
|--------|-------|------------|----------|
| GET | `/quiz/questoes/{trilhaId}` | Retorna perguntas da trilha | 200 |
| POST | `/quiz/certificado` | Salva certificado | 200 |
| GET | `/quiz/certificados` | Lista certificados conquistados | 200 |

---

## 🗄️ Banco de Dados (H2 Console)

Para visualizar o banco em memória:

Acesse:  
👉 `http://localhost:3000/h2-console`

Preencha:

- **Driver Class:** `org.h2.Driver`  
- **JDBC URL:** `jdbc:h2:mem:skillbridge_db`  
- **User:** `sa`  
- **Password:** *(vazio)*  

Clique em **Connect**.

---

Pronto! Esse README está pronto para ser usado no GitHub.  
Se quiser, posso fazer a versão com **badges**, **tabela de conteúdo**, **GIF de demonstração** ou **logo do projeto**.
