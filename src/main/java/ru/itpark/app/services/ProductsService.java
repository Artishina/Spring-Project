package ru.itpark.app.services;

import ru.itpark.app.models.Catalog;
import ru.itpark.app.models.Product;

import java.util.List;

public interface ProductsService {
    List<Catalog> getProducts();

    void add(Catalog catalog);
}
