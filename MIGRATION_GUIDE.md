# Guia de Migração - Backend para Novo Repositório

Este guia explica como migrar o backend do projeto CRUD Vue Nest para um novo repositório.

## 📋 Pré-requisitos

1. Ter um repositório Git vazio criado no GitHub/GitLab/etc
2. Ter acesso ao terminal no diretório `backend/`
3. Ter o Git configurado com suas credenciais

## 🚀 Passos para Migração

### 1. Criar Novo Repositório

1. Acesse GitHub/GitLab e crie um novo repositório vazio
2. **NÃO** inicialize com README, .gitignore ou license
3. Copie a URL do repositório (ex: `https://github.com/seu-usuario/crud-vue-nest-backend.git`)

### 2. Executar Script de Migração

```bash
# No diretório backend/
./setup-new-repo.sh https://github.com/seu-usuario/crud-vue-nest-backend.git
```

### 3. Verificação Manual (Opcional)

Se preferir fazer manualmente:

```bash
# Verificar status atual
git status

# Adicionar novo remote
git remote add origin https://github.com/seu-usuario/crud-vue-nest-backend.git

# Fazer push
git push -u origin master
```

## 📁 Estrutura do Projeto

Após a migração, seu repositório terá:

```
backend/
├── src/
│   ├── users/           # Módulo de usuários
│   │   ├── dto/        # Data Transfer Objects
│   │   ├── entities/   # Entidades
│   │   ├── users.controller.ts
│   │   ├── users.service.ts
│   │   └── users.module.ts
│   ├── app.controller.ts
│   ├── app.service.ts
│   └── app.module.ts
├── test/               # Testes
├── package.json        # Dependências
├── README.md          # Documentação
└── setup-new-repo.sh  # Script de migração
```

## 🔧 Funcionalidades Incluídas

- ✅ CRUD completo de usuários
- ✅ Documentação Swagger automática
- ✅ Validação de dados com DTOs
- ✅ Testes unitários configurados
- ✅ Estrutura modular NestJS

## 📚 Documentação da API

Após iniciar o servidor:

```bash
npm run start:dev
```

Acesse: `http://localhost:3000/api` para ver a documentação Swagger.

## 🧪 Testes

```bash
# Executar testes
npm run test

# Executar testes com coverage
npm run test:cov
```

## 🔄 Próximos Passos

1. **Configurar CI/CD** (GitHub Actions, GitLab CI, etc.)
2. **Configurar deploy automático** (Vercel, Heroku, etc.)
3. **Adicionar banco de dados** (PostgreSQL, MongoDB, etc.)
4. **Implementar autenticação** (JWT, OAuth, etc.)
5. **Adicionar mais módulos** conforme necessário

## 🆘 Solução de Problemas

### Erro: "remote origin already exists"
```bash
git remote remove origin
git remote add origin <NOVA_URL>
```

### Erro: "Permission denied"
Verifique se você tem permissão para fazer push no repositório.

### Erro: "Authentication failed"
Configure suas credenciais Git:
```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu-email@exemplo.com"
```

## 📞 Suporte

Se encontrar problemas, verifique:
1. Status do Git: `git status`
2. Remotes configurados: `git remote -v`
3. Logs de erro no terminal 