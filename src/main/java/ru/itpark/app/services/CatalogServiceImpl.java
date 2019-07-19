package ru.itpark.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import ru.itpark.app.models.Catalog;
import ru.itpark.app.repositories.CatalogsRepository;

import java.util.List;

@Service
public class CatalogServiceImpl implements CatalogService {

    @Autowired
    private CatalogsRepository catalogsRepository;

    @Override
    public Page<Catalog> getItems(Boolean sort, String by, Boolean desc, Pageable pageable) {
        if (sort == null || !sort) {
            return catalogsRepository.findAll(pageable);
        } else {
            if (by != null) {
                switch (by) {
                    case "price":
                        if (desc == null || !desc) {
                            return catalogsRepository.findAllByOrderByPrice(pageable);
                        } else {
                            return catalogsRepository.findAllByOrderByPriceDesc(pageable);
                        }
                    case "id":
                        if (desc == null || !desc) {
                            return catalogsRepository.findAllByOrderById(pageable);
                        } else {
                            return catalogsRepository.findAllByOrderByIdDesc(pageable);
                        }
                }
            } return catalogsRepository.findAll(pageable);
        }
    }

    @Override
    public Page<Catalog> getItems(Pageable pageable) {
        return null;
    }

    @Override
    public List<Catalog> getItemsWithSearch(String query) {
        return catalogsRepository.findAllByNameContainsIgnoreCaseOrImgNameContainsIgnoreCase(query, query);
    }
}
