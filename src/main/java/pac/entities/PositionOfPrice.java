package pac.entities;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by macbookair on 28.03.16.
 */
@Entity
@Table(name = "PositionOfPrice")
public class PositionOfPrice {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "bookingCondition")
    private String bookingCondition;

    @Column(name = "deliveryCondition")
    private String deliveryCondition;

//    @Column(name = "amount")
//    private int amount;

    @Column(name = "dateOfAdding")
    private Date dateOfAdding;

    @Column(name = "cost")
    private double cost;

    @ManyToOne
    @JoinColumn(name = "account_login")
    private Account account;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_id")
    private Product product;

    public PositionOfPrice() {
    }

    public PositionOfPrice(String bookingCondition, String deliveryCondition, Date dateOfAdding, double cost,
                           Account account, Product product) {
        this.account = account;
        this.product = product;
        this.bookingCondition = bookingCondition;
        this.deliveryCondition = deliveryCondition;
//        this.amount = amount;
        this.dateOfAdding = dateOfAdding;
        this.cost = cost;
    }

    @Override
    public int hashCode(){
        int id = this.id * 11 * 13 * 23 ;
        int two = 2 << 31;
        return two -id;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookingCondition() {
        return bookingCondition;
    }

    public void setBookingCondition(String bookingCondition) {
        this.bookingCondition = bookingCondition;
    }

    public String getDeliveryCondition() {
        return deliveryCondition;
    }

    public void setDeliveryCondition(String deliveryCondition) {
        this.deliveryCondition = deliveryCondition;
    }

//    public int getAmount() {
//        return amount;
//    }
//
//    public void setAmount(int amount) {
//        this.amount = amount;
//    }

    public Date getDateOfAdding() {
        return dateOfAdding;
    }

    public void setDateOfAdding(Date dateOfAdding) {
        this.dateOfAdding = dateOfAdding;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }
}
