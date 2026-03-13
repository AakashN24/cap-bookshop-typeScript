using my.bookshop as my from '../db/schema';

service CatalogServiceV2 {
    entity Books as projection on my.Books;
}
