# Reshift Essential

![amazon-redshift](https://github.com/elimesquita/redshift-essential/assets/87777462/fcbdaad2-22d6-4ad2-b3f5-03771010b30f)




Conteúdo programático do treinamento!

# Pré-Requisitos
## Criar sua conta na AWS:
  - Vídeo Explicativo: https://www.youtube.com/watch?v=t7UT6xEX0_0
    

## Capítulo 01 - Primeiros passos com o Amazon Redshift
- Introdução ao Amazon Redshift
- Conhecendo a Arquitetura do Redshift
- Criando Cluster Redshift usando a versão gratuita
- Conecte-se ao banco de dados usando o Redshift Query Editor V1 e V2
- Executar consultas em tabelas Redshift usando o Query Editor
- Obter informações dos metadados
- Entendedo o uso de PRIMARY KEY e FOREIGN KEY no Redshift
- Inserir dados em tabelas Redshift
- Atualizar dados em tabelas Redshift
- Excluir dados das tabelas do Redshift
- Salvar Consultas no Redshift usando o Editor de consultas
- Pausando o seu Cluster Redshift

## Capítulo 02 - Consultas SQL básicas usando AWS Redshift SQL
- Introdução às consultas SQL básicas usando o AWS Redshift SQL
- Visão geral do uso da cláusula WITH em consultas SQL do Redshift
- Visão geral do uso de VIEWS em consultas SQL do Redshift
- Filtrando dados usando AWS Redshift SQL
- Filtrando de dados usando AND no Redshift SQL
- Filtrando dados usando o operador LIKE no Redshift SQL
- Filtrando dados usando operadores OR e IN no Redshift SQL
- Visão geral do COUNT e SUM usando Redshift SQL
- Visão Geral do AVG usando Redshift SQL
- Execute agregações totais com base na condição usando Redshift SQL
- Usando COUNT e DISTINCT COUNT usando Redshift SQL
- Usando o SUM e AVG do item do pedido usando o Redshift SQL
- Executando agregações com GROUP BY usando Redshift SQL
- Filtrando em resultados agregados usando HAVING em GROUP BY
- Usando o ORDER com GROUP BY e HAVING
- Visão geral de JOIN usando Tabelas Redshift

## Capítulo 03 - Conectar Cluster Redshift com Solução de Terceiros
- Visão Geral de Ferramantas de Terceiros
- Configuar o Cluster Redshift com o Elastic IP 
- Configurar o acesso público ao Cluster Redshift
- Configurando o Security Group para acessar o Cluster Redshift
- Criar banco de dados e usuário no Redshift Cluster
- Conecte-se ao banco de dados no Redshift usando psql
- Alterando o proprietário nas tabelas do Redshift
- Contando no Redshift com Dbeaver

## Capítulo 04 - Copiar dados do S3 para tabelas do Redshift
- Introdução para Copiar dados do S3 para Redshift
- Enviando os Dados para o S3
- Criando o Banco de Dados e a Tabela
- Visão geral do comando Copy
- Criar usuário IAM com acesso total no S3
- Usando o comando Copy para copiar dados do S3 para uma Tabela Redshift
- Solucionar erros relacionados ao comando Copy
- Execute o comando Copy para copiar dados do S3 para uma Tabela Redshift
- Validar dados carregados na tabela
- Criar função IAM para Redshift para acessar S3
- Copiar dados do S3 para a tabela Redshift usando Copy com função IAM
- Enviar arquivos JSON para o S3
- Copiar arquivos JSON do S3 para a tabela Redshift usando Copy com função IAM

## Capítulo 05 - Tabelas Redshift com Distkeys e Sortkeys
- Visão Geral de Distkeys e Sortkeys
- Criar Cluster Redshift de vários nós
- Conectar no Cluseter Redshift Cluster usando o Query Editor
- Criar banco de dados Redshift
- Criar usuário do banco de dados Redshift
- Criar esquema de banco de dados Redshift
- Estilo de distribuição padrão das tabelas Redshift
- Conceder permissões de SELECT no catálogo para o usuário do banco de dados Redshift
- Atualizando o SEARCH PATH para consultar as tabelas de Sistema Redshift
- Validar tabela com DISTSTYLE AUTO
- Visão geral dos Nodes Slices no Cluster Redshift
- Visão geral dos estilos de distribuição
- Estratégias de distribuição para tabelas no Redshift
- Criar tabelas Redshift com todos os estilos de distribuição
- Solução de problemas e correção de erros de carregamento ou Copy
- Criar tabela de redshift com estilo de distribuição automático
Criar Tabelas Redshift usando chave de estilo de distribuição

## Capítulo 06 - Consultas Federadas com Redshift Spectrum
- Introdução a Consultas Federadas do Redshift
- Visão geral da integração entre RDS e Redshift para consultas federadas
- Criar função IAM para Cluster Redshift
- Configuração do servidor de banco de dados Postgres para consultas federadas no Redshift
- Criar tabelas no banco de dados Postgres para consultas federadas no Redshift
- Criação de segredo usando o Secrets Manager para banco de dados Postgres
- Acessando detalhes secredo usando Python Boto3
- Leitura de dados Json para Dataframe usando Pandas
- Usando Pandas para gravar dados JSON em tabelas do banco de dados
- Criar IAM Policy para Secret Manager e associar Role ao Redshift
- Criar esquema externo Redshift para banco de dados Postgres
- Atualize as configurações de rede do cluster do Redshift para consultas federadas
- Execução de ETL usando Redshift Federated Queries
- Recursos de limpeza adicionados para consultas federadas do Redshift
- Conceder acesso no Catálogo de dados do Glue ao  Cluster Redshift para o Spectrum
- Configurar Cluster Redshift para executar consultas usando o Spectrum
- Recapitulação rápida do banco de dados e tabelas do Catálogo Glue para Redshift Spectrum
- Criar Esquema Externo usando o Redshift Spectrum
- Executar consultas usando o Redshift Spectrum
- Limpar o Cluster Redshift
