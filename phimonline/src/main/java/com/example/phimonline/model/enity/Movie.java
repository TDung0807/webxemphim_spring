package com.example.phimonline.model.enity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;

import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "Movie")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Movie {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int id ;
    private  String name;
    @Column(name = "url_image")

    private  String urlImage;
    @Column(name = "url_trailer")

    private  String urlTrailer;
    @Column(name = "tota_Epispde")

    private  String totalEpispde ;
    private  String year;
    private  String description;
    private  String director ;

    private  String status;
    private Date date;
    private String poster;
    private String time ;
    private Long view;

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name ="language_id")
    @EqualsAndHashCode.Exclude // không sử dụng trường này trong equals và hashcode
    @ToString.Exclude
    private Language language;

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name ="country_id")
    @EqualsAndHashCode.Exclude // không sử dụng trường này trong equals và hashcode
    @ToString.Exclude
    private Country country;
    @JsonManagedReference
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
            name = "genre_detail",
            joinColumns = {
                    @JoinColumn(name = "movie_id", referencedColumnName = "id"),
            },
            inverseJoinColumns = {
                    @JoinColumn(name = "genre_id", referencedColumnName = "id"),
            }
    )
    @EqualsAndHashCode.Exclude // không sử dụng trường này trong equals và hashcode
    @ToString.Exclude
    private Collection<Genre> genres;

    @JsonManagedReference
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
            name = "Actor_detail",
            joinColumns = {
                    @JoinColumn(name = "movie_id", referencedColumnName = "id"),
            },
            inverseJoinColumns = {
                    @JoinColumn(name = "actor_id", referencedColumnName = "id"),
            }
    )
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private Collection<Actor> actors;
    @JsonManagedReference
    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
    @EqualsAndHashCode.Exclude // không sử dụng trường này trong equals và hashcode
    @ToString.Exclude
    private Set<Rating> ratings;
    @JsonManagedReference
    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
    @EqualsAndHashCode.Exclude // không sử dụng trường này trong equals và hashcode
    @ToString.Exclude
    private List<Episode> episodes;

        public double getAverageRating() {
            if (ratings == null || ratings.isEmpty()) {
                return 0.0;
            }

            double totalRating = 0.0;
            int numRatings = 0;
            for (Rating rating : ratings) {
                totalRating += rating.getNumberRating();
                numRatings++;
            }

            return totalRating / numRatings;
        }


}
