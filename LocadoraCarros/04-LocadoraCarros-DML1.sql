INSERT INTO cliente("cpf_cli", "nome_cli","rua_cli","bairro_cli","numero_cli","cidade_cli")
 VALUES ('123.456.789-00','Artur','RC10','Cerejeiras',40028922,'Anapolis');
INSERT INTO cliente("cpf_cli", "nome_cli","rua_cli","bairro_cli","numero_cli","cidade_cli")
 VALUES ('987.654.321-11','Guilherme','RC11','Jundiai',79453618,'Anapolis');
INSERT INTO cliente("cpf_cli", "nome_cli","rua_cli","bairro_cli","numero_cli","cidade_cli")
 VALUES ('555.444.333-22','Ana','RC12','Jundiai',55448899,'Goiania');
INSERT INTO cliente("cpf_cli", "nome_cli","rua_cli","bairro_cli","numero_cli","cidade_cli")
 VALUES ('222.333.444-33','Gustavo','RC13','Bairro alto',12658214,'Abadiania');
 INSERT INTO cliente("cpf_cli", "nome_cli","rua_cli","bairro_cli","numero_cli","cidade_cli")
 VALUES ('999.888.777-66','Mario','RC14','Bairro alto',65465498,'gama');
 
 INSERT INTO carro("placa_car", "tipo_car","km_car")
 VALUES ('QRT48A5','SUV',152666.459);
INSERT INTO carro("placa_car", "tipo_car","km_car")
 VALUES ('GDR19N5','Caminhao',15999.185);
INSERT INTO carro("placa_car", "tipo_car","km_car")
 VALUES ('POK79A2','Passeio',3198.782);
INSERT INTO carro("placa_car", "tipo_car","km_car")
 VALUES ('ZXC32A4','Caminhonete',88900.222);
INSERT INTO carro("placa_car", "tipo_car","km_car")
 VALUES ('ASD89O2','Mini Onibus',1200.388);
 
INSERT INTO locacao("id_loc","valor_loc","cpf_cli","retirada_loc","devolucao_loc","kminicial_loc","kmfinal_loc","placa_car")
 VALUES (1,1200.50,'123.456.789-00','2023-12-15','2023-12-20',152666.459,154669.924,'QRT48A5');
INSERT INTO locacao("id_loc","valor_loc","cpf_cli","retirada_loc","devolucao_loc","kminicial_loc","kmfinal_loc","placa_car")
 VALUES (2,1000.00,'987.654.321-11','2023-12-19','2023-12-22',1235.568,2367.861,'POK79A2');
INSERT INTO locacao("id_loc","valor_loc","cpf_cli","retirada_loc","devolucao_loc","kminicial_loc","kmfinal_loc","placa_car")
 VALUES (3,2000.00,'555.444.333-22','2023-12-23','2023-12-25',15999.185,19000.198,'GDR19N5');
INSERT INTO locacao("id_loc","valor_loc","cpf_cli","retirada_loc","devolucao_loc","kminicial_loc","kmfinal_loc","placa_car")
 VALUES (4,3500.00,'222.333.444-33','2023-12-24','2024-01-04',80555.147,85987.222,'ZXC32A4');
INSERT INTO locacao("id_loc","valor_loc","cpf_cli","retirada_loc","devolucao_loc","kminicial_loc","kmfinal_loc","placa_car")
 VALUES (5,2500.00,'123.456.789-00','2024-01-04','2024-01-10',85987.222,88900.222,'ZXC32A4');
INSERT INTO locacao("id_loc","valor_loc","cpf_cli","retirada_loc","devolucao_loc","kminicial_loc","kmfinal_loc","placa_car")
 VALUES (6,1500.00,'987.654.321-11','2024-01-08','2024-01-12',2367.861,3198.782,'POK79A2');


