Projetos de Banco de Dados: Sistemas de Imobiliária e Locadora de Veículos
Este repositório contém dois projetos acadêmicos focados em modelagem e manipulação de bancos de dados com SQL, desenvolvidos para a disciplina de Banco de Dados. Ambos os projetos utilizam PostgreSQL e incluem o Modelo Entidade-Relacionamento (MER), o Modelo Relacional (MR), scripts de criação de estrutura (DDL), inserção de dados (DML) e consultas (SQL).

1. Sistema de Gestão Imobiliária
Este projeto foi desenvolvido para informatizar e otimizar os processos de uma imobiliária, gerenciando as operações de vendas e aluguéis de imóveis. 

Funcionalidades e Requisitos
O sistema foi modelado para atender aos seguintes requisitos:


Cadastro Completo: Gerenciamento de informações sobre clientes, corretores e imóveis com seus respectivos proprietários.



Controle de Visitas: Registro de todas as visitas aos imóveis, incluindo data, observações do corretor e uma classificação do resultado (ex: Negócio Fechado, Cliente em Dúvida).


Processos de Negócio: Um negócio (venda ou aluguel) só pode ser fechado após a realização de uma visita pelo cliente.


Vistorias e Reparos: Gestão de vistorias periódicas para cada imóvel, com registro de detalhamentos, situação e, se necessário, os reparos decorrentes.


Gestão de Aluguéis: Controle de contratos de aluguel, incluindo datas de início, tempo de contrato e registro de pagamentos mensais.


Etapas de Venda: Acompanhamento detalhado de todo o processo de venda, desde a visita até a entrega final do imóvel.

Estrutura do Banco de Dados
O projeto inclui:

Modelo Entidade-Relacionamento (MER): Diagrama que representa as entidades e seus relacionamentos de forma conceitual.

Modelo Relacional (MR): Diagrama que traduz o MER para a estrutura de tabelas, colunas e chaves do banco de dados.


DDL (DDL_Imobiliaria.sql): Script SQL para criar todas as tabelas, chaves primárias e estrangeiras no PostgreSQL.


DML (DML-Imobiliaria.sql): Script SQL para popular o banco de dados com uma massa de dados de teste, com pelo menos 10 registros por tabela.

Consultas (Respostas_Imobiliaria.sql): Um conjunto de 28 consultas SQL elaboradas para extrair informações estratégicas do banco, como:

Listagem de clientes, corretores e imóveis.

Relatórios de vendas, aluguéis e visitas.


Estatísticas de produtividade por corretor.


Identificação de clientes e imóveis com características específicas (ex: cliente que mais comprou, imóvel nunca visitado).


Cálculo de faturamento mensal, separando por aluguel, venda e reparos.

2. Sistema de Locadora de Veículos
Este é um sistema simplificado para gerenciar o processo de locação de carros, registrando clientes, veículos e as transações de aluguel.

Funcionalidades
O sistema permite realizar as seguintes operações básicas:

Cadastros: Manter um registro de clientes e dos carros disponíveis na frota.

Controle de Locações: Registrar as operações de aluguel, associando um cliente e um carro a cada transação.

Cálculo de Quilometragem: Calcular os quilômetros rodados em cada locação a partir da diferença entre o km inicial e final.

Estrutura do Banco de Dados
O projeto inclui:

Modelo Entidade-Relacionamento (MER): Diagrama conceitual com as entidades Cliente, Carro e Locacao.

Modelo Relacional (MR): Estrutura das tabelas correspondentes ao MER.

DDL (03-LocadoraCarros-DDL.sql): Script SQL para a criação das tabelas cliente, carro e locacao.

DML (04-LocadoraCarros-DML1.sql): Script SQL com dados de exemplo para popular o banco.

Consultas (05-LocadoraCarros-DQL.sql): Consultas para extrair informações essenciais do sistema, como:

Listar todos os clientes ou filtrar por bairro.


Exibir detalhes das locações, como cliente, datas, km rodados e valor.

Contar o total de carros da locadora.

Verificar o número de vezes que cada carro foi alugado.

Como Utilizar
Pré-requisitos: É necessário ter o PostgreSQL instalado.

Criação do Banco: Execute primeiro o script DDL de cada projeto para criar a estrutura do banco.

Inserção de Dados: Execute o script DML para popular as tabelas.

Execução de Consultas: Utilize os arquivos de consultas SQL para testar e extrair informações do banco de dados.
