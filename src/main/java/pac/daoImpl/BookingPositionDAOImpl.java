package pac.daoImpl;

import org.springframework.stereotype.Repository;
import pac.daoInter.BookingPositionDAO;
import pac.entities.Booking;
import pac.entities.BookingPosition;
import javax.persistence.*;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by macbookair on 23.05.16.
 */
@Repository
public class BookingPositionDAOImpl implements BookingPositionDAO{
    @PersistenceContext
    private EntityManager entityManager;


    @Override
    public void set(BookingPosition bookingPosition) {
        entityManager.merge(bookingPosition);
    }

    @Override
    public void delete(BookingPosition bookingPosition) {
        entityManager.remove(entityManager.merge(bookingPosition));
    }

    @Override
    public BookingPosition find(Integer positionID) {
        return entityManager.find(BookingPosition.class, positionID);
    }

    @Override
    public List<BookingPosition> bookingPositionList(Booking booking) {
        Query query = entityManager.createQuery("select bp from BookingPosition bp where bp.booking=:booking");
        query.setParameter("booking", booking);
        List<BookingPosition> list = (List<BookingPosition>) query.getResultList();
        if (list != null){
            return list;
        }else {
            System.out.println("Лист bookingPosition пустой в BookingPositionDAOImpl");
            return null;
        }
    }
}
