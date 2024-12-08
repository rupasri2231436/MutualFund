package klu.controller;

import klu.model.Comment;
import klu.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CommentController {

    @Autowired
    private CommentRepository commentRepository;

    @PostMapping("/submitComment")
    public String submitComment(@RequestParam String username,
                                @RequestParam int rating,
                                @RequestParam String comment,
                                Model model) {

        // Create a new Comment object and set values
        Comment newComment = new Comment();
        newComment.setUsername(username);
        newComment.setRating(rating);
        newComment.setComment(comment);

        // Save the comment in the database
        commentRepository.save(newComment);

        // Add a success message
        model.addAttribute("message", "Data added successfully!");

        // Return the view (you may want to redirect or return a success page)
        return "redirect:/contact.jsp"; // You can use a JSP or a success page
    }
}
