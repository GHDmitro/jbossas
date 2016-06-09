package pac.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pac.daoInter.BookingPositionDAO;
import pac.entities.Booking;
import pac.entities.BookingPosition;

import java.util.List;

/**
 * Created by macbookair on 23.05.16.
 */
@Service
public class BookingPositionService {
    @Autowired
    private BookingPositionDAO bookingPositionDAO;

    @Transactional
    public void setBookingPosition(BookingPosition bookingPosition){
        bookingPositionDAO.set(bookingPosition);
    }

    @Transactional
    public void deleteBookingPosition(BookingPosition bookingPosition){
        bookingPositionDAO.delete(bookingPosition);
    }

    @Transactional
    public BookingPosition findByID(Integer bookingPositionID){
        return bookingPositionDAO.find(bookingPositionID);
    }

    @Transactional
    public List<BookingPosition> positionsByBooking(Booking booking){
        return bookingPositionDAO.bookingPositionList(booking);
    }

}
