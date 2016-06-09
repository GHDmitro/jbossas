package pac.daoInter;

import pac.entities.Booking;
import pac.entities.BookingPosition;

import java.util.List;

/**
 * Created by macbookair on 23.05.16.
 */
public interface BookingPositionDAO {
    void set(BookingPosition bookingPosition);
    void delete(BookingPosition bookingPosition);
    BookingPosition find(Integer positionID);
    List<BookingPosition> bookingPositionList(Booking booking);
}
