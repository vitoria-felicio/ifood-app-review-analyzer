# iFood App Review Analyzer

Projeto prático que montei para estudar integração entre **SQL** e **Prompt Engineering**, pensando em um cenário real de Produto e QA para a trilha **AI Builder** do iFood.

## Qual é a ideia?
Aplicativos com milhões de usuários recebem milhares de avaliações todos os dias nas lojas. Ler comentário por comentário manualmente para achar bugs críticos atrasa muito o time técnico. A ideia aqui foi desenhar um fluxo simples para filtrar só o que é urgente e já deixar organizado para a engenharia.

## Como funciona o fluxo
1. **Filtro no banco (`consulta_reviews.sql`):** Em vez de mandar todos os comentários para a IA, uma consulta em SQL separa apenas as avaliações recentes com nota baixa (1 ou 2 estrelas).
2. **Classificação com IA (`prompt_triagem_qa.md`):** O comentário filtrado passa por um prompt estruturado que identifica o tipo de falha (pagamento, crash, front-end ou UX), define a prioridade e resume o problema.
3. **Saída em JSON:** A resposta volta padronizada em JSON para facilitar a integração com ferramentas de chamados ou automações.

## Exemplo de teste que rodei

**Review filtrado (Android - 1 estrela):**
> "Fui fechar o pedido usando meu cupom de R$ 15, o app travou na tela do Pix e fechou sozinho."

**Resposta gerada pelo prompt:**
```json
{
  "categoria_bug": "Falha de Pagamento / Crash",
  "prioridade_dev": "Alta",
  "resumo_tecnico": "App travando e fechando na tela de pagamento via Pix ao usar cupom no Android."
}
```

## Próximos passos
* Conectar esse fluxo em uma ferramenta de automação (como n8n ou Make) para ler uma base real de reviews e disparar alertas automáticos.
