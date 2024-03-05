use master
CREATE DATABASE dbPizzaria

CREATE TABLE tbPizza(
	id_pizza INTEGER IDENTITY PRIMARY KEY,
	nome_pizza varchar (100),
	descricao_pizza varchar(300),
	caminho_img varchar(200) /*Exemplo caminho:imagens/imagem1.jpg*/,
	valor MONEY,
)

CREATE TABLE tbPedido(
	id_pedido INTEGER IDENTITY PRIMARY KEY,
	id_pizza INTEGER CONSTRAINT FK_id_pizza FOREIGN KEY (id_pizza) REFERENCES tbPizza (id_pizza),
	id_cliente int, /*Tabela Cliente não Adicionada*/
	quantidade INTEGER,
	hora_pedido DATETIME,
)
/*Inserindo dados na tabela tbPizza*/
INSERT INTO tbPizza (nome_pizza,descricao_pizza,caminho_img,valor) VALUES ('Portuguesa','queijo, ovo, palmito','imagens/img1.jpg',50)

/*Consulta da tabela tbPizza*/
SELECT * FROM tbPizza

/*Inserindo dados na tabela tbPedidos*/
INSERT INTO tbPedido(id_pizza,id_cliente,quantidade,hora_pedido) VALUES (1,1,2,'20-05-2022 08:20')

/*Consulta da tabela tbPedido*/
SELECT * FROM tbPedido
