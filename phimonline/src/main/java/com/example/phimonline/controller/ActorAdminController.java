package com.example.phimonline.controller;


import com.example.phimonline.model.enity.Actor;
import com.example.phimonline.service.ActorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class ActorAdminController {
    @Autowired
    private ActorService actorService;


    @GetMapping("admin/actor")
    public String showActorPage(Model model)
    {
        List<Actor> actors = actorService.getAllActors();
        model.addAttribute("actors", actors);

        return "AdminPage/actor";
    }


    @PostMapping("admin/actor")
    public String addActor(@RequestParam Map<String, String> allParams){
        Actor actor = new Actor();
        actor.setName(allParams.get("name"));
        actorService.createActor(actor);

        return "redirect:/admin/actor";

    }

    @PostMapping("admin/actor/edit")
    public String updateActor(@RequestParam Map<String, String> allParams){
        Actor actor = new Actor();
        actor.setName(allParams.get("name"));
        actorService.updateActor(Integer.parseInt(allParams.get("btn_value")), actor);

        return "redirect:/admin/actor";
    }
    @PostMapping("admin/actor/delete")
    public String deleteActor(@RequestParam Map<String, String> allParams){
        actorService.deleteActor(Integer.parseInt(allParams.get("id")));
        return "redirect:/admin/actor";
    }

}
