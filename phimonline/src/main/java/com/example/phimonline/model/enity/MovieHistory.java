package com.example.phimonline.model.enity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Table(name = "MovieHistorys")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MovieHistory {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int id;
    @Column(name = "number_now")

    private int numberNow;

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name ="user_id")
    @EqualsAndHashCode.Exclude // không sử dụng trường này trong equals và hashcode
    @ToString.Exclude
    private  User user;
    @JsonBackReference
    @ManyToOne
    @JoinColumn(name ="movie_id")
    @EqualsAndHashCode.Exclude // không sử dụng trường này trong equals và hashcode
    @ToString.Exclude
    private  Movie movie;
}
