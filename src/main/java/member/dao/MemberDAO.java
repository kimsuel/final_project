package member.dao;

import java.util.List;
import java.util.Map;

import buyList.bean.BuyListDTO;
import member.bean.MemberDTO;

public interface MemberDAO {

	public MemberDTO login(Map<String, String> map);
	public void write(MemberDTO memberDTO);
	public MemberDTO getMember(String id);
	public void modify(MemberDTO memberDTO);
	public MemberDTO finedOneByEmail(String email);
	public void newpwdUpdate(Map<String, String> map);
	public List<String> getWishList(String id);
	public void addWishList(Map<String, String> map);
	public void deleteWishList(Map<String, String> map);
	public int getWishListTotalA(String id);
	public void byeMember(Map<String, String> map);
	public void updateAddr(BuyListDTO buylistDTO);
	public String addGuest(MemberDTO memberDTO);
	public MemberDTO getGuest(Map<String,String> map);
	public void updatePoint(Map<String, String> map);
	public List<MemberDTO> getMemberList(Map<String, String> map);
	public int memberTotalA();
}
