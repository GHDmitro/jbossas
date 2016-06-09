package pac.daoInter;

import pac.entities.Account;
import pac.entities.AccountType;
import pac.entities.PositionOfPrice;

import java.util.List;

/**
 * Created by macbookair on 28.03.16.
 */
public interface AccountDAO {
    void add(Account account);
    void delete(Account account);
    void update(Account account);
    Account findOne(String login);
    List<Account> list(AccountType accountType);
    List<PositionOfPrice> listPositions(Account account);
    void deletePosition(PositionOfPrice positionOfPrice);
}
