package pac.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pac.daoInter.AccountTypeDAO;
import pac.entities.Account;
import pac.entities.AccountType;

import java.util.List;

/**
 * Created by macbookair on 30.03.16.
 */
@Service
public class AccountTypeService {
    @Autowired
    private AccountTypeDAO typeDAO;

    @Transactional
    public void addType(AccountType accountType){
        typeDAO.add(accountType);
    }
    @Transactional
    public void deleteType(AccountType accountType){
        typeDAO.delete(accountType);
    }

    @Transactional
    public List<AccountType> listType(){
        return typeDAO.list();
    }

    @Transactional
    public AccountType findByTypeName(String typeName){
        return typeDAO.findByName(typeName);
    }

    @Transactional
    public List<Account> listAccountByType(AccountType accountType){
        return typeDAO.listAccountsForType(accountType);
    }
}
