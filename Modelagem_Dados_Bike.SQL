/* ### Modelo de Dados:
Para entender o modelo, revisar o diagrama a seguir:
![<img src="samples/model.png" height="500" alt="Modelo" title="Modelo"/>](samples/model.png)
***** 
 O Teste não possuia a Imagem de  Modelagem de Dados. Vou seguir com as Tabelas da seguinte forma : 
	
	CREATE TABLE BIKE.Loja
		(
		[Codigo] INT,
		[Nome] VarChar(100),
		[Telefone] INT,
		[Endereco] VarCHar(200)
		);
	
	
	CREATE TABLE BIKE.Cliente
		(
		[Codigo] INT,
		[Nome] VarChar(100),
		[Telefone] INT,
		[Data_Nascimento] DateTime, 
		[Endereco] VarCHar(200),
		[CPF] INT,
		[Data_Primeira_Compra] DateTime Default Null ,
		[Data_Ultima_Compra] DateTime Default Null 
		
		);
		
	CREATE TABLE BIKE.Produto
		(
		[Codigo] INT,
		[Descricao] VarChar(100),
		[Ean] INT,
		[Qt_Estoque] Float,
		[Preco_Custo] Float,
		[Preco_Final] Float,
		[Data_Ultima_Venda] DateTime Default Null ,
		[Qt_Total] Float,
		[Marca] VarChar(100)
		);	
		
	CREATE TABLE BIKE.Funcionario
		(
		[Codigo] INT,
		[Nome] VarChar(100),
		[Telefone] INT,
		[Data_Nascimento] DateTime, 
		[Endereco] VarCHar(200),
		[CPF] INT,
		[Data_Ultima_Venda] DateTime Default Null 
		);
		
	CREATE TABLE BIKE.Pedido
		(
		[Codigo] INT,
		[Codigo_Cliente] Int,
		[Codigo_Produto] INT,
		[Codigo_Funcionario] INT,
		[Data_Venda] DateTime, 
		[Quantidade] Float, 
		[Valor] Float,
		[Codigo_Loja] Int 
		);	
 
 */