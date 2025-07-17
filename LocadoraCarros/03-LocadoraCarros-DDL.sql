drop table if exists locacao;
drop table if exists cliente;
drop table if exists carro;

CREATE TABLE cliente (
 cpf_cli varchar(14) NOT NULL,
 nome_cli VARCHAR(100) NOT NULL,
 rua_cli VARCHAR(100) NOT NULL,
 bairro_cli VARCHAR(100) NOT NULL,
 numero_cli INTEGER NOT NULL,
 cidade_cli VARCHAR(100) NOT NULL,

 PRIMARY KEY(cpf_cli)
);

CREATE TABLE carro (
 placa_car VARCHAR(7) NOT NULL,
 tipo_car VARCHAR(100) NOT NULL,
 km_car FLOAT NOT NULL,

 PRIMARY KEY(placa_car)
);

CREATE TABLE locacao (
 id_loc INTEGER NOT NULL,
 cpf_cli varchar NOT NULL,
 valor_loc FLOAT NOT NULL,
 retirada_loc DATE NOT NULL,
 devolucao_loc DATE NOT NULL,
 kminicial_loc FLOAT NOT NULL,
 kmfinal_loc FLOAT NOT NULL,
 placa_car VARCHAR(7) NOT NUll,
 PRIMARY KEY(id_loc),
	FOREIGN KEY(cpf_cli)
 REFERENCES cliente(cpf_cli),
		FOREIGN KEY(placa_car)
 REFERENCES carro(placa_car)


);


