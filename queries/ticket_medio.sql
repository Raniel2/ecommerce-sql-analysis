SELECT
	c.id_cliente,
    c.nome,
    round(AVG(it.quantidade * it.preco_unitario),2) AS ticket_medio
FROM clientes c
JOIN pedidos p
	ON c.id_cliente = p.id_cliente
JOIN itens_pedido it
	ON p.id_pedido = it.id_pedido
GROUP BY c.id_cliente, c.nome
ORDER BY ticket_medio DESC;
