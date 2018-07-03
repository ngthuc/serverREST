# serverREST
Testing TSV2018-26

# Query
## Check Service Staff
* SELECT id_member as id_service FROM cards JOIN members ON cards.id_member = members.id_member WHERE id_Card = 'service' AND isService = '1';

## Check Members & Money
* SELECT id_member as id_user, balance FROM cards JOIN members ON cards.id_member = members.id_member WHERE id_Card = 'card';

## Add Transaction
* INSERT INTO payments (id_pay_member, id_collect_member, amountofmoney, type_payment) VALUES ('id_service','id_user',money,add/subtract);

## Example
URI: http://172.18.143.7:10110/transaction/add
Client: Postman
JSON:
* Request: {"id_pay_member":"0070151006","id_collect_member":"0070158406","amountofmoney":100000}
* Response:
{
    "id_pay_member": "002555",
    "id_collect_member": "B1400702",
    "amountofmoney": "100000",
    "type_payment": "1"
}
