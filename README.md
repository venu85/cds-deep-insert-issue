# cds-deep-insert-issue
Clone the project using git clone
npm install
cds deploy --to sqlite
cds run

Test:
http://localhost:4004/catalog/Orders

Payload:
====================================
{ "OrderNo":"10002", "Items":[
    { "book_ID":1, "amount":5 },
    { "book_ID":2, "amount":3 }
]}
=====================================
