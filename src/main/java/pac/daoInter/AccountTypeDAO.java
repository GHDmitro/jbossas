package pac.daoInter;

import pac.entities.Account;
import pac.entities.AccountType;

import java.util.List;

/**
 * Created by macbookair on 30.03.16.
 */
public interface AccountTypeDAO {
    void add(AccountType accountType);
    void delete(AccountType accountType);
    AccountType findByName(String type);
    List<AccountType> list();
    List<Account> listAccountsForType(AccountType accountType);
}
