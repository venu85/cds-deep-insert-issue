namespace my.bookshop;
using { User, Country, managed, cuid } from '@sap/cds/common';

entity Books {
  key ID : Integer;
  title  : localized String;
  author : Association to Authors;
  stock  : Integer;
}

entity Authors {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author = $self;
}

entity Orders : cuid, managed {
  OrderNo  : String;
  Items    : Composition of many OrderItems on Items.parent = $self;
  total    : Integer;
}

entity OrderItems : cuid {
  parent    : Association to Orders;
  book      : Association to Books;
  amount    : Integer;
}