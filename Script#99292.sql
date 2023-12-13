CREATE DATABASE TRANSACOES;
USE TRANSACOES;
CREATE TABLE NEGOCIOS (
	id int primary key auto_increment,
    produto varchar(20),
    vlr decimal(5,2),
    datatransacao date
    );
    
INSERT INTO NEGOCIOS (produto, vlr, datatransacao) VALUES 
('produto1', 10.00, '2023-12-01'),
('produto2', 20.00, '2023-12-02'),
('produto3', 300.00, '2023-12-03'),
('produto4', 30.00, '2023-12-04'),
('produto5', 120.00, '2023-12-05'),
('produto6', 100.00, '2023-12-06'),
('produto5', 140.00, '2023-12-07'),
('produto6', 150.00, '2023-12-08');
    
SELECT * FROM NEGOCIOS;

ALTER TABLE NEGOCIOS CHANGE COLUMN id transacaoID int, change column vlr valor DECIMAL(6,2);

SELECT * FROM NEGOCIOS WHERE valor >= 100.00;

SELECT produto, valor FROM NEGOCIOS ORDER BY valor ASC;

SELECT AVG(valor) AS ticketmedio FROM NEGOCIOS;

SELECT MAX(valor) AS ticketmaximo FROM NEGOCIOS;

SELECT MIN(valor) AS ticketminimo FROM NEGOCIOS;

SELECT produto, COUNT(*) AS transacoesporproduto FROM NEGOCIOS GROUP BY produto;

SELECT produto, COUNT(*) AS transacoesporproduto, SUM(valor) AS faturamento, AVG(valor) AS ticketmedio
	FROM NEGOCIOS GROUP BY produto;














    


