INSERT INTO cliente (cpf, nome, rua, bairro, numero, cidade, telefone, cep, sexo) VALUES
('12345678901', 'João Silva', 'Rua A', 'Centro', '123', 'Cidade X', '11987654321', '12345000', 'Masculino'),
('23456789012', 'Maria Oliveira', 'Rua B', 'Jardim das Flores', '456', 'Cidade Y', '11976543210', '23456000', 'Feminino'),
('34567890123', 'Carlos Souza', 'Rua C', 'Vila Nova', '789', 'Cidade Z', '11965432109', '34567000', 'Masculino'),
('45678901234', 'Ana Costa', 'Rua D', 'Centro', '101', 'Cidade X', '11954321098', '45678000', 'Feminino'),
('56789012345', 'Roberta Santos', 'Rua E', 'Morumbi', '202', 'Cidade Y', '11943210987', '56789000', 'Feminino'),
('67890123456', 'Pedro Lima', 'Rua F', 'Vila dos Pinheiros', '303', 'Cidade Z', '11932109876', '67890000', 'Masculino'),
('78901234567', 'Patrícia Gomes', 'Rua G', 'Bairro Azul', '404', 'Cidade X', '11921098765', '78901000', 'Feminino'),
('89012345678', 'Lucas Pereira', 'Rua H', 'Jardim das Acácias', '505', 'Cidade Y', '11910987654', '89012000', 'Masculino'),
('90123456789', 'Fernanda Rocha', 'Rua I', 'Alto da Serra', '606', 'Cidade Z', '11909876543', '90123000', 'Feminino'),
('01234567890', 'Rafael Martins', 'Rua J', 'Vila Verde', '707', 'Cidade X', '11908765432', '01234000', 'Masculino'),
('10101010101', 'Carlos Eduardo', 'Rua K', 'Bairro Novo', '808', 'Cidade W', '11900000000', '10101000', 'Masculino'),
('11223344556', 'Mariana Silva', 'Rua M', 'Vila Bela', '123', 'Cidade W', '11987654321', '11223300', 'Feminino'),
('11223344557', 'José Almeida', 'Rua N', 'Bairro Azul', '808', 'Cidade Z', '11987654322', '11223301', 'Masculino');


INSERT INTO imovel (inscricao_imobiliaria, tamanho_quintal, cep, bairro, rua, numero, cidade, quarto, banheiro, lajotada, proprietario) VALUES
('IM001', 'Grande', '12345000', 'Centro', 'Rua A', '123', 'Cidade X', 3, 2, TRUE, '12345678901'),
('IM002', 'Médio', '23456000', 'Jardim das Flores', 'Rua B', '456', 'Cidade Y', 2, 1, FALSE, '23456789012'),
('IM003', 'Pequeno', '34567000', 'Vila Nova', 'Rua C', '789', 'Cidade Z', 1, 1, TRUE, '34567890123'),
('IM004', 'Grande', '45678000', 'Centro', 'Rua D', '101', 'Cidade X', 4, 3, TRUE, '45678901234'),
('IM005', 'Médio', '56789000', 'Morumbi', 'Rua E', '202', 'Cidade Y', 3, 2, FALSE, '56789012345'),
('IM006', 'Grande', '67890000', 'Vila dos Pinheiros', 'Rua F', '303', 'Cidade Z', 5, 4, TRUE, '67890123456'),
('IM007', 'Pequeno', '78901000', 'Bairro Azul', 'Rua G', '404', 'Cidade X', 2, 1, FALSE, '78901234567'),
('IM008', 'Médio', '89012000', 'Jardim das Acácias', 'Rua H', '505', 'Cidade Y', 3, 2, TRUE, '89012345678'),
('IM009', 'Grande', '90123000', 'Alto da Serra', 'Rua I', '606', 'Cidade Z', 4, 3, TRUE, '90123456789'),
('IM010', 'Pequeno', '01234000', 'Vila Verde', 'Rua J', '707', 'Cidade X', 2, 1, FALSE, '01234567890'),
('IM011', 'Médio', '11223300', 'Vila Bela', 'Rua M', '123', 'Cidade W', 3, 2, TRUE, '11223344556'),
('IM012', 'Grande', '11223310', 'Vila Bela', 'Rua M', '124', 'Cidade W', 4, 3, TRUE, '11223344556'),
('IM013', 'Médio', '12346000', 'Centro', 'Rua L', '222', 'Cidade X', 2, 1, FALSE, '12345678901'),
('IM014', 'Médio', '12346000', 'Vila Nova', 'Rua L', '234', 'Cidade X', 3, 2, FALSE, '11223344556'),
('IM015', 'Grande', '12347000', 'Vila Verde', 'Rua N', '345', 'Cidade Y', 4, 3, TRUE, '11223344556');



