package chartgenerator.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author zoha
 * @since 2/2/20
 */
@Controller
public class TestController {

    @GetMapping("/")
    public String test() {
        return "test";
    }
}
