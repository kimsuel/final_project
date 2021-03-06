package buyList.dao;

import java.util.List;
import java.util.Map;

import buyList.bean.BuyListDTO;

public interface BuyListDAO {

	public List<Map<String, String>> getDeliveryDetail(String serial);

	public List<BuyListDTO> getBuyList(Map<String, String> map);

	public void changeStatus(Map<String, Object> map);

	public int getDeliveryTotalA(Map<String, String> map);
	
	public List<Map<String, String>> SalesList(Map<String, String> map);

	public int getSalesTotalA(Map<String, String> map);

	public List<Map<String, String>> searchText(Map<String, String> map);

	public int getSearchTotalA(Map<String, String> map);
	
	public int getDeliveryCountOfMember(String id);

	public Map<String, Integer> getBuyListCount(Map<String, String> map);
	
	public List<Map<String,String>> get5BuyList(String id);
	
	public Map<String,Integer> getSerialCount(String serial);
	
	public List<BuyListDTO> getoriginList(String id);
	
	//마일리지 현황
	public int getTotalPoint(String id);
	public int getTotalUsedPoint(String id);
	public List<Map<String, String>> myPointInfo(Map<String, String> map);
	public int getPointTotalA(Map<String, String> map);
	public int getUsedPointTotalA(Map<String, String> map);
	public List<Map<String, String>> myUsedPointInfo(Map<String, String> map);
	
	//상품 구매
	public String buyItems(BuyListDTO buyListDTO);
	public void InsertSerialmapper(Map<String,String> map);
	public void InsertSerialmapper2(List<Map<String,String>> list);
	public void savePoint(String id, int savePoint);
	
	//1:1문의
	public List<Map<String, String>> getMtmWrite(Map<String, String> map);
	
	public BuyListDTO getOneBuylist(String serial);
	
	//주문내역 출력
	public List<Map<String, String>> getOrderList(String serial);
	
	public int totalPrice(Map<String, String> map);
}
