package ru.itpark.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itpark.app.models.Catalog;

public interface ProductsRepository extends JpaRepository<Catalog, Long> {
}
