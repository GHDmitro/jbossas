package pac.daoInter;

import pac.entities.Product;

/**
 * Created by macbookair on 18.04.16.
 */
public interface ProductDAO {
//    void set(Product product);
    void delete(Product product);
    void set(Product product);
    Product find(String name, String codeOfModel, String refPhoto);
    Product findByID(Integer id);
}
