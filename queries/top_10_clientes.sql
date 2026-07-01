select
	c.id_cliente,
    c.nome,
    sum(it.quantidade * it.preco_unitario) as total_gasto
from clientes c
join pedidos p
	on c.id_cliente = p.id_cliente
join itens_pedido it
	on p.id_pedido = it.id_pedido
group by c.id_cliente,c.nome
order by total_gasto desc
limit 10;
