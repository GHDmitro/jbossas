package pac.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pac.daoInter.PositionOfPriceDAO;
import pac.entities.Account;
import pac.entities.PositionOfPrice;

import java.util.List;

/**
 * Created by macbookair on 18.04.16.
 */
@Service
public class PositionOfPriceService {
    @Autowired
    private PositionOfPriceDAO positionOfPriceDAO;

    @Transactional
    public void setPositionOfPrice(PositionOfPrice positionOfPrice){
        positionOfPriceDAO.set(positionOfPrice);
    }
    @Transactional
    public void deletePositionOfPrice(PositionOfPrice positionOfPrice){
        positionOfPriceDAO.delete(positionOfPrice);
    }
    @Transactional
    public PositionOfPrice findPosition(Integer positionID){
        return positionOfPriceDAO.find(positionID);
    }

    @Transactional
    public List<PositionOfPrice> listPositions(Account account){
        return positionOfPriceDAO.listPositions(account);
    }



}
