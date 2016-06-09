package pac.entities;

import javax.persistence.*;

/**
 * Created by macbookair on 28.03.16.
 */

@Entity
@Table(name = "Product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;
    @Column(name = "description")
    private String description;
    @Column(name = "photo")
    private String photo;
    @Column(name = "codeOfModel")
    private String codeOfModel;
    @Column(name = "amount")
    private int amount;
//    @OneToMany(mappedBy = "product")
//    private Set<PositionOfPrice> positions = new HashSet<>();

    public Product() {
    }


    public Product(String name, String description, String photo, String codeOfModel, int amount ) {
        this.name = name;
        this.description = description;
        this.photo = photo;
        this.codeOfModel = codeOfModel;
        this.amount = amount;
    }

//    public Set<PositionOfPrice> getPositions() {
//        return positions;
//    }


//    public void setPositions(Set<PositionOfPrice> positions) {
//        this.positions = positions;
//    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getCodeOfModel() {
        return codeOfModel;
    }

    public void setCodeOfModel(String codeOfModel) {
        this.codeOfModel = codeOfModel;
    }
}
