package pac.entities;

import javax.persistence.*;

/**
 * Created by macbookair on 23.05.16.
 */
@Entity
@Table(name = "BookingPosition")
public class BookingPosition {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "capacity")
    private int capacity;

    @ManyToOne()
    @JoinColumn(name = "booking_id",  updatable = true, insertable = true) // это было изменено птница nullable = false,
    private Booking booking;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    public BookingPosition() {
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

    public BookingPosition(int capacity,Booking booking, Product product) { //Booking booking ,
        this.capacity = capacity;
        this.booking = booking;
        this.product = product;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
