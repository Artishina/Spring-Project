package ru.itpark.app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;
import ru.itpark.app.models.User;
import ru.itpark.app.repositories.CatalogsRepository;
import ru.itpark.app.security.UserDetailsImpl;
import ru.itpark.app.services.CartService;

@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CatalogsRepository catalogsRepository;

    @GetMapping("/cart")
    public ModelAndView getCartPage(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView("/cart");
        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        User user = userDetails.getUser();
        modelAndView.addObject("user", user);
        modelAndView.addObject("products", cartService.getProductsInCart());

        return modelAndView;
    }


    @GetMapping("/cart/addProduct/{productId}")
    public String addProductFromCart(@PathVariable("productId") Long productId) {
        catalogsRepository.findById(productId).ifPresent(cartService::addProduct);
        return "redirect:/cart";
    }

    @GetMapping("/cart/removeProduct/{productId}")
    public String removeProductFromCart(@PathVariable("productId") Long productId) {
        catalogsRepository.findById(productId).ifPresent(cartService::removeProduct);
        return "redirect:/cart";
    }

    @GetMapping("/cart/checkout")
    public String checkout() {
            cartService.checkout();

        return "redirect:/cart";
    }
}
