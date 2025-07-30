# Backend - CRUD Vue Nest

Backend desenvolvido em NestJS para o projeto CRUD Vue Nest, com módulo de gerenciamento de usuários completo.

## 🚀 Tecnologias

- [NestJS](https://nestjs.com/) - Framework Node.js para aplicações escaláveis
- [TypeScript](https://www.typescriptlang.org/) - Linguagem de programação
- [Swagger](https://swagger.io/) - Documentação da API
- [Jest](https://jestjs.io/) - Framework de testes

## 📋 Pré-requisitos

- Node.js (versão 16 ou superior)
- npm ou yarn

## 🛠️ Instalação

```bash
# Instalar dependências
npm install
```

## 🚀 Executando o projeto

```bash
# Desenvolvimento
npm run start

# Modo watch (desenvolvimento)
npm run start:dev

# Produção
npm run start:prod
```

## 📚 Documentação da API

Após iniciar o servidor, a documentação Swagger estará disponível em:
```
http://localhost:3000/api
```

## 🧪 Testes

```bash
# Testes unitários
npm run test

# Testes e2e
npm run test:e2e

# Cobertura de testes
npm run test:cov
```

## 📁 Estrutura do Projeto

```
src/
├── users/           # Módulo de gerenciamento de usuários
│   ├── dto/        # Data Transfer Objects
│   ├── entities/   # Entidades do banco de dados
│   ├── users.controller.ts
│   ├── users.service.ts
│   └── users.module.ts
├── app.controller.ts
├── app.service.ts
└── app.module.ts
```

## 🔧 Funcionalidades

- ✅ CRUD completo de usuários
- ✅ Documentação automática com Swagger
- ✅ Validação de dados com DTOs
- ✅ Estrutura modular e escalável
- ✅ Configuração de testes

## 📝 Licença

Este projeto está sob a licença MIT.
