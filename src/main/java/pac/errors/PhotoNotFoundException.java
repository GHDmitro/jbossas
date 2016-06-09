package pac.errors;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Created by macbookair on 20.04.16.
 */
@ResponseStatus(HttpStatus.NO_CONTENT)
public class PhotoNotFoundException extends RuntimeException{

}
