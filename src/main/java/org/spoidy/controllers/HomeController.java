package org.spoidy.controllers;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.spoidy.models.User;
import org.spoidy.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @Autowired
    UserRepo repo;

    @RequestMapping("/")
    public String home() {
        return "login";
    }
    @RequestMapping("login")
    public String login(String username, String password, Model model) {
        try{
            User u = repo.findById(username).orElse(null);
            if(u != null && u.getPassword().equals(password)) {
                model.addAttribute("user", u);
                return "index";
            }
        }catch (Exception e){

        }
        model.addAttribute("error", "Invalid username or password");
        return "redirect:/";
    }
    @RequestMapping("createuser")
    public String createUser() {
        return "createuser";
    }

    @RequestMapping("create")
    public String create(@ModelAttribute User user,Model m) {
        repo.save(user);
        m.addAttribute("message", "Now Try to Login");
        return "redirect:/";
    }

    @RequestMapping("logout")
    public String logout(HttpServletRequest req, HttpSession session) {
        req.removeAttribute("user");
        session.invalidate();
        return "redirect:/login";
    }
}