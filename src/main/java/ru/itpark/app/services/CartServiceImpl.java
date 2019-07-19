package ru.itpark.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;
import ru.itpark.app.models.Catalog;
import ru.itpark.app.repositories.CatalogsRepository;

import java.math.BigDecimal;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Service
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
@Transactional
public class CartServiceImpl implements CartService {

    @Autowired
    private CatalogsRepository catalogsRepository;

    private Map<Catalog, Integer> products = new HashMap<>();

    @Override
    public void addProduct(Catalog product) {
        if (products.containsKey(product)) {
            products.replace(product, products.get(product) + 1);
        } else {
            products.put(product, 1);
        }
    }

    @Override
    public void removeProduct(Catalog product) {
        if (products.containsKey(product)) {
            if (products.get(product) > 1)
                products.replace(product, products.get(product) - 1);
            else if (products.get(product) == 1) {
                products.remove(product);
            }
        }
    }

    @Override
    public Map<Catalog, Integer> getProductsInCart() {
        return Collections.unmodifiableMap(products);
    }

    @Override
    public void checkout() {
        Optional<Catalog> product;
        for (Map.Entry<Catalog, Integer> entry : products.entrySet()) {
            // Refresh quantity for every product before checking
            product = catalogsRepository.findById(entry.getKey().getId());
            //if (product.getQuantity() < entry.getValue())
             //   throw new NotEnoughProductsInStockException(product);
           // entry.getKey().setQuantity(product.getQuantity() - entry.getValue());
        }
        //catalogsRepository.save(products.keySet());
        catalogsRepository.flush();
        products.clear();
    }

 /*   @Override
    public BigDecimal getTotal() {
        return products.entrySet().stream()
                .map(entry -> entry.getKey().getPrice().multiply(BigDecimal.valueOf(entry.getValue())))
                .reduce(BigDecimal::add)
                .orElse(BigDecimal.ZERO);
    }*/
}
