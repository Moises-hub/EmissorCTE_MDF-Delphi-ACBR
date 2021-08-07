CREATE OR ALTER VIEW MDFE_NF(
    NFE_CHAVE,
    QUANTIDADE,
    NOTA_FISCAL,
    PESO_BRUTO,
    VALOR_PRODUTOS,
    VALOR_TOTAL,
    NOME,
    CIDADES,
    IBGE,
    ID_REGIAO,
    DATA_ES,
    ID_DEPTO,
    PEDIDO,
    BT)
AS
select  distinct(nota_fiscal.nfe_chave),
        nota_fiscal.quantidade,
        nota_fiscal.nota_fiscal,
        nota_fiscal.peso_bruto,
        nota_fiscal.valor_produtos,
        nota_fiscal.valor_total,
        clientes.nome,
        (case when (nota_fiscal.id_propriedade = 0)  THEN r1.cidade||'-'||R1.uf||' IBGE '||
        R1.codigo_ibge
              when (nota_fiscal.id_propriedade is null)  THEN r1.cidade||'-'||R1.uf||' IBGE '||
        R1.codigo_ibge
        else r2.cidade||'-'||R2.uf||' IBGE '||
        R2.codigo_ibge  END),
        (CASE  when (nota_fiscal.id_propriedade = 0)  THEN  R1.codigo_ibge
               when (nota_fiscal.id_propriedade is null)  THEN  R1.codigo_ibge
        else  R2.codigo_ibge END),
        (CASE   when (nota_fiscal.id_propriedade = 0)  THEN  r1.id_regiao
                when (nota_fiscal.id_propriedade is null)  THEN  r1.id_regiao
                else r2.id_regiao END),
        nota_fiscal.data_emissao,
        nota_fiscal.ID_DEPTO,
        0,
        ''
        from nota_fiscal
        inner join clientes on(clientes.id_cliente = nota_fiscal.id_cliente)
        left join clientes_propriedades on(nota_fiscal.id_cliente = clientes_propriedades.id_cliente) and
        (clientes_propriedades.id_propriedade = nota_fiscal.id_propriedade)
        left join regioes r1 on(r1.id_regiao = clientes.id_regiao)
        left join regioes r2 on(r2.id_regiao = clientes_propriedades.id_regiao) 
           where (nota_fiscal.status =1)
;
