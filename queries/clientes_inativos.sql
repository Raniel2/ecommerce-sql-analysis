-- Objetivo:
-- mostrar clientes inativos.

select
	c.id_cliente,
    c.nome,
    max(p.data_pedido) as ultimo_pedido,
    datediff(curdate(), MAX(P.data_pedido)) as dias_sem_comprar
FROM clientes c
join pedidos p
	on c.id_cliente = p.id_cliente
group by id_cliente, nome
order by dias_sem_comprar desc;
