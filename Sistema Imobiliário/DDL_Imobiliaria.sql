DROP TABLE IF EXISTS etapa_venda;
DROP TABLE IF EXISTS etapa_atual;
DROP TABLE IF EXISTS venda;
DROP TABLE IF EXISTS mensalidade;
DROP TABLE IF EXISTS aluguel;
DROP TABLE IF EXISTS negocio;
DROP TABLE IF EXISTS visita;
DROP TABLE IF EXISTS reparo;
DROP TABLE IF EXISTS vistoria;
DROP TABLE IF EXISTS corretor;
DROP TABLE IF EXISTS imovel;
DROP TABLE IF EXISTS cliente;


 CREATE TABLE cliente (
 cpf VARCHAR(14) NOT NULL,
 nome VARCHAR(100) NOT NULL,
 rua VARCHAR(45) NOT NULL,
 bairro VARCHAR(45) NOT NULL,
 numero VARCHAR(3) NOT NULL,
 cidade VARCHAR(45) NOT NULL,
 telefone VARCHAR(11) NOT NULL,
 cep VARCHAR(9) NOT NULL,
 sexo VARCHAR(10)NOT NULL,
 	PRIMARY KEY (cpf)
);

CREATE  TABLE imovel (
 inscricao_imobiliaria VARCHAR(30) NOT NULL,
 tamanho_quintal VARCHAR(8) NOT NULL,
 cep VARCHAR(9) NOT NULL,
 bairro VARCHAR(45) NOT NULL,
 rua VARCHAR(45) NOT NULL,
 numero VARCHAR(3) NOT NULL,
 cidade VARCHAR(45) NOT NULL,
 quarto INT NOT NULL,
 banheiro INT NOT NULL,
 lajotada boolean NOT NULL,
 proprietario VARCHAR(14) NOT NULL,

 	PRIMARY KEY (inscricao_imobiliaria),
	FOREIGN KEY (proprietario)
	 	REFERENCES 
		 cliente(cpf)
);

CREATE  TABLE vistoria (
 id_vistoria INT NOT NULL,
 detalhamento VARCHAR(100) NOT NULL,
 data_vistoria DATE NOT NULL,
 situacao VARCHAR(20) NOT NULL,
 inscricao_imobiliaria VARCHAR(30) NOT NULL,

 	PRIMARY KEY (id_vistoria),
	 FOREIGN KEY (inscricao_imobiliaria)
	 	REFERENCES 
		 imovel(inscricao_imobiliaria)

);

CREATE  TABLE reparo (
 data_hora TIMESTAMP NOT NULL,
 valor FLOAT NOT NULL,
 descricao VARCHAR(100) NOT NULL,
 vistoria_id INT NOT NULL,

 	PRIMARY KEY (vistoria_id, data_hora),
	 FOREIGN KEY (vistoria_id)
	 	REFERENCES 
		 vistoria(id_vistoria)

);

CREATE  TABLE corretor (
 creci VARCHAR(6) NOT NULL,
 nome VARCHAR(100) NOT NULL,
 cpf VARCHAR(14) NOT NULL,
 telefone VARCHAR(11) NOT NULL,

 	PRIMARY KEY (CRECI)
);

CREATE  TABLE visita (
 id_visita INT NOT NULL,
 motivo VARCHAR(7) NOT NULL,
 data_visita DATE NOT NULL,
 observacao VARCHAR(100) NOT NULL,
 resultado VARCHAR(100) NOT NULL,
 corretor_creci VARCHAR(6) NOT NULL,
 imovel_inscricao_imobiliaria VARCHAR(30) NOT NULL,
 cliente_cpf VARCHAR(14) NOT NULL,

 	PRIMARY KEY (id_visita),
	FOREIGN KEY (corretor_creci)
	 	REFERENCES 
		 corretor(creci),
	FOREIGN KEY (imovel_inscricao_imobiliaria)
	 	REFERENCES 
		 imovel(inscricao_imobiliaria),
	FOREIGN KEY (cliente_cpf)
	 	REFERENCES 
		 cliente(cpf)
);

CREATE  TABLE negocio (
 id_negocio INT NOT NULL,
 data_fechamento date NOT NULL,
 visita_id_visita INT NOT NULL,

 	PRIMARY KEY (id_negocio),
	 FOREIGN KEY (visita_id_visita)
	 	REFERENCES 
		 visita(id_visita)

);

CREATE  TABLE aluguel (
 data_entrega DATE NOT NULL,
 tempo_aluguel INT NOT NULL,
 negocio_id INT NOT NULL,


 	PRIMARY KEY (negocio_id),
	 FOREIGN KEY (negocio_id)
	 	REFERENCES 
		 negocio(id_negocio)

);

CREATE  TABLE mensalidade (
 valor FLOAT NOT NULL,
 data_pagamento DATE NOT NULL,
 data_vencimento DATE NOT NULL,
 aluguel_negocio_id INT NOT NULL,

 	PRIMARY KEY (aluguel_negocio_id),
	 FOREIGN KEY (aluguel_negocio_id)
	 	REFERENCES 
		 aluguel(negocio_id)

);

CREATE  TABLE venda (
 valor FLOAT NOT NULL,
 data_entrega DATE NOT NULL,
 negocio_id INT NOT NULL,


 	PRIMARY KEY (negocio_id),
	 FOREIGN KEY (negocio_id)
	 	REFERENCES 
		 negocio(id_negocio)

);

CREATE  TABLE etapa_atual (
 id_etapa INT NOT NULL,
 
 	PRIMARY KEY (id_etapa)

);

CREATE  TABLE etapa_venda (
 etapa_id INT NOT NULL,
 venda_negocio_id INT NOT NULL,
 data_inicio DATE NOT NULL,
 data_termino DATE NOT NULL,
 observacao VARCHAR(100) NOT NULL,


 	PRIMARY KEY (venda_negocio_id,etapa_id),
	 FOREIGN KEY (venda_negocio_id)
	 	REFERENCES 
		 venda(negocio_id),
	FOREIGN KEY (etapa_id)
	 	REFERENCES 
		 etapa_atual(id_etapa)

);


