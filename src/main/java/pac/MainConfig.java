package pac;

/**
 * Created by macbookair on 11.06.16.
 */

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;
import pac.configuration.AppConfig;
import pac.configuration.SecurityConfig;

@SpringBootApplication
@ComponentScan("pac")
@Import({AppConfig.class, SecurityConfig.class})
public class MainConfig {
    public static void main(String[] args) {
        SpringApplication.run(MainConfig.class, args);
    }

}
