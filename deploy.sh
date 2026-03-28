#!/bin/bash
# deploy.sh — Canguru Digital Website
# Uso: ./deploy.sh "mensagem do commit"
# Ou:  ./deploy.sh  (usa mensagem padrão)

set -e

MSG=${1:-"Update site"}

echo "🦘 Canguru Digital — Deploy"
echo "─────────────────────────────"

echo "⬇️  Puxando atualizações do remoto..."
git pull --rebase

echo "📦 Adicionando arquivos..."
git add -A

if git diff --cached --quiet; then
  echo "✅ Nenhuma mudança para commitar."
  exit 0
fi

echo "💬 Commit: $MSG"
git commit -m "$MSG"

echo "🚀 Publicando no GitHub Pages..."
git push

echo ""
echo "✅ Deploy concluído!"
echo "🌐 https://cangurudigital.com"
echo "   (GitHub Pages leva ~1-2 min para atualizar)"