INSERT INTO vistoria (id_vistoria, detalhamento, data_vistoria, situacao, inscricao_imobiliaria) VALUES
(1, 'Verificação de estrutura e pintura', '2024-01-15', 'Ok', 'IM001'),
(2, 'Inspeção de banheiros e elétrica', '2024-02-20', 'Necessita reparo', 'IM002'),
(3, 'Revisão da rede hidráulica', '2024-03-10', 'Ok', 'IM003'),
(4, 'Pintura e consertos no telhado', '2024-04-05', 'Necessita reparo', 'IM004'),
(5, 'Vistoria de alvenaria e acabamento', '2024-05-01', 'Abandono de Cliente', 'IM005'),
(6, 'Análise da segurança e portas', '2024-06-12', 'Ok', 'IM006'),
(7, 'Verificação de portas e janelas', '2024-07-19', 'Necessita reparo', 'IM007'),
(8, 'Inspeção geral e conservação', '2024-08-25', 'Ok', 'IM008'),
(9, 'Reparo na fiação e iluminação', '2024-09-10', 'Pintura', 'IM009'),
(10, 'Avaliação do quintal e cercado', '2024-10-15', 'Ok', 'IM010');

INSERT INTO reparo (data_hora, valor, descricao, vistoria_id) VALUES
('2024-01-16 09:30:00', 300.00, 'Pintura da fachada', 1),
('2024-02-21 14:00:00', 150.00, 'Troca de torneiras', 2),
('2024-03-12 10:45:00', 200.00, 'Reparo em encanamento', 3),
('2024-04-06 11:00:00', 500.00, 'Substituição do telhado', 4),
('2024-05-02 16:30:00', 0.00, 'Abandono do imóvel', 5),
('2024-06-13 13:15:00', 400.00, 'Instalação de fechaduras novas', 6),
('2024-07-20 08:00:00', 120.00, 'Troca de janela quebrada', 7),
('2024-08-26 10:20:00', 250.00, 'Reparo em pisos', 8),
('2024-09-11 11:40:00', 100.00, 'Pintura das paredes internas', 9),
('2024-10-16 12:50:00', 50.00, 'Manutenção do portão', 10),
('2024-11-25 10:00:00', 350.00, 'Pintura das paredes internas do imóvel', 1);


INSERT INTO corretor (creci, nome, cpf, telefone) VALUES
('GO 001', 'Juliana Almeida', '12345678901', '11987654321'),
('GO 002', 'Fernando Souza', '23456789012', '11976543210'),
('GO 003', 'Ricardo Lima', '34567890123', '11965432109'),
('GO 004', 'Cláudia Rocha', '45678901234', '11954321098'),
('GO 005', 'Marcos Pereira', '56789012345', '11943210987'),
('GO 006', 'Isabela Costa', '67890123456', '11932109876'),
('GO 007', 'Eduardo Santos', '78901234567', '11921098765'),
('GO 008', 'Patrícia Gomes', '89012345678', '11910987654'),
('GO 009', 'Luís Oliveira', '90123456789', '11909876543'),
('GO 010', 'Renato Martins', '01234567890', '11908765432');

INSERT INTO visita (id_visita, motivo, data_visita, observacao, resultado, corretor_creci, imovel_inscricao_imobiliaria, cliente_cpf) VALUES
(1, 'Venda', '2024-01-10', 'Cliente interessado em 3 quartos', 'Negócio Fechado', 'GO 001', 'IM001', '12345678901'),
(2, 'Aluguel', '2024-02-15', 'Procura apartamento 2 quartos', 'Cliente em Dúvida', 'GO 002', 'IM002', '23456789012'),
(3, 'Venda', '2024-03-05', 'Deseja imóvel para reforma', 'Visita Perdida', 'GO 003', 'IM003', '34567890123'),
(4, 'Venda', '2024-04-10', 'Imóvel de interesse para troca', 'Apenas Estava Pesquisando', 'GO 004', 'IM004', '45678901234'),
(5, 'Aluguel', '2024-05-03', 'Imóvel perfeito para família', 'Negócio Fechado', 'GO 005', 'IM005', '56789012345'),
(6, 'Venda', '2024-06-17', 'Quer imóvel próximo ao trabalho', 'Cliente em Dúvida', 'GO 006', 'IM006', '67890123456'),
(7, 'Aluguel', '2024-07-22', 'Buscando algo menor', 'Visita Perdida', 'GO 007', 'IM007', '78901234567'),
(8, 'Venda', '2024-08-11', 'Interessado em 4 quartos', 'Apenas Estava Pesquisando', 'GO 008', 'IM008', '89012345678'),
(9, 'Aluguel', '2024-09-03', 'Procura algo em bairro tranquilo', 'Negócio Fechado', 'GO 009', 'IM009', '90123456789'),
(10, 'Venda', '2024-10-10', 'Procura imóvel para investimento', 'Cliente em Dúvida', 'GO 010', 'IM010', '01234567890'),
(11, 'Venda', '2024-11-15', 'Cliente interessado em 3 quartos', 'Negócio Fechado', 'GO 001', 'IM011', '11223344556'),
(12, 'Venda', '2024-11-16', 'Cliente interessado em 4 quartos', 'Negócio Fechado', 'GO 002', 'IM012', '11223344556'),
(13, 'Aluguel', '2024-11-25', 'Imóvel pequeno, ideal para casal', 'Negócio Fechado', 'GO 001', 'IM013', '12345678901'),
(14, 'Venda', '2024-01-10', 'Cliente interessado em 4 quartos', 'Apenas Estava Pesquisando', 'GO 001', 'IM015', '12345678901'),
(15, 'Aluguel', '2024-02-20', 'Deseja imóvel com quintal grande', 'Visita Perdida', 'GO 002', 'IM015', '23456789012'),
(16, 'Venda', '2024-03-15', 'Interessado em reforma', 'Visita Perdida', 'GO 003', 'IM015', '34567890123');


