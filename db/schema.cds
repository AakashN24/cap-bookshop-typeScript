namespace my.bookshop;

using {
  cuid,
  managed,
  Currency
} from '@sap/cds/common';

entity Books : managed {
  key ID          : Integer;
      title       : String(111);
      description : String(1111);
      price       : Decimal(9, 2);
      stock       : Integer;
      ISBN        : String(13);
      publishedAt : Date;
      language    : String(2);
      author      : Association to Authors;
      genre       : Association to Genres;
      // publisher   : Association to Publishers;
      currency    : Currency;
}

entity Genres {
  key ID          : Integer;
      name        : String(111);
      description : String(500);
}

entity Authors {
  key ID          : Integer;
      name        : String(111);
      dateOfBirth : Date;
      books       : Association to many Books
                      on books.author = $self;
}

// entity Publishers {
//   key ID    : Integer;
//       name  : String(111);
//       books : Association to many Books
//                 on books.publisher = $self;
// }

//
// entity Customers : managed, cuid {
//   name    : String(111);
//   email   : String(255);
//   address : String(500);
//   orders  : Association to many Orders
//               on orders.customer = $self;
// }

// entity Orders : managed, cuid {
//   status      : String enum {
//     open;
//     processing;
//     shipped;
//     cancelled;
//   };
//   totalAmount : Decimal(9, 2);
//   customer    : Association to Customers;
//   items       : Composition of many OrderItems
//                   on items.order = $self;
//   currency    : Currency;
// }

// entity OrderItems {
//   key ID       : UUID;
//       quantity : Integer;
//       price    : Decimal(9, 2);
//       order    : Association to Orders;
//       book     : Association to Books;
// }
