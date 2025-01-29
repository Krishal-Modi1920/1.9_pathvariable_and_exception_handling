package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {

    @RequestMapping("/user/{userId}/{userName}")
    public String getUserDetail(@PathVariable("userId") int userId, @PathVariable("userName") String userName, Model model) {
        try {
            int convertedUserName = Integer.parseInt(userName);
            model.addAttribute("convertedUserName", convertedUserName);
        } catch (NumberFormatException e) {
            model.addAttribute("error", "UserName must be a number.");
            return "null_page";
        }

        model.addAttribute("userId", userId);
        model.addAttribute("userName", userName);
        return "home";
    }

    @RequestMapping("/home")
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/search")
    public RedirectView search(@RequestParam("querybox") String query) {
        String url = "https://www.google.com/search?q=" + query;
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(url);
        return redirectView;
    }
}
