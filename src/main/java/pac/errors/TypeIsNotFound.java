package pac.errors;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Created by macbookair on 30.03.16.
 */
@ResponseStatus(HttpStatus.BAD_REQUEST)
public class TypeIsNotFound extends RuntimeException{
}
