/* ### Modelo de Dados:
Para entender o modelo, revisar o diagrama a seguir:
![<img src="samples/model.png" height="500" alt="Modelo" title="Modelo"/>](samples/model.png)
 O Teste não possuia a Modelagem de Dados. Vou seguir com as Tabelas Descritas no arquivo Modelagem_Dados.SQL 
  */
  
 -- Listar todos Clientes que não tenham realizado uma compra;

 Select C.* From BIKE.Cliente C where C.Data_Compra is Null; 


--Listar os Produtos que não tenham sido comprados

 Select P.* From BIKE.Produto C where P.Qt_Total = P.Qt_Estoque;

--Listar os Produtos sem Estoque;

 Select P.* From BIKE.Produto C where P.Qt_Estoque = 0; 
 
-- Agrupar a quantidade de vendas que uma determinada Marca por Loja.
 
 Select Pedido.Codigo_Loja, Loja.Nome, Pedido.Quantidade, Produto.Marca  From Bike.Pedido Pedido   
 Inner Join Bike.Produtos Produto On Produto.Codigo = Pedido.Codigo_Produto
 Inner Join Bike.Loja Loja On Loja.Codigo = Pedido.Codigo_Loja
 Group By Pedido.Codigo_Loja, Produto.Marca
 
 
-- Listar os Funcionarios que não estejam relacionados a um Pedido. 
 
 Select F.* from Bike.Funcionario F Where F.Codigo Not in 
 (Select P.Codigo_Funcionario from Bike.Pedido P) 
 
 
 