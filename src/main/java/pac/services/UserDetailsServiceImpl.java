package pac.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pac.daoInter.AccountDAO;
import pac.entities.Account;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by macbookair on 02.04.16.
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private AccountDAO accountDAO;
    
//    @Autowired
//    private AccountTypeService accountTypeService;

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        // с помощью нашего сервиса UserService получаем User
        Account account = accountDAO.findOne(login);
        // указываем роли для этого пользователя
        System.out.println("------ "+login);
        Set<GrantedAuthority> roles = new HashSet<>();
        roles.add(new SimpleGrantedAuthority(account.getAccountType().getTypeName()));

        // на основании полученныйх даных формируем объект UserDetails
        // который позволит проверить введеный пользователем логин и пароль
        // и уже потом аутентифицировать пользователя
        UserDetails userDetails =
                new org.springframework.security.core.userdetails.User(account.getLogin(),
                        account.getPass(),
                        roles);

        return userDetails;
    }

}
