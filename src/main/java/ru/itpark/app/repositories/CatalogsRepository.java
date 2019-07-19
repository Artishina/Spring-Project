package ru.itpark.app.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import ru.itpark.app.models.Catalog;

import org.springframework.data.domain.Pageable;
import java.util.List;
import java.util.Optional;

public interface CatalogsRepository extends JpaRepository<Catalog, Long> {
    Optional<Catalog> findById(Long id);
    Page<Catalog> findAll(Pageable pageable);
    Page<Catalog> findAllByOrderByPrice(Pageable pageable);
    Page<Catalog> findAllByOrderByPriceDesc(Pageable pageable);
    Page<Catalog> findAllByOrderById(Pageable pageable);
    Page<Catalog> findAllByOrderByIdDesc(Pageable pageable);
    List<Catalog> findAllByNameContainsIgnoreCaseOrImgNameContainsIgnoreCase(String keyword1, String keyword2);
    void deleteById(Long id);
}
