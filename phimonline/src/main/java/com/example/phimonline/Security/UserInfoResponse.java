package com.example.phimonline.Security;

import java.util.List;

public class UserInfoResponse {
    private Integer id;
    private String email;
    private String fullname;
    private String url_image;
    private List<String> roles;

    public UserInfoResponse(Integer id, String email, String fullname,String url_image,List<String> roles) {
        this.id = id;
        this.email = email;
        this.fullname = fullname;
        this.url_image = url_image;

        this.roles = roles;
    }
    public String getFullname(){
        return  this.fullname;
    }
    public String getUrl_image(){
        return  this.url_image;
    }
    public void setFullName(String fullname){
        this.fullname = fullname;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String username) {
        this.email = username;
    }

    public List<String> getRoles() {
        return roles;
    }
}