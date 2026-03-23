using my.bookshop as my from '../db/schema';

service CatalogServiceV2 {
    entity Books  as projection on my.Books;
    entity Author as projection on my.Authors;
}
