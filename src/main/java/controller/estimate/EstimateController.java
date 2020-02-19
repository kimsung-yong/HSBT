package controller.estimate;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Log4j
public class EstimateController {
    @RequestMapping("/avcaa")
    public String list() {
        return "ddd";
    }
}
