package pac.daoInter;

import pac.entities.Account;
import pac.entities.Booking;

import java.util.List;

/**
 * Created by macbookair on 23.05.16.
 */
public interface BookingDAO {
    void save(Booking booking);
    void set(Booking booking);
    void delete(Booking booking);
    Booking find(Integer positionID);
    List<Booking> bookingList(Account accountCustomer);
    Booking findForClient(Account client, Account customer);
    void deleteAll(Account customer);
}
