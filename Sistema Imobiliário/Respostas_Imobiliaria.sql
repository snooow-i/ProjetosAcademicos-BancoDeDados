-- 1. Listar os dados de todos os Corretores cadastrados.
SELECT * FROM corretor;


-- 2. Listar os dados de todos os Clientes cadastrados.
SELECT * FROM cliente;


-- 3. Listar os dados de todas as visitas realizadas a imóveis.
SELECT 
    cliente.nome AS nome_cliente, 
    corretor.nome AS nome_corretor, 
    imovel.inscricao_imobiliaria, 
    visita.data_visita, 
    visita.motivo 
FROM visita
JOIN cliente ON visita.cliente_cpf = cliente.cpf
JOIN corretor ON visita.corretor_creci = corretor.creci
JOIN imovel ON visita.imovel_inscricao_imobiliaria = imovel.inscricao_imobiliaria;



-- 4. Listar os dados de todas as vendas realizadas na imobiliária.
SELECT 
    cliente.nome AS nome_cliente, 
    corretor.nome AS nome_corretor, 
    venda.data_entrega, 
    imovel.inscricao_imobiliaria 
FROM venda
JOIN negocio ON venda.negocio_id = negocio.id_negocio
JOIN visita ON negocio.visita_id_visita = visita.id_visita
JOIN cliente ON visita.cliente_cpf = cliente.cpf
JOIN corretor ON visita.corretor_creci = corretor.creci
JOIN imovel ON visita.imovel_inscricao_imobiliaria = imovel.inscricao_imobiliaria;



-- 5. Listar todos os imóveis e as etapas da negociação para a compra do imóvel.
SELECT 
    cliente.nome AS nome_cliente, 
    corretor.nome AS nome_corretor, 
    venda.data_entrega, 
    imovel.inscricao_imobiliaria, 
    etapa_atual.id_etapa, 
    etapa_venda.data_inicio, 
    etapa_venda.data_termino, 
    etapa_venda.observacao 
FROM venda
JOIN negocio ON venda.negocio_id = negocio.id_negocio
JOIN visita ON negocio.visita_id_visita = visita.id_visita
JOIN cliente ON visita.cliente_cpf = cliente.cpf
JOIN corretor ON visita.corretor_creci = corretor.creci
JOIN imovel ON visita.imovel_inscricao_imobiliaria = imovel.inscricao_imobiliaria
JOIN etapa_venda ON venda.negocio_id = etapa_venda.venda_negocio_id
JOIN etapa_atual ON etapa_venda.etapa_id = etapa_atual.id_etapa;



-- 6. Listar todos os imóveis alugados e o histórico das vistorias e dos reparos.
SELECT 
    imovel.inscricao_imobiliaria,
    aluguel.data_entrega, 
    vistoria.id_vistoria,
    vistoria.detalhamento,
    vistoria.data_vistoria,
    vistoria.situacao,
    reparo.descricao AS descricao_reparo,
    reparo.valor AS valor_reparo,
    reparo.data_hora AS data_reparo
FROM aluguel
JOIN negocio ON aluguel.negocio_id = negocio.id_negocio
JOIN visita ON negocio.visita_id_visita = visita.id_visita
JOIN imovel ON visita.imovel_inscricao_imobiliaria = imovel.inscricao_imobiliaria
JOIN vistoria ON imovel.inscricao_imobiliaria = vistoria.inscricao_imobiliaria
LEFT JOIN reparo ON vistoria.id_vistoria = reparo.vistoria_id;


-- 7. Estatística de visitas realizadas pelos corretores em intervalo de data.
SELECT 
    corretor.nome, 
    COUNT(DISTINCT visita.cliente_cpf) AS quantidade_clientes 
FROM visita
JOIN corretor ON visita.corretor_creci = corretor.creci
WHERE visita.data_visita BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY corretor.nome;

-- 8. Estatística de visitas realizadas pelos corretores detalhadas por tipo.
SELECT 
    corretor.nome, 
    visita.motivo, 
    COUNT(*) AS quantidade_visitas 
FROM visita
JOIN corretor ON visita.corretor_creci = corretor.creci
GROUP BY corretor.nome, visita.motivo;


-- 9. Listar os Clientes que nunca fizeram Visitas.
SELECT * 
FROM cliente 
WHERE cpf NOT IN (SELECT cliente_cpf FROM visita);



-- 10. Cliente que mais comprou imóvel.
SELECT 
    cliente.nome, 
    COUNT(*) AS quantidade_compras 
