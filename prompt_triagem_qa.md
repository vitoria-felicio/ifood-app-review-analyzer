# Prompt de Triagem de Reviews (QA / Produto)

Prompt usado na etapa de análise para transformar comentários negativos das lojas de apps em um JSON padronizado para o time de engenharia.

## Instrução enviada para a IA:

Você trabalha no time de Produto e QA do iFood. Leia a avaliação abaixo feita por um usuário na loja de aplicativos e classifique o problema para encaminhar ao time técnico.

Dados do review:
- Plataforma: {plataforma}
- Nota: {nota_estrelas}
- Comentário: "{comentario_usuario}"

O que preciso que você faça:
1. Classifique o problema em uma destas categorias: Bug de Front-end, Falha de Pagamento, Crash/Lentidão ou UX/UI.
2. Defina a prioridade para os devs: Alta (impede finalizar pedido/pagamento), Média (atrapalha o uso, mas dá para concluir) ou Baixa (ajuste visual ou sugestão).
3. Escreva um resumo curto e direto do problema técnico.

Retorne APENAS um JSON válido neste formato, sem nenhum texto antes ou depois:
{
  "categoria_bug": "",
  "prioridade_dev": "",
  "resumo_tecnico": ""
}
