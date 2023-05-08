package com.example.phimonline.model.enity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "Episode")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Episode {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private int number;
    private String name;
    private String url;
    private String description;

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name ="movie_id")
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private Movie movie;

}
