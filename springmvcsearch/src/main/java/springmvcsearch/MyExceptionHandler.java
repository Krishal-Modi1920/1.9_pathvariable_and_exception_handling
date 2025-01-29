package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class MyExceptionHandler {

    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(NullPointerException.class)
    public String exceptionHandlerNull(Model m) {
        m.addAttribute("msg", "A Null Pointer Exception has occurred.");
        return "null_page";
    }

    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(NumberFormatException.class)
    public String exceptionHandlerNumberFormat(Model m) {
        m.addAttribute("msg", "A Number Format Exception has occurred.");
        return "null_page";
    }

    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    public String exceptionHandlerGeneric(Model m) {
        m.addAttribute("msg", "An unexpected error has occurred.");
        return "null_page";
    }
}
