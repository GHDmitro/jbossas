package pac.daoImpl;

import org.springframework.stereotype.Repository;
import pac.daoInter.AccountTypeDAO;
import pac.entities.Account;
import pac.entities.AccountType;

import javax.persistence.*;
import java.util.List;

/**
 * Created by macbookair on 30.03.16.
 */

@Repository
public class AccountTypeDAOImpl implements AccountTypeDAO{
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void add(AccountType accountType) {
        entityManager.persist(accountType);
    }

    @Override
    public void delete(AccountType accountType) {
        entityManager.remove(accountType);
    }

    @Override
    public AccountType findByName(String type){
        AccountType ac = null;
        try{
            Query query = entityManager.createQuery("select a from AccountType a where a.typeName =:typename", AccountType.class);
            query.setParameter("typename", type);
            ac = (AccountType) query.getSingleResult();
        }catch (NoResultException e){
            System.out.println("No such type in type dao : "+type);
        }catch (NonUniqueResultException e){
            System.out.println("Non unique result in typeDao" );
        }
        return ac;
    }

    @Override
    public List<AccountType> list() {
        Query query = entityManager.createQuery("select a from AccountType a", AccountType.class);
        return (List<AccountType>) query.getResultList();
    }

    @Override
    public List<Account> listAccountsForType(AccountType accountType) {
        Query query = entityManager.createQuery("select a from Account a where a.accountType =:accountType");
        query.setParameter("accountType", accountType);
            return (List<Account>) query.getResultList();
    }
}
