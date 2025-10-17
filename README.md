🚀 Projetos de Banco de Dados: Imobiliária e Locadora de Veículos

Bem-vindo a este repositório! Aqui você encontrará dois projetos acadêmicos completos sobre modelagem e manipulação de bancos de dados usando PostgreSQL. Cada projeto demonstra um ciclo de desenvolvimento completo, desde a concepção do modelo de dados até a extração de informações estratégicas com SQL.

🏙️ Projeto 1: Sistema de Gestão Imobiliária

Este projeto implementa um banco de dados robusto para uma imobiliária, desenhado para gerenciar de forma eficiente as operações de vendas e aluguéis de imóveis.

✨ Funcionalidades Principais

Gestão Completa: Cadastro detalhado de clientes, corretores, imóveis e seus proprietários.



Controle de Visitas: Agendamento e registro de visitas com classificação de resultados (ex: Negócio Fechado, Cliente em Dúvida).


Vistorias e Reparos: Sistema para registrar vistorias periódicas e os reparos necessários, garantindo a qualidade dos imóveis.


Negócios Estruturados: Um fluxo de negócio que exige uma visita antes de qualquer fechamento de contrato, seja de venda ou aluguel.


Processo de Venda: Acompanhamento de todas as etapas da negociação, desde a proposta até a entrega das chaves.


Gestão de Aluguéis: Controle preciso de contratos, datas de pagamento e histórico financeiro.

📂 Estrutura do Projeto

MER e MR: Diagramas (MER.png, MR.jpg) que modelam a estrutura conceitual e lógica do banco de dados.

DDL (DDL_Imobiliaria.sql): Script para criar toda a estrutura de tabelas e relacionamentos.

DML (DML-Imobiliaria.sql): Script para popular o banco de dados com uma massa de testes rica e consistente.

Consultas (Respostas_Imobiliaria.sql): Respostas para 28 perguntas de negócio, demonstrando a capacidade analítica do banco.

💡 Consultas em Destaque

O projeto inclui análises complexas como:

Identificação do corretor mais produtivo e do cliente que mais comprou imóveis.


Localização do imóvel mais visitado que continua "encalhado" (sem negócio fechado).

Criação de um relatório de faturamento mensal, detalhado por aluguel, venda e reparos.

🚗 Projeto 2: Sistema de Locadora de Veículos

Um sistema de banco de dados para gerenciar as operações de uma locadora de carros, com foco na simplicidade e eficiência do registro de clientes, veículos e locações.

✨ Funcionalidades Principais

Cadastros Essenciais: Gerenciamento de clientes e da frota de veículos disponíveis.

Registro de Locações: Controle de todas as transações de aluguel, associando clientes, carros e datas.


Cálculo de Quilometragem: O sistema calcula automaticamente os quilômetros rodados em cada locação.

📂 Estrutura do Projeto

MER e MR: Diagramas (01-LocadoraCarro-MER.png, 02-LocadoraCarro-MR.png) que ilustram o design do banco de dados.

DDL (03-LocadoraCarros-DDL.sql): Script de criação das tabelas cliente, carro e locacao.

DML (04-LocadoraCarros-DML1.sql): Script com uma massa de dados para popular o sistema.

Consultas (05-LocadoraCarros-DQL.sql): Queries para extrair relatórios importantes.

💡 Consultas em Destaque

Listagem de todas as locações com detalhes do cliente e os KMs rodados.

Relatório com o total de locações para cada carro da frota.

Filtros de clientes por bairro e listagem de clientes que já realizaram uma locação.


🛠️ Como Utilizar

Pré-requisito: Tenha o PostgreSQL instalado e ativo em sua máquina.

Crie a Estrutura: Para cada projeto, execute o script DDL para criar as tabelas e seus relacionamentos.

Popule o Banco: Execute o script DML correspondente para inserir a massa de dados de teste.

Execute as Consultas: Utilize os arquivos de consulta (.sql ou .dql) para explorar os dados e testar as funcionalidades de cada sistema.
