# serverREST
Testing TSV2018-26

# Query
## Check Service Staff
* SELECT id_member as id_service FROM cards JOIN members ON cards.id_member = members.id_member WHERE id_Card = 'service' AND isService = '1';

## Check Members & Money
* SELECT id_member as id_user, balance FROM cards JOIN members ON cards.id_member = members.id_member WHERE id_Card = 'card';

## Add Transaction
* INSERT INTO payments (id_pay_member, id_collect_member, amountofmoney, type_payment) VALUES ('id_service','id_user',money,add/subtract);
