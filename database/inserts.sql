-- inserindo dados em tabelas

--CATEGORIA
INSERT INTO categorias (nome_categoria) VALUES
('Games'),
('Livros'),
('Esportes'),
('Beleza'),
('Automotivo'),
('Informática'),
('Móveis'),
('Eletrônicos'), 
('Roupas'), 
('Casa');
-- PRODUTOS
INSERT INTO produtos (nome_produto, preco, id_categoria) VALUES
('Teclado Mecânico', 350, 6),
('Mouse Gamer', 180, 6),
('Monitor 27', 1200, 6),
('Headset', 250, 1),
('Playstation 5', 4500, 4),
('Xbox Series X', 4300, 4),
('Livro SQL', 80, 5),
('Livro Python', 95, 5),
('Esteira', 3200, 3),
('Bicicleta', 1800, 3),
('Perfume', 220, 4),
('Cadeira Gamer', 1500, 7),
('Mesa Escritório', 900, 7),
('SSD 1TB', 500, 6),
('Memória RAM 16GB', 420, 6),
('Notebook', 3500, 1),
('Celular', 2000, 1),
('Camiseta', 50, 2),
('Sofá', 1200, 3);

-- CLIENTES 
INSERT INTO clientes (nome, email, cidade, data_cadastro) VALUES
('Carlos', 'carlos@email.com', 'SP', '2024-01-02'),
('Fernanda', 'fernanda@email.com', 'RJ', '2024-01-10'),
('Lucas', 'lucas@email.com', 'BH', '2024-01-15'),
('Patricia', 'patricia@email.com', 'Curitiba', '2024-02-01'),
('Roberto', 'roberto@email.com', 'SP', '2024-02-10'),
('Amanda', 'amanda@email.com', 'RJ', '2024-02-15'),
('Juliana', 'juliana@email.com', 'Salvador', '2024-03-01'),
('Ricardo', 'ricardo@email.com', 'Fortaleza', '2024-03-03'),
('Camila', 'camila@email.com', 'SP', '2024-03-10'),
('Bruno', 'bruno@email.com', 'BH', '2024-03-15'),
('João', 'joao@email.com', 'SP', '2024-01-10'),
('Maria', 'maria@email.com', 'RJ', '2024-02-15');
-- PEDIDOS 
INSERT INTO pedidos (id_cliente, data_pedido, status) VALUES
(1, '2024-03-01', 'entregue'),
(1, '2024-03-15', 'entregue'),
(2, '2024-03-18', 'pendente'),
(3, '2024-03-20', 'entregue'),
(4, '2024-03-22', 'cancelado'),
(5, '2024-03-25', 'entregue'),
(6, '2024-03-26', 'entregue'),
(7, '2024-03-28', 'pendente'),
(8, '2024-04-01', 'entregue'),
(9, '2024-04-03', 'entregue'),
(10, '2024-04-05', 'entregue'),
(3, '2024-04-06', 'entregue'),
(5, '2024-04-07', 'entregue'),
(5, '2024-04-10', 'entregue'),
(2, '2024-04-12', 'entregue'),
(1, '2024-03-01', 'entregue'),
(2, '2024-03-02', 'pendente');
-- ITENS_PEDIDOS 
INSERT INTO itens_pedido 
(id_pedido, id_produto, quantidade, preco_unitario)
VALUES
(1, 1, 1, 3500),
(1, 3, 2, 50),
(2, 5, 1, 4500),
(2, 14, 2, 500),
(3, 7, 3, 80),
(3, 8, 2, 95),
(4, 9, 1, 3200),
(4, 2, 1, 2000),
(5, 10, 1, 1800),
(6, 11, 2, 220),
(6, 15, 1, 420),
(7, 12, 1, 1500),
(8, 13, 1, 900),
(8, 3, 4, 50),
(9, 4, 2, 250),
(9, 5, 1, 4500),
(10, 6, 1, 4300),
(10, 1, 1, 3500),
(11, 2, 2, 2000),
(11, 14, 1, 500),
(12, 15, 2, 420),
(12, 7, 5, 80),
(13, 10, 1, 1800),
(13, 11, 1, 220),
(14, 12, 2, 1500),
(14, 3, 3, 50),
(15, 5, 1, 4500),
(15, 8, 2, 95);

-- PAGAMENTOS
INSERT INTO pagamentos (id_pedido, metodo, valor) VALUES
(1, 'Cartão', 3600),
(2, 'PIX', 5500),
(3, 'Boleto', 430),
(4, 'Cartão', 5200),
(5, 'PIX', 1800),
(6, 'Cartão', 860),
(7, 'Boleto', 1500),
(8, 'PIX', 1100),
(9, 'Cartão', 5000),
(10, 'Cartão', 7800),
(11, 'PIX', 4500),
(12, 'Boleto', 1240),
(13, 'Cartão', 2020),
(14, 'PIX', 3150),
(15, 'Cartão', 4690),
(1, 1, 1, 3500),
(1, 3, 2, 50),
(2, 2, 1, 2000);






































































