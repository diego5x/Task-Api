# Task-API

API simples de tarefas (CRUD) usando **Sinatra**, **Sequel** e **SQLite**.

## Pré-requisitos

- Ruby 3.4
- Bundler
- SQLite3

## Instalação

1. Clone o repositório:

```bash
git clone https://github.com/diego5x/Task-Api.git
cd Task-Api
````

2. Instale as dependências:

```bash
bundle install
```

## Rodando a API

```bash
bundle exec ruby app.rb
```

A API estará disponível em: `http://localhost:4567`

---

## Endpoints

### Listar tarefas

```http
GET /tasks
```

### Criar tarefa

```http
POST /tasks
Content-Type: application/json

{
  "title": "Comprar leite",
  "description": "Ir ao supermercado"
}
```

