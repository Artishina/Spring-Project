package ru.itpark.app.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import ru.itpark.app.models.Catalog;

import java.util.List;

public interface CatalogService {
    Page<Catalog> getItems(Boolean sort, String by, Boolean desc, Pageable pageable);
    Page<Catalog> getItems(Pageable pageable);
   // List<Catalog> getItemsBy(Boolean sort, String by);
    //List<Catalog> getItemsDesc(Boolean sort, Boolean desc);
    List<Catalog> getItemsWithSearch(String query);
}
