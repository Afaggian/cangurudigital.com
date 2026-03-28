# CLAUDE.md — cangurudigital.com

Site institucional da Canguru Digital hospedado no **GitHub Pages**.

- **URL**: https://cangurudigital.com
- **Deploy**: push para `main` → GitHub Pages publica automaticamente em ~1-2 min
- **Stack**: HTML estático puro (sem build, sem framework)

## Estrutura

```
index.html          ← Homepage principal (redesign Mar/2026)
logo.svg            ← Logo ícone
logo-full.svg       ← Logo com texto
formsnap/
  index.html        ← Landing page do FormSnap
  privacy/          ← Política de privacidade
  support/          ← Página de suporte
social/
  data-deletion/    ← Página de exclusão de dados (requisito Meta)
CNAME               ← cangurudigital.com (GitHub Pages custom domain)
deploy.sh           ← Script de deploy
```

## Deploy

```bash
# Com mensagem customizada
./deploy.sh "Descrição da mudança"

# Com mensagem padrão ("Update site")
./deploy.sh
```

Ou manualmente:
```bash
git pull --rebase && git add -A && git commit -m "mensagem" && git push
```

## Páginas

- **Homepage** (`index.html`): Nav + Hero + Serviços + Cases + Sobre + Contato + Footer
- **FormSnap** (`/formsnap/`): Landing page do app iOS
- **Contato**: contato@cangurudigital.com

## Notas

- Site em português (pt-BR)
- Dark theme: background `#0f0f1a`, accent purple/blue `#5046e4` → `#3b82f6`
- SEO: meta tags, Open Graph e canonical configurados
- Mobile-first com animações CSS
