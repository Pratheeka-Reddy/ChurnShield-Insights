LOAD DATA
INFILE 'telco_clean.csv'
INTO TABLE telco_customers
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  customer_id,
  gender,
  senior_citizen,
  partner,
  dependents,
  tenure,
  phone_service,
  internet_service,
  contract,
  payment_method,
  monthly_charges,
  total_charges,
  churn