FROM venda
JOIN negocio ON venda.negocio_id = negocio.id_negocio
JOIN visita ON negocio.visita_id_visita = visita.id_visita
JOIN cliente ON visita.cliente_cpf = cliente.cpf
GROUP BY cliente.nome
ORDER BY quantidade_compras DESC
LIMIT 1;


-- 11. Cliente que tem mais imóveis alugados.
SELECT 
    cliente.nome, 
    COUNT(*) AS quantidade_alugueis 
FROM aluguel
JOIN negocio ON aluguel.negocio_id = negocio.id_negocio
JOIN visita ON negocio.visita_id_visita = visita.id_visita
JOIN cliente ON visita.cliente_cpf = cliente.cpf
GROUP BY cliente.nome
ORDER BY quantidade_alugueis DESC
LIMIT 1;


-- 12. Imóvel que mais sofreu reparos.
SELECT 
    imovel.inscricao_imobiliaria, 
    COUNT(*) AS quantidade_reparos 
FROM reparo
JOIN vistoria ON reparo.vistoria_id = vistoria.id_vistoria
JOIN imovel ON vistoria.inscricao_imobiliaria = imovel.inscricao_imobiliaria
GROUP BY imovel.inscricao_imobiliaria
ORDER BY quantidade_reparos DESC
LIMIT 1;



-- 13. Corretor mais produtivo (que mais vendeu imóveis).
SELECT 
    corretor.nome, 
    COUNT(*) AS quantidade_vendas 
FROM venda
JOIN negocio ON venda.negocio_id = negocio.id_negocio
JOIN visita ON negocio.visita_id_visita = visita.id_visita
JOIN corretor ON visita.corretor_creci = corretor.creci
GROUP BY corretor.nome
ORDER BY quantidade_vendas DESC
LIMIT 1;



-- 14. Cliente(s) que menos atrasou ou nunca atrasou o aluguel.
SELECT 
    cliente.nome, 
    COUNT(*) AS quantidade_mensalidades_pagas_em_dia 
FROM mensalidade
JOIN aluguel ON mensalidade.aluguel_negocio_id = aluguel.negocio_id
JOIN negocio ON aluguel.negocio_id = negocio.id_negocio
JOIN visita ON negocio.visita_id_visita = visita.id_visita
JOIN cliente ON visita.cliente_cpf = cliente.cpf
WHERE mensalidade.data_pagamento <= mensalidade.data_vencimento
GROUP BY cliente.nome
ORDER BY quantidade_mensalidades_pagas_em_dia DESC 
LIMIT 1;


-- 15. Cliente(s) que mais atrasou o aluguel.
SELECT 
    cliente.nome, 
    COUNT(*) AS quantidade_mensalidades_pagas_em_dia 
FROM mensalidade
JOIN aluguel ON mensalidade.aluguel_negocio_id = aluguel.negocio_id
JOIN negocio ON aluguel.negocio_id = negocio.id_negocio
JOIN visita ON negocio.visita_id_visita = visita.id_visita
JOIN cliente ON visita.cliente_cpf = cliente.cpf
WHERE mensalidade.data_pagamento <= mensalidade.data_vencimento
GROUP BY cliente.nome
ORDER BY quantidade_mensalidades_pagas_em_dia  
LIMIT 1;



-- 16. Imóvel nunca visitado.
SELECT * 
FROM imovel 
WHERE inscricao_imobiliaria NOT IN (SELECT imovel_inscricao_imobiliaria FROM visita);



-- 17. Imóvel mais visitado que está "encalhado".
SELECT imovel.inscricao_imobiliaria, imovel.rua, imovel.bairro, imovel.cidade, COUNT(visita.id_visita) AS numero_de_visitas
FROM imovel
JOIN visita ON imovel.inscricao_imobiliaria = visita.imovel_inscricao_imobiliaria
LEFT JOIN negocio ON visita.id_visita = negocio.visita_id_visita
WHERE negocio.id_negocio IS NULL
GROUP BY imovel.inscricao_imobiliaria, imovel.rua, imovel.bairro, imovel.cidade
ORDER BY numero_de_visitas DESC
LIMIT 1;


-- 18. Estatística de clientes por sexo.
SELECT
    cliente.sexo,
    COUNT(cliente.cpf) AS TotalClientes
FROM cliente
GROUP BY cliente.sexo;


-- 19. Estatística de clientes por cidade.
SELECT 
    cidade, 
    COUNT(*) AS quantidade_clientes 
FROM cliente
GROUP BY cidade;

-- 20. Estatística de visitas realizadas por tipo (aluguel ou venda).
SELECT 
    motivo, 
    COUNT(*) AS quantidade_visitas 
FROM visita
GROUP BY motivo;



