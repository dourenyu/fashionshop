package chen.mingyu.dao;

import java.util.List;

import org.springframework.core.annotation.Order;

import chen.mingyu.domain.Orders;

public interface OrderDao {
	
	//��������
	public int insertOrder(Order order);
	//���ݶ���id��ɾ������
	public int deleteOrderById(String or_id);
	//���ݲ�ѯ��������ѯ����
	public List<Orders> selectOrdersAll(Orders orders);
	
}
