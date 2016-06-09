package pac.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pac.daoInter.AccountDAO;
import pac.entities.Account;
import pac.entities.AccountType;
import pac.entities.PositionOfPrice;

import java.util.List;

/**
 * Created by macbookair on 28.03.16.
 */
@Service
public class AccountService {

    @Autowired
    private AccountDAO accountDAO;

    @Transactional
    public void addAccount(Account account){
        accountDAO.add(account);
    }

    @Transactional
    public void deleteAccount(Account account){
        accountDAO.delete(account);
    }

    @Transactional
    public List<Account> listAccount(AccountType accountType){
        return accountDAO.list(accountType);
    }

    @Transactional
    public void updateAccount(Account account){
        accountDAO.update(account);
    }

    @Transactional
    public Account findAccount(String login){
        Account a =  accountDAO.findOne(login);
        if (a != null){
            System.out.println(a.getLogin()+"     "+a.getPass()+" "+a.getTelNumber()+"  "+a.getEmail());
            return a;
        }else
        return null;
    }
    @Transactional
    public List<PositionOfPrice> listPositions(Account account){
        return accountDAO.listPositions(account);
    }

    @Transactional
    public void deletePosition(PositionOfPrice positionOfPrice){
        accountDAO.deletePosition(positionOfPrice);
    }




}