-- 21. Corretores das visitas com maior número de visitas por finalidade.
SELECT 
    corretor.nome, 
    visita.motivo, 
    COUNT(*) AS quantidade_visitas 
FROM visita
JOIN corretor ON visita.corretor_creci = corretor.creci
GROUP BY corretor.nome, visita.motivo
ORDER BY quantidade_visitas DESC;



-- 22. Estatística de imóveis por tamanho do quintal que não estão alugados.
SELECT 
    tamanho_quintal, 
    COUNT(*) AS quantidade_imoveis 
FROM imovel 
WHERE inscricao_imobiliaria NOT IN (SELECT imovel_inscricao_imobiliaria FROM visita WHERE motivo = 'Aluguel')
GROUP BY tamanho_quintal;



-- 23. Estatística de visitas realizadas pelos corretores por classificação.
SELECT 
    corretor.nome,
    SUM(CASE WHEN visita.resultado = 'Negócio Fechado' THEN 1 ELSE 0 END) AS TotalNegocioFechado,
    SUM(CASE WHEN visita.resultado = 'Cliente em Dúvida' THEN 1 ELSE 0 END) AS TotalClienteEmDuvida,
    SUM(CASE WHEN visita.resultado = 'Visita Perdida' THEN 1 ELSE 0 END) AS TotalVisitaPerdida,
    SUM(CASE WHEN visita.resultado = 'Apenas Estava Pesquisando' THEN 1 ELSE 0 END) AS TotalApenasEstavaPesquisando
FROM visita
JOIN corretor ON visita.corretor_creci = corretor.creci
GROUP BY corretor.nome;


-- 24. Clientes que já fizeram todas as ações (visita, compra, aluguel e venda).
SELECT DISTINCT cliente.nome
FROM cliente
JOIN visita ON cliente.cpf = visita.cliente_cpf
JOIN negocio ON visita.id_visita = negocio.visita_id_visita
LEFT JOIN venda ON negocio.id_negocio = venda.negocio_id
LEFT JOIN aluguel ON negocio.id_negocio = aluguel.negocio_id
WHERE venda.negocio_id IS NOT NULL 
  AND aluguel.negocio_id IS NOT NULL;

-- 25. Corretores que já realizaram visitas para aluguel e compra.
SELECT DISTINCT corretor.nome
FROM corretor
JOIN visita ON corretor.creci = visita.corretor_creci
WHERE visita.motivo IN ('Aluguel', 'Venda');


-- 26. Corretores que menos realizaram visitas.
SELECT
    corretor.nome,
    COUNT(visita.id_visita) AS TotalVisitas
FROM corretor
LEFT JOIN visita ON corretor.creci = visita.corretor_creci
GROUP BY corretor.nome
ORDER BY TotalVisitas ASC
LIMIT 1;


-- 27. Quantidade média de visitas por cliente que resultaram em negócio fechado.
SELECT 
    AVG(visitas_por_cliente) AS media_visitas_negocio_fechado
FROM (
    SELECT 
        visita.cliente_cpf, 
        COUNT(*) AS visitas_por_cliente
    FROM visita
    JOIN negocio ON visita.id_visita = negocio.visita_id_visita
    GROUP BY visita.cliente_cpf
) AS subconsulta;

-- 28. Faturamento por mês separado por aluguel, venda e reparos.
SELECT 
    EXTRACT(YEAR FROM mensalidade.data_pagamento) AS ano,
    EXTRACT(MONTH FROM mensalidade.data_pagamento) AS mes,
    COALESCE(SUM(mensalidade.valor), 0) AS total_aluguel,
    COALESCE(SUM(venda.valor), 0) AS total_venda,
    COALESCE(SUM(reparo.valor), 0) AS total_reparos
FROM 
    mensalidade
LEFT JOIN aluguel ON mensalidade.aluguel_negocio_id = aluguel.negocio_id
LEFT JOIN venda ON aluguel.negocio_id = venda.negocio_id
LEFT JOIN reparo ON reparo.vistoria_id = (SELECT id_vistoria FROM vistoria WHERE inscricao_imobiliaria IN 
                                            (SELECT inscricao_imobiliaria FROM imovel WHERE proprietario = 
                                            (SELECT cpf FROM cliente WHERE cliente.cpf = (SELECT cliente_cpf FROM visita WHERE id_visita = (SELECT visita_id_visita FROM negocio WHERE id_negocio = aluguel.negocio_id)))))
GROUP BY 
    EXTRACT(YEAR FROM mensalidade.data_pagamento),
    EXTRACT(MONTH FROM mensalidade.data_pagamento)
ORDER BY 
    ano, mes;

