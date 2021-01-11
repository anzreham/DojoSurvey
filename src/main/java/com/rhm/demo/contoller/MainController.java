package com.rhm.demo.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
public class MainController {


    @GetMapping("/")
    public String home(HttpSession session){

        return "index";
    }




    @RequestMapping(value="/submit", method=RequestMethod.POST)
    public String login(@RequestParam(value="name") String name, @RequestParam(value="location") String location,
                        @RequestParam(value="language") String language, @RequestParam(value="comm") String comm,
                        HttpSession session) {

        session.setAttribute("name", name);
        session.setAttribute("location", location);
        session.setAttribute("language", language);
        session.setAttribute("comm", comm);

        return "redirect:/dashboard";


    }


    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model){
        model.addAttribute("name", session.getAttribute("name"));
        model.addAttribute("location", session.getAttribute("location"));
        model.addAttribute("language", session.getAttribute("language"));
        model.addAttribute("comm", session.getAttribute("comm"));
        return "dashboard";
    }



}