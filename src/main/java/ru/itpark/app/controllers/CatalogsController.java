package ru.itpark.app.controllers;

import org.springframework.beans.factory.annotation.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.itpark.app.models.Catalog;
import ru.itpark.app.models.User;
import ru.itpark.app.repositories.CatalogsRepository;
import ru.itpark.app.repositories.UsersRepository;
import ru.itpark.app.services.CatalogService;

import java.util.List;

@Controller
public class CatalogsController {

    @Autowired
    private CatalogService catalogService;

    @Autowired
    private CatalogsRepository catalogsRepository;

    @GetMapping("/catalog")
    public String getUsersPage(ModelMap model,
                               @PageableDefault(size = 2, sort = {"id"}, direction = Sort.Direction.ASC)Pageable pageable,
                               Authentication authentication) {
        Boolean isAuthorized;
        if (authentication != null) {
            isAuthorized = true;
        } else {
            isAuthorized = false;
        }
        model.addAttribute("isAuthorized", isAuthorized);

        Page<Catalog> page = catalogsRepository.findAll(pageable);
        model.addAttribute("page", page);
        model.addAttribute("url", "/catalog");

        return "catalog";
    }


   /* @GetMapping("/catalog.json")
    @ResponseBody
    public List<Catalog> getCatalogByKeyword(@RequestParam("q") String query) {
        return catalogsRepository.findAllByNameContainsIgnoreCaseOrImgNameContainsIgnoreCase(query, query);
    }*/

    /*@GetMapping("/catalog")
    public String getCatalogsPage(ModelMap model) {
        List<Catalog> catalog = catalogsRepository.findAllByOrderByPriceDesc();
        model.addAttribute("catalog", catalog);
        return "catalog";
    }*/
}
