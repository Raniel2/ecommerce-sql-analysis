# Projeto SQL - Análise de E-commerce

## Sobre o Projeto

Este projeto foi desenvolvido para praticar SQL e análise de dados utilizando um banco de dados de e-commerce.

O objetivo é responder perguntas de negócio através de consultas SQL, explorando conceitos utilizados no dia a dia de Analistas de Dados.

---

## Tecnologias Utilizadas

- MySQL
- GitHub

---

## Conceitos Aplicados

- JOIN
- GROUP BY
- HAVING
- CASE
- CTE (Common Table Expressions)
- Window Functions
- RANK()
- DATEDIFF()
- EXISTS
- Subqueries

---

## Estrutura do Projeto

database/
- Scripts para criação das tabelas
- Inserção de dados

queries/
- Ranking de clientes
- Ticket médio
- Clientes inativos
- Produtos sem vendas
- Faturamento por categoria

---

## Exemplo de Análise

Ranking de clientes por valor total gasto utilizando a função RANK().

```sql
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
```


## Autor

Raniel Francisco
