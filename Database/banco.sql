use master
CREATE DATABASE dbPizzaria

CREATE TABLE tbPizza(
	id_pizza INTEGER IDENTITY PRIMARY KEY,
	nome_pizza varchar (100),
	descricao_pizza varchar(300),
	caminho_img varchar(200),
	valor MONEY,
)

CREATE TABLE tbPedido(
	id_pedido INTEGER IDENTITY PRIMARY KEY,
	id_pizza INTEGER CONSTRAINT FK_id_pizza FOREIGN KEY (id_pizza) REFERENCES tbPizza (id_pizza),
	id_cliente int, /*Tabela Cliente não Adicionada*/
	quantidade INTEGER,
	hora_pedido DATETIME,
)
INSERT INTO tbPizza (nome_pizza,descricao_pizza,caminho_img,valor) VALUES ('Portuguesa','queijo, ovo, palmito','imagens/img1.jpg',50)

SELECT * FROM tbPizza

INSERT INTO tbPedido(id_pizza,id_cliente,quantidade,hora_pedido) VALUES (1,1,2,'20-05-2022 08:20')

SELECT * FROM tbPedido
