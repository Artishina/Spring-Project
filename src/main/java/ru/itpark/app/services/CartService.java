package ru.itpark.app.services;

import ru.itpark.app.models.Catalog;

import java.math.BigDecimal;
import java.util.Map;

public interface CartService {
    void addProduct(Catalog product);

    void removeProduct(Catalog product);

    Map<Catalog, Integer> getProductsInCart();

    void checkout();

    //BigDecimal getTotal();
}
