package CRUDOperation.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;

import CRUDOperation.Model.Product;

@Controller
public class ProductDao 
{
//   Save the data
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public void createProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);
	}
//   Get all data in database
	@Transactional
	public List<Product>getAllProduct()
	{
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
// Get single data in the database
	@Transactional
	public Product getProduct(int id)
	{
		return this.hibernateTemplate.get(Product.class,id);
	}
//  Delete the data
	@Transactional
	public void deleteProduct(int id)
	{
		Product p=this.hibernateTemplate.load(Product.class,id);
		this.hibernateTemplate.delete(p);
		
	}
//  Update the data
	@Transactional
	public void updateProduct(int id)
	{
		this.hibernateTemplate.update(Product.class);
	}
}
