select
	ct.nome_categoria,
    sum(it.quantidade * it.preco_unitario) as faturamento
from categorias ct
join produtos pr
	on ct.id_categoria = pr.id_categoria
join itens_pedido it
	on pr.id_produto = it.id_produto
group by ct.nome_categoria
order by faturamento desc;
