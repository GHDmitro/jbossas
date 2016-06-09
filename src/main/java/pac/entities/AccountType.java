package pac.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by macbookair on 30.03.16.
 */
@Entity
@Table(name = "AccountType")
public class AccountType {

    @Id
    @Column(name = "typeName")
    private String typeName;

//    @OneToMany(mappedBy = "accountType", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
//    private List<Account> accounts = new ArrayList<>();


    public AccountType() {
    }

    public AccountType(String typeName) {
        this.typeName = typeName;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
