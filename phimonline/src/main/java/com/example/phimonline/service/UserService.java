package com.example.phimonline.service;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.example.phimonline.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.example.phimonline.model.enity.User;

@Service
@Transactional
public class UserService {

    @Autowired
    private UserRepository userRepository;
    public User getUserByEmail(String email){
        return  userRepository.getUserByEmail(email);
    }
    public List<User> listAll() {
        return userRepository.findAllOrderByIdDesc();
    }

    public void save(User e) {
        userRepository.save(e);
    }

    public User get(int id) {
        return userRepository.findById(id).get();
    }

    public void delete(int id) {
        userRepository.deleteById(id);
    }
    public int countUser() {
        return userRepository.findAll().size();
    }
    public boolean checkPass(String pass) {
        if(pass.length()<5)
            return false;
        char[] chars = pass.toCharArray();
        int flag=0;
        for(char c:chars) {
            if(Character.isDigit(c)) {
                flag=flag+1;
                break;
            }
        }
        for(char i:chars) {
            if(!Character.isAlphabetic(i)) {
                flag=flag+1;
                break;
            }
        }
        if(flag==2)
            return true;
        return false;
    }
    public boolean checkEmail(String email) {
        String regex = "[A-Za-z0-9+_.-]+@(.+)$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
    public User update(int id, User user) {
        User user1 = userRepository.findById(id).orElse(null);
        if (user1 == null) {
            return null;
        }
        user1.setName(user.getName());
        user1.setEmail(user.getEmail());
        user1.setPassword(user.getPassword());
        user1.setUrl_avatar(user.getUrl_avatar());
        return userRepository.save(user1);
    }
}