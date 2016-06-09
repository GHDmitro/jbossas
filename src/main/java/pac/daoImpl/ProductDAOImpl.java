package pac.daoImpl;

import org.springframework.stereotype.Repository;
import pac.daoInter.ProductDAO;
import pac.entities.Product;

import javax.persistence.*;
import java.util.List;

/**
 * Created by macbookair on 18.04.16.
 */
@Repository
public class ProductDAOImpl implements ProductDAO {
    @PersistenceContext
    private EntityManager entityManager;

//    @Override
//    public void set(Product product) {
//        entityManager.persist(product);
//    }

    @Override
    public void delete(Product product) {
        entityManager.remove(entityManager.merge(product));
    }

    @Override
    public void set(Product product) {
        entityManager.merge(product);
    }

    @Override
    public Product find(String name, String codeOfModel, String refPhoto) {
        Product ac = null;
        List<Product> list ;
        try{
            Query query = entityManager.createQuery("select p from Product p where p.name =:name and p.codeOfModel =:codeOfModel and " +
                    "p.photo =:refPhoto", Product.class);
            query.setParameter("name", name);
            query.setParameter("codeOfModel", codeOfModel);
            query.setParameter("refPhoto", refPhoto);
            ac = (Product) query.getSingleResult();
//            list = (List<Product>) query.getResultList();
//        if (list.size() > 1){
//            throw new NonUniqueResultException();
//        }else if (list.size() == 0){
//            return null;
//        }else
        }catch (NoResultException e){
            System.out.println("No such product");
            return null;
        }catch (NonUniqueResultException e){
            System.out.println("Non unique result");
        }

//        return list.get(0);
        return ac;
    }

    @Override
    public Product findByID(Integer id) {
        return entityManager.find(Product.class, id);
    }
}
