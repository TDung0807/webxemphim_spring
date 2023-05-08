package com.example.phimonline.model.enity;

import com.example.phimonline.model.enity.Movie;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.util.Collection;

@Entity
@Table(name = "Genre")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Genre {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String description;

    @JsonIgnore // ignore bi-directional relationship to prevent stack overflow error
    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(
            name = "genre_detail",
            joinColumns = {
                    @JoinColumn(name = "genre_id", referencedColumnName = "id"),

            },
            inverseJoinColumns = {
                    @JoinColumn(name = "movie_id", referencedColumnName = "id"),

            }
    )
    @EqualsAndHashCode.Exclude // không sử dụng trường này trong equals và hashcode
    @ToString.Exclude
    private Collection<Movie> Movies;
}
