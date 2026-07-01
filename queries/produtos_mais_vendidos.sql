select 
    p.nome_produto as produto,
    sum(it.quantidade) as quantidade_vendida
from produtos p
join itens_pedido it
	on p.id_produto = it.id_produto
group by p.id_produto, produto
order by quantidade_vendida desc;
