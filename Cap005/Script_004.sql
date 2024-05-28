-- Criar um cluster com 3 nós!

####################################################################################
# OBS: PARA CRIAR UM CLUSTER COM 3 NÓS, VOCÊ IRÁ DEIXAR DE USAR O MODELO GRÁTIS,   #
# OU SEJA, ESSA PARTE DA AULA VAI GERAR FATURA PARA PAGAR, SE VOCÊ NÃO QUER TER    #
# CUSTO, VOCÊ PODE ACOMPANHAR A AULA PARA ENTENDER, SEM CRIRA O CLUSTER            #
####################################################################################

PASSO 01 : Criar um novo snpashot
PASSO 02 : Criar um novo cluster (cluster-rdsft-ia16-3nodes)
PASSO 03 : Criar uma nova conexão no DBeaever para o novo cluster

--Validar o search_path
show search_path
SELECT * FROM pg_table_def where schemaname = 'vendas'
