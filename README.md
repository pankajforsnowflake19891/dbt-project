### Pre-requisities:
- Create Snowflake trial account 

- Create Github repository to store and maintain a DBT code 

- Create the DBT Cloud IDE account and establish coonection with Snowflake and github repository.



### Created and loaded the source tables with raw data in snowflake:

analytics.PANKAJFORSNOWFLAKE19.raw_customers
analytics.PANKAJFORSNOWFLAKE19.raw_orders

### DBT Models creation and override default schema:

- Created the below DBT models, yml and md files.
stg_customers.sql
stg_orders.sql
hub_customer.sql
link_customer_order.sql
sat_customer.sql
sources.yml
schema.yml
  
### Incremental models:
Models were created to load the data in incremental way based on unique key columns and it will check for rows created or modified since the last time dbt ran this model.

### Push the dbt changes to github repository
All the DBT model code is pushe dto the git repository

###Environment Set Up to run the DBT jobs
A environment named 'Production' is creatde to run the DBT jobs

##Create DBT jobs
DBt jobs Staging(Run the stagging models) and DataVault(run the hub/link/satellite models)

### DBT log:

All the logs are readily available for each run the job logs for DBT.

### DBT tests:

unique andnot-null tests are performed on hub and satellite models.

### DBT Document generation:

Documentation genaration is taken care while running the DBT jobs from the Production environment.

