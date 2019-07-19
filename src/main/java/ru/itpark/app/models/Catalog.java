package ru.itpark.app.models;

import lombok.*;

import javax.persistence.*;

@Builder
@Getter
@Setter
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "my_catalog")
public class Catalog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String imgName;


    @Column(length = 1000)
    private String description;
    private Double price;

    public void setImgName(String imgName) {
        this.imgName = imgName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Catalog catalog = (Catalog) o;

        return id.equals(catalog.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }
}
