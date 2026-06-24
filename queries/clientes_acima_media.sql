with gasto_cliente as (
select 
	c.id_cliente,
    c.nome,
    case
		when  sum(it.quantidade * it.preco_unitario) >= 10000 then "OURO"
        when  sum(it.quantidade * it.preco_unitario) >= 5000  then "PRATA"
        else "FERRO"
    end as categoria,    
    sum(it.quantidade * it.preco_unitario) as total_gasto
FROM clientes c
JOIN pedidos p
	ON c.id_cliente = p.id_cliente
JOIN itens_pedido it
	ON p.id_pedido = it.id_pedido
GROUP BY c.id_cliente, c.nome),

cliente_media as (
	select
        nome,
        categoria,
        total_gasto,
        round(avg(total_gasto) over(partition by categoria),2) as media_gasto
from gasto_cliente
)
select * 
from cliente_media
where total_gasto > media_gasto; 
