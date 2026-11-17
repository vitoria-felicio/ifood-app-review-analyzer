# iFood App Bug & Sentiment Analyzer

Proposta de arquitetura e protótipo funcional desenvolvido para a trilha **AI Builder** do iFood.

## O Problema
Milhares de avaliações são publicadas diariamente nas lojas de aplicativos. A triagem manual de reclamações atrasa a identificação de bugs críticos pelo time de Engenharia.

## Arquitetura da Solução
```text
[Banco de Dados: app_reviews] 
       │
       ▼  (1. Extração e filtro via SQL)
[Reviews Críticos (Nota <= 2)]
       │
       ▼  (2. Classificação via LLM + Prompt Estruturado)
[Saída em JSON: Categoria + Prioridade + Resumo Técnico]
       │
       ▼  (3. Consumo pelo time de Produto/QA)
[Backlog Priorizado para Engenharia]
```

## Exemplo Validado (Entrada -> Saída)
* **Entrada (SQL):** `Android | 1 estrela | "Fui fechar o pedido usando meu cupom, o app travou no Pix e fechou sozinho."`
* **Saída da IA (JSON):**
```json
{
  "categoria_bug": "Falha de Pagamento / Crash",
  "prioridade_dev": "Alta",
  "resumo_tecnico": "Travamento e fechamento inesperado no fluxo de pagamento via Pix ao aplicar cupom no Android."
}
```
