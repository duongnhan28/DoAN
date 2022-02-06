package com.doanTN.startupDN.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "blogs")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Blogs {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String content;
    private String posteddate;
    private String image;

    public Blogs(String title, String content, String posteddate,String image) {
        this.title = title;
        this.content = content;
        this.posteddate = posteddate;
        this.image = image;
    }
}
