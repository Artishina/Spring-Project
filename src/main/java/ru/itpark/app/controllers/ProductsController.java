package ru.itpark.app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.itpark.app.models.Catalog;
import ru.itpark.app.models.Product;
import ru.itpark.app.repositories.CatalogsRepository;
import ru.itpark.app.services.ProductsService;
import ru.itpark.app.storage.StorageService;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping(value = "/products")
public class ProductsController {

    @Autowired
    private ProductsService productsService;

    @Autowired
    private StorageService storageService;

    @Autowired
    private CatalogsRepository catalogsRepository;


    //@Value("${upload.path}")
    //private String uploadPath = "/Users/Hom/Desktop/JAVA/temp/spring-boot-demo/uploads";

    @GetMapping
    public String getProductsPage(ModelMap model) {
        List<Catalog> products = productsService.getProducts();
        model.addAttribute("products", products);
        return "products";
    }

    @PostMapping
    public String addProduct(Catalog catalog, @RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {

        storageService.store(file);
        redirectAttributes.addFlashAttribute("message",
                "You successfully uploaded " + file.getOriginalFilename() + "!");

        catalog.setImgName(file.getOriginalFilename());

        productsService.add(catalog);
        return "redirect:/products";
    }

    @GetMapping("/products/delete/{productId}")
    public String deleteProduct(@PathVariable("productId") Long productId) {

        catalogsRepository.deleteById(productId);
        return "redirect:/products";
    }

    @PostMapping("/ajax")
    @ResponseBody
    public List<Catalog> addProductFromJson(@RequestBody Catalog catalog) {
        productsService.add(catalog);
        return productsService.getProducts();
    }
}
