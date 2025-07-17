1. Lista de Clientes;

SELECT cliente.nome_cli
FROM cliente;

2. Lista de clientes do bairro "Jundiaí";

SELECT cliente.nome_cli
FROM cliente
WHERE cliente.bairro_cli = 'Jundiai';

3. Lista das locações com o nome do cliente, a data da retirada, data do retorno, km rodados e valor total da locação


SELECT
	cliente.nome_cli as Nome,
	locacao.retirada_loc,
	locacao.devolucao_loc,
	(locacao.kmfinal_loc - locacao.kminicial_loc) as kms_rodados,
	locacao.valor_loc
FROM 
	locacao inner join cliente on locacao.cpf_cli = cliente.cpf_cli

4. Lista dos clientes que já realizaram uma locação.

SELECT DISTINCT cliente.nome_cli
FROM cliente
inner join locacao
on locacao.cpf_cli = cliente.cpf_cli;

5. Total de Carros da locadora

SELECT COUNT(*)
FROM carro;

6. Lista dos carros e o total de vezes que carro já foi locados (apenas dos carros já locados)

SELECT DISTINCT
	carro.placa_car,
	count (locacao.id_loc) as Total_Locacoes
FROM 
	carro left join locacao on locacao.placa_car = carro.placa_car
GROUP BY carro.placa_car



