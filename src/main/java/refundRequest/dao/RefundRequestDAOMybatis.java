package refundRequest.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import refundRequest.bean.RefundRequestDTO;
@Transactional
@Component
public class RefundRequestDAOMybatis implements RefundRequestDAO {
	
	@Autowired
	private SqlSession sqlSession;
	

	public List<RefundRequestDTO> viewModifyList(Map<String, String> map) {
		return sqlSession.selectList("refundRequestSQL.viewModifyList", map);
	}
	
	public int getrefundRequestTotalA(Map<String, String> map) {
		return sqlSession.selectOne("refundRequestSQL.getrefundRequestTotalA",map);
	}

	public List<RefundRequestDTO> vieworderType(Map<String, String> map) {
		return sqlSession.selectList("refundRequestSQL.vieworderType", map);
	}

	public int getorderTypeTotalA(Map<String, String> map) {
		return sqlSession.selectOne("refundRequestSQL.getorderTypeTotalA", map);
	}

	public List<Map<String, String>> getRefundList(Map<String, String> map) {
		return sqlSession.selectList("refundRequestSQL.getRefundList", map);
	}
	
	public List<Map<String, String>> getRefundDetail(Map<String,String> map) {		
		return sqlSession.selectList("refundRequestSQL.getRefundDetail",map);
	}


	public List<Map<String, String>> getRefundInfo(String serial) {
		return sqlSession.selectList("refundRequestSQL.getRefundInfo",serial);
	}

	public int getRefundTotalA() {
		return sqlSession.selectOne("refundRequestSQL.getRefundTotalA");
	}

	public List<Map<String, String>> changeRefundInfo(String itemSerial) {
		return sqlSession.selectList("refundRequestSQL.changeRefundInfo",itemSerial);
	}

	public void changeAllRefundInfo(Map<String, Object> map) {
		sqlSession.update("refundRequestSQL.changAllRefundInfo",map);
		
	}

	public void trackingCancelInsert(Map<String, String> map) {
		sqlSession.insert("refundRequestSQL.trackingCancelInsert",map);
	}
	
	public void trackingCancelList(Map<String, String> map) {
      sqlSession.update("refundRequestSQL.trackingCancelList",map);
   }
}
