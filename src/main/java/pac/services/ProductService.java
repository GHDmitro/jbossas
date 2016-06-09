package pac.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pac.daoInter.ProductDAO;
import pac.entities.Product;

/**
 * Created by macbookair on 18.04.16.
 */
@Service
public class ProductService {
    @Autowired
    private ProductDAO productDAO;

//    public void addProduct(Product product){
//        productDAO.set(product);
//    }
    @Transactional
    public void deleteProduct(Product product){
        productDAO.delete(product);
    }
    @Transactional
    public void setProduct(Product product){
        productDAO.set(product);
    }
    @Transactional
    public Product findProduct(String productName, String codeOfModel, String refPhoto){
        return productDAO.find(productName,codeOfModel, refPhoto);
    }
    @Transactional
    public Product findProductByID(Integer id){
        return productDAO.findByID(id);
    }
}
