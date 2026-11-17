-- Estrutura da tabela de avaliações do aplicativo
CREATE TABLE app_reviews (
    id_review INT PRIMARY KEY,
    data_avaliacao DATE,
    nota_estrelas INT,
    comentario_usuario VARCHAR(500),
    plataforma VARCHAR(50)
);

-- Query para filtrar avaliações críticas recentes para triagem da IA
SELECT id_review, plataforma, nota_estrelas, comentario_usuario
FROM app_reviews
WHERE nota_estrelas <= 2
  AND data_avaliacao >= '2026-11-01';