INSERT INTO negocio (id_negocio, data_fechamento, visita_id_visita) VALUES
(1, '2024-01-20', 1),
(2, '2024-05-05', 5),
(3, '2024-09-15', 9),
(4, '2024-06-20', 6),
(5, '2024-02-25', 2),
(6, '2024-07-25', 7),
(7, '2024-04-18', 4),
(8, '2024-10-05', 8),
(9, '2024-03-15', 3),
(10, '2024-08-20', 10),
(11, '2024-11-20', 11),
(12, '2024-11-22', 12),
(13, '2024-11-26', 13);


INSERT INTO aluguel (data_entrega, tempo_aluguel, negocio_id) VALUES
('2024-02-01', 12, 1),
('2024-06-01', 6, 5),
('2024-09-01', 24, 9),
('2024-07-01', 18, 6),
('2024-03-01', 36, 2),
('2024-08-01', 6, 7),
('2024-04-01', 12, 4),
('2024-10-01', 12, 8),
('2024-05-01', 24, 3),
('2024-09-01', 12, 10),
('2024-12-01', 12, 13);

INSERT INTO mensalidade (valor, data_pagamento, data_vencimento, aluguel_negocio_id) VALUES
(1500.00, '2024-02-01', '2024-02-01', 1),
(1600.00, '2024-06-01', '2024-06-01', 5),
(1800.00, '2024-09-01', '2024-09-01', 9),
(2000.00, '2024-07-01', '2024-07-01', 6),
(1200.00, '2024-03-01', '2024-03-01', 2),
(1500.00, '2024-08-01', '2024-08-01', 7),
(2200.00, '2024-04-01', '2024-04-01', 4),
(2000.00, '2024-10-01', '2024-10-01', 8),
(1700.00, '2024-05-01', '2024-05-01', 3),
(1500.00, '2024-09-01', '2024-09-01', 10),
(1800.00, '2024-12-01', '2024-12-01', 13);


INSERT INTO venda (valor, data_entrega, negocio_id) VALUES
(250000.00, '2024-02-01', 1),
(350000.00, '2024-06-01', 5),
(500000.00, '2024-09-01', 9),
(450000.00, '2024-07-01', 6),
(300000.00, '2024-03-01', 2),
(400000.00, '2024-08-01', 7),
(600000.00, '2024-04-01', 4),
(550000.00, '2024-10-01', 8),
(375000.00, '2024-05-01', 3),
(425000.00, '2024-09-01', 10),
(450000.00, '2024-11-01', 11),
(550000.00, '2024-11-01', 12);

INSERT INTO etapa_atual (id_etapa) VALUES
(1),--Visita
(2),--negociação
(3),--providencia de documentos
(4),--pagamento
(5);--transferência e entrega

INSERT INTO etapa_venda (etapa_id, venda_negocio_id, data_inicio, data_termino, observacao) VALUES
(2, 1, '2024-01-05', '2024-01-10', 'Início da negociação'),
(3, 2, '2024-05-05', '2024-05-10', 'Documentos providenciados'),
(5, 3, '2024-08-05', '2024-08-10', 'Assinatura do contrato'),
(4, 4, '2024-06-05', '2024-06-10', 'Aguardando pagamento'),
(3, 5, '2024-02-10', '2024-02-15', 'Verificação de documentos'),
(1, 6, '2024-07-05', '2024-07-10', 'Visita agendada'),
(5, 7, '2024-03-05', '2024-03-10', 'Assinatura da escritura'),
(1, 8, '2024-10-05', '2024-10-10', 'Aguardando diponibilidade para visita'),
(2, 9, '2024-04-05', '2024-04-10', 'Revisão do contrato'),
(2, 10, '2024-09-05', '2024-09-10', 'Encerramento da negociação');




