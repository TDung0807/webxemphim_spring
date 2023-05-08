package com.example.phimonline.model.enity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Table(name = "Comments")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int id;
    private Date date;
    private String Content ;

    @ManyToOne
    @JoinColumn(name ="user_id")
    private  User user;
    @JsonBackReference
    @ManyToOne
    @JoinColumn(name ="movie_id")
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private  Movie movie;
}
