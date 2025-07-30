#!/bin/bash

# Script para configurar novo repositório para o backend
# Uso: ./setup-new-repo.sh <URL_DO_NOVO_REPOSITORIO>

if [ $# -eq 0 ]; then
    echo "❌ Erro: URL do novo repositório não fornecida"
    echo "Uso: ./setup-new-repo.sh <URL_DO_NOVO_REPOSITORIO>"
    echo "Exemplo: ./setup-new-repo.sh https://github.com/seu-usuario/crud-vue-nest-backend.git"
    exit 1
fi

NEW_REPO_URL=$1

echo "🚀 Configurando novo repositório para o backend..."
echo "📦 URL do novo repositório: $NEW_REPO_URL"

# Verificar se estamos no diretório correto
if [ ! -f "package.json" ]; then
    echo "❌ Erro: Execute este script no diretório backend/"
    exit 1
fi

# Verificar status do git
echo "📋 Verificando status do Git..."
git status

# Adicionar novo remote
echo "🔗 Adicionando novo remote..."
git remote add origin $NEW_REPO_URL

# Fazer push para o novo repositório
echo "📤 Fazendo push para o novo repositório..."
git push -u origin master

echo "✅ Configuração concluída!"
echo "🎉 Seu backend agora está no novo repositório: $NEW_REPO_URL"
echo ""
echo "📝 Próximos passos:"
echo "1. Verifique se o push foi realizado com sucesso"
echo "2. Configure CI/CD se necessário"
echo "3. Atualize a documentação do projeto principal" 