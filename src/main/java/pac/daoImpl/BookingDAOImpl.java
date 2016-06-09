package pac.daoImpl;

import org.springframework.stereotype.Repository;
import pac.daoInter.BookingDAO;
import pac.entities.Account;
import pac.entities.Booking;

import javax.persistence.*;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by macbookair on 23.05.16.
 */

@Repository
public class BookingDAOImpl implements BookingDAO {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void save(Booking booking) {
        entityManager.persist(booking);
    }

    @Override
    public void set(Booking booking) {
        entityManager.merge(booking);
    }

    @Override
    public void delete(Booking booking) {
        entityManager.remove(entityManager.merge(booking));
    }

    @Override
    public Booking find(Integer positionID) {
        return entityManager.find(Booking.class, positionID);
    }

    @Override
    public List<Booking> bookingList(Account accountCustomer) {
        Query query = entityManager.createQuery("select b from Booking b where b.accountCustomer=:accountCustomer");
        query.setParameter("accountCustomer", accountCustomer);
        List<Booking> list = (List<Booking>) query.getResultList();
        if (list != null) {
            return list;
        } else {
            System.out.println("Лист booking пустой в BookingDAOImpl");
            return null;
        }
    }

    @Override
    public Booking findForClient(Account client, Account customer) {
        Booking booking = null;
        try {
            Query query = entityManager.createQuery("select b from Booking b where b.accountClient=:accountClient and b.accountCustomer=:accountCustomer");
            query.setParameter("accountClient", client);
            query.setParameter("accountCustomer", customer);
            booking = (Booking) query.getSingleResult();
        } catch (NoResultException e) {
            System.out.println("No such product");
            return null;
        } catch (NonUniqueResultException e) {
            System.out.println("Non unique result");
        }
        return booking;
    }

    @Override
    public void deleteAll(Account customer) {
        try{
            Query query = entityManager.createQuery("delete from Booking b where b.accountCustomer=:customer");
            query.setParameter("customer", customer);
            query.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
