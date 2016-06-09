package pac.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by macbookair on 23.05.16.
 */

@Entity
@Table(name = "Booking")
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "account_client")
    private Account accountClient;

    @ManyToOne
    @JoinColumn(name = "account_customer",  updatable = true, insertable = true) // это было изменено птница nullable = false,
    private Account accountCustomer;

    @OneToMany(mappedBy = "booking", fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<BookingPosition> bookingPositions = new HashSet<>();
//    private List<BookingPosition> bookingPositions = new ArrayList<>();

    public Booking() {
    }

    public Booking(Account accountClient, Account accountCustomer) { //, Account accountCustomer
        this.accountClient = accountClient;
        this.accountCustomer = accountCustomer;

    }

    @Override
    public int hashCode(){
        int logInt = id;
        int hashCode = logInt  * 13 * 11 ;
        int two32 = 2 << 31 ;
        return  two32 - hashCode;
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }


    public void addBookingPosition(BookingPosition bookingPosition){
        if (!bookingPositions.contains(bookingPosition)) {
            bookingPositions.add(bookingPosition);
            if (bookingPosition.getBooking() != null){
                bookingPosition.getBooking().getBookingPositions().remove(bookingPosition);
            }
            bookingPosition.setBooking(this);
        }
    }

    public void deleteBookingPosition(BookingPosition bookingPosition){
        bookingPositions.remove(bookingPosition);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getAccountClient() {
        return accountClient;
    }

    public void setAccountClient(Account accountClient) {
        this.accountClient = accountClient;
    }

    public Account getAccountCustomer() {
        return accountCustomer;
    }

    public void setAccountCustomer(Account accountCustomer) {
        this.accountCustomer = accountCustomer;
    }

    public Set<BookingPosition> getBookingPositions() {
        return bookingPositions;
    }

    public void setBookingPositions(Set<BookingPosition> bookingPositions) {
        this.bookingPositions = bookingPositions;
    }
}

