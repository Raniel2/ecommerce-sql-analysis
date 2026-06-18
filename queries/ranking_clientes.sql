SELECT
    c.id_cliente,
    c.nome,
    SUM(it.quantidade * it.preco_unitario) AS total_gasto,
    RANK() OVER(
        ORDER BY SUM(it.quantidade * it.preco_unitario) DESC
    ) AS ranking
FROM clientes c
JOIN pedidos p
    ON c.id_cliente = p.id_cliente
JOIN itens_pedido it
    ON p.id_pedido = it.id_pedido
GROUP BY c.id_cliente,c.nome;
