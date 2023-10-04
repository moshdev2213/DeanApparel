package apparels.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import apparels.Modal.ProdImg;
import apparels.Modal.Product;
import apparels.Modal.Review;
import apparels.Modal.User;
import apparels.Modal.Cart;

public class ProductDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	public ProductDao(Connection con) {
		this.con = con;
	}

	// query fot the hardware products
	public List<Product> gethardWear() {
		List<Product> products = new ArrayList<Product>();

		try {
			query = "SELECT p.product_ID,p.name,p.description,p.mimg,c.cat_name,p.deal,d.discount,p.design,p.color,p.weight,p.price\r\n"
					+ "FROM product p,category c,productdeal d\r\n"
					+ "WHERE  p.cid=c.category_ID and p.deal=d.name and p.actid=1 and c.type NOT IN(\"softwear\") ";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Product row = new Product();

				row.setId(rs.getInt("product_ID"));
				row.setName(rs.getString("name"));
				row.setDescription(rs.getString("description"));
				row.setDesign(rs.getString("design"));
				row.setWeight(rs.getInt("weight"));
				row.setColor(rs.getString("color"));
				row.setDeal(rs.getInt("discount"));
				row.setDealname(rs.getString("deal"));
				row.setPrice(rs.getDouble("price"));
				row.setThumbnail(rs.getString("mimg"));
				row.setCategory_name(rs.getString("cat_name"));
				products.add(row);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;

	}

	// query for the softwereproducts

	public List<Product> getsoftWear() {
		List<Product> products = new ArrayList<Product>();

		try {
			query = "SELECT p.product_ID,p.name,p.description,p.mimg,c.cat_name,p.deal,d.discount,p.design,p.color,p.weight,p.price\r\n"
					+ "FROM product p,category c,productdeal d\r\n"
					+ "WHERE  p.cid=c.category_ID and p.deal=d.name and p.actid=1 and c.type IN(\"softwear\") ";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Product row = new Product();

				row.setId(rs.getInt("product_ID"));
				row.setName(rs.getString("name"));
				row.setDescription(rs.getString("description"));
				row.setDesign(rs.getString("design"));
				row.setWeight(rs.getInt("weight"));
				row.setColor(rs.getString("color"));
				row.setDeal(rs.getInt("discount"));
				row.setDealname(rs.getString("deal"));
				row.setPrice(rs.getDouble("price"));
				row.setThumbnail(rs.getString("mimg"));
				row.setCategory_name(rs.getString("cat_name"));
				products.add(row);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;

	}

	//get item for th table view
	public List<Product> getForTableitem() {
		List<Product> products = new ArrayList<Product>();

		try {
			query = "SELECT p.barcode,p.product_ID,p.name,p.mimg,p.price\r\n"
					+ "					FROM product p\r\n"
					+ "					WHERE  p.actid=1";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Product row = new Product();

				row.setId(rs.getInt("product_ID"));
				row.setName(rs.getString("name"));
				row.setPrice(rs.getDouble("price"));
				row.setThumbnail(rs.getString("mimg"));
				row.setBarcode(rs.getInt("barcode"));
				
				products.add(row);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;

	}
	//ends here
	public ArrayList<String> getALLImg(String id) {
		ArrayList<String> images = new ArrayList<String>();

		try {
			query = "select path from image where product_id=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				String image = rs.getString("path");
				images.add(image);
			}
			return images;
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return images;
	}

	// product rating for stars
	public int getProuctrating(String id) {
		int rating = 0;

		try {
			query = "SELECT ROUND((sum(r.rating)/count(r.product_ID)), 0) as rate\r\n"
					+ "					from review r\r\n" + "					where r.product_ID=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				rating = (rs.getInt("rate"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rating;
	}

	// product quality rang for the decimals
	public double getQuality(int id) {
		double rate = 0;
		try {
			query = "SELECT ROUND((sum(r.quality)/count(r.product_ID)), 2) as rate\r\n"
					+ "					from review r\r\n" + "					where r.product_ID=?";
			pst = this.con.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				rate = (rs.getDouble("rate"));
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rate * 20;
	}

	// product rating for the decimal and the count
	public double[] getRating(String id) {
		double rate[] = { 0, 0 };
		try {
			query = "SELECT ROUND((sum(r.rating)/count(r.product_ID)), 3) as rate ,count(r.rating) as count\r\n"
					+ "from review r\r\n" + "where r.product_ID=?\r\n" + ";";
			pst = this.con.prepareStatement(query);
			pst.setString(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				rate[0] = (rs.getDouble("rate"));
				rate[1] = (rs.getDouble("count"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rate;
	}

	// product rating with the detail outputs with all types taking pid as parameter

	// rating for the onestar rating
	public double getOneStar(String id) {
		double onestar = 0;

		try {
			query = "select count(r.rating) as count\r\n" + "from product p ,review r\r\n"
					+ "			where r.product_ID = p.product_ID and p.actid =1 and p.product_ID = ? and r.rating=1";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				onestar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return onestar;
	}
	// onestar ends here

	// rating for the twostar starts here
	public double getTwoStar(String id) {
		double twostar = 0;

		try {
			query = "select count(r.rating) as count\r\n" + "from product p ,review r\r\n"
					+ "			where r.product_ID = p.product_ID and p.actid =1 and p.product_ID = ? and r.rating=2";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				twostar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return twostar;
	}
	// twostar ends here

	// rating for the threestar starts here
	public double getThreeStar(String id) {
		double threestar = 0;

		try {
			query = "select count(r.rating) as count\r\n" + "from product p ,review r\r\n"
					+ "			where r.product_ID = p.product_ID and p.actid =1 and p.product_ID = ? and r.rating=3";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				threestar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return threestar;
	}
	// threestar ends here

	// rating for the fourstar starts here
	public double getFourStar(String id) {
		double fourstar = 0;

		try {
			query = "select count(r.rating) as count\r\n" + "from product p ,review r\r\n"
					+ "			where r.product_ID = p.product_ID and p.actid =1 and p.product_ID = ? and r.rating=4";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				fourstar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return fourstar;
	}
	// fourstar ends here

	// rating for the fivestar starts here
	public double getFiveStar(String id) {
		double fivestar = 0;

		try {
			query = "select count(r.rating) as count\r\n" + "from product p ,review r\r\n"
					+ "			where r.product_ID = p.product_ID and p.actid =1 and p.product_ID = ? and r.rating=5";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				fivestar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return fivestar;
	}
	// fivestar ends here

	// rating for the totalstart starts here
	public double getTotalRating(String id) {
		double totalstar = 0;
		try {
			query = "select count(r.rating) as count\r\n" + "from product p ,review r\r\n"
					+ "			where r.product_ID = p.product_ID and p.actid =1 and p.product_ID = ?";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				totalstar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return totalstar;
	}
	// totalstart ends here

	// rating for the quality starts here
	public double getQualityRating(String id) {
		double totalstar = 0;
		try {
			query = "select ROUND((sum(r.quality)/count(r.product_ID)), 3) as count\r\n"
					+ "				 from review r\r\n" + "				 where r.product_ID=?";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				totalstar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return totalstar;
	}
	// quality ends here

	// rating for the quality starts here
	public double getAccurayRating(String id) {
		double totalstar = 0;
		try {
			query = "select ROUND((sum(r.accuracy)/count(r.product_ID)), 3) as count\r\n"
					+ "				 from review r\r\n" + "				 where r.product_ID=?";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				totalstar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return totalstar;
	}
	// quality ends here

	// rating for the quality starts here
	public double getDurabilityRating(String id) {
		double totalstar = 0;
		try {
			query = "select ROUND((sum(r.durability)/count(r.product_ID)), 3) as count\r\n"
					+ "				 from review r\r\n" + "				 where r.product_ID=?";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				totalstar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return totalstar;
	}
	// quality ends here

	// rating for the quality starts here
	public double getShippingRating(String id) {
		double totalstar = 0;
		try {
			query = "select ROUND((sum(r.shipping)/count(r.product_ID)), 3) as count\r\n"
					+ "				 from review r\r\n" + "				 where r.product_ID=?";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				totalstar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return totalstar;
	}
	// quality ends here

	// rating for the asMentioned starts here
	public double getMentionedRating(String id) {
		double totalstar = 0;
		try {
			query = "select ROUND((sum(r.asment)/count(r.product_ID)), 3) as count\r\n"
					+ "				 from review r\r\n" + "				 where r.product_ID=?";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				totalstar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return totalstar;
	}
	// asMentioned ends here

	// rating for the asMentioned starts here
	public double getReliabiltyRating(String id) {
		double totalstar = 0;
		try {
			query = "select ROUND((sum(r.reliability)/count(r.product_ID)), 3) as count\r\n"
					+ "				 from review r\r\n" + "				 where r.product_ID=?";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				totalstar = (rs.getDouble("count"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return totalstar;
	}
	// asMentioned ends here

	// fnction calculate all starts
	public ArrayList<Double> getALLStar(String id) {
		ArrayList<Double> rates = new ArrayList<Double>();
		NumberFormat formatter = new DecimalFormat("#0.00");

		NumberFormat formatter2 = new DecimalFormat("#0");
		
		rates.add(0, Double.parseDouble(formatter.format(((getOneStar(id) / getTotalRating(id)) * 100))));
		rates.add(1, Double.parseDouble(formatter.format(((getTwoStar(id) / getTotalRating(id)) * 100))) );
		rates.add(2, Double.parseDouble(formatter.format(((getThreeStar(id) / getTotalRating(id)) * 100))) );
		rates.add(3, Double.parseDouble(formatter.format(((getFourStar(id) / getTotalRating(id)) * 100))) );
		rates.add(4, Double.parseDouble(formatter.format(((getFiveStar(id) / getTotalRating(id)) * 100))) );
		rates.add(5, Double.parseDouble(formatter2.format(getQualityRating(id))) );
		rates.add(6, Double.parseDouble(formatter2.format(getAccurayRating(id))) );
		rates.add(7, Double.parseDouble(formatter2.format(getDurabilityRating(id))) );
		rates.add(8, Double.parseDouble(formatter2.format(getShippingRating(id))) );
		rates.add(9, Double.parseDouble(formatter2.format(getMentionedRating(id))) );
		rates.add(10,Double.parseDouble(formatter2.format(getReliabiltyRating(id)))  );
		return rates;
	}
	// functin star count ends here

	
	public ArrayList<Double> getALLRating(String id) {
		ArrayList<Double> rates = new ArrayList<Double>();

		try {
			query = "select count(r.rating) as count\r\n" + "			from product p ,review r\r\n"
					+ "			where r.product_ID = p.product_ID and p.actid =1 and p.product_ID = ? and r.rating=1";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				rates.add(0, rs.getDouble("one"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return rates;
	}

	// the rating materials ends here

	//reviews section starts here
	public ArrayList<Review> getALLReviews(String id) {
		ArrayList<Review> reviews = new ArrayList<Review>();

		try {
			query = "SELECT r.review_id,r.description,r.rating,r.date,u.propic,u.fname\r\n"
					+ "FROM review r,users u\r\n"
					+ "where r.useremail = u.useremail and r.product_ID=? order by r.review_id desc";
			;
			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				Review rv = new Review();
				rv.setId(rs.getInt("review_id"));
				rv.setDate(rs.getString("date"));
				rv.setRating(rs.getInt("rating"));
				rv.setPropic(rs.getString("propic"));
				rv.setDescription(rs.getString("description"));
				rv.setFname(rs.getString("fname"));
				reviews.add(rv);
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return reviews;
	}
	//review section ends here
	
	// for the relevant product id fetching the items
	public Product getItem(String id) {
		Product row = null;
		try {
			query = "SELECT p.product_ID,p.name,p.description,p.deal,p.design,p.color,p.weight,p.price,c.cat_name,pd.discount\r\n"
					+ "FROM product p ,category c, productdeal pd\r\n"
					+ "Where p.cid = c.category_ID and pd.name = p.deal and p.actid=1 and p.product_ID=?;";

			pst = this.con.prepareStatement(query);
			pst.setString(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				row = new Product();
				
				row.setId(rs.getInt("product_ID"));
				row.setName(rs.getString("name"));
				row.setDescription(rs.getString("description"));
				row.setDesign(rs.getString("design"));
				row.setWeight(rs.getInt("weight"));
				row.setColor(rs.getString("color"));
				row.setDeal(rs.getInt("discount"));
				row.setDealname(rs.getString("deal"));
				row.setPrice(rs.getDouble("price"));
				row.setCategory_name(rs.getString("cat_name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return row;

	}

	// updating coupons
	public int updateProduct(String name, String description, String design, int weight, int catid, String color,
			int stock, Double price, String deal, Double mrp, int ship, String warranty, String img, String id) {
		int result = 0;
		try {
			query = "UPDATE product\r\n"
					+ "SET name=?,description=?,design=?,weight=?,category_ID=?,color=?,stock=?,price=?,deal=?,mrp=?,shipping=?,warranty=?,mimg=?\r\n"
					+ "WHERE product_ID = ?;";
			pst = this.con.prepareStatement(query);
			pst.setString(1, name);
			pst.setString(2, description);
			pst.setString(3, design);
			pst.setInt(4, weight);
			pst.setInt(5, catid);
			pst.setString(6, color);
			pst.setInt(7, stock);
			pst.setDouble(8, price);
			pst.setString(9, deal);
			pst.setDouble(10, mrp);
			pst.setInt(11, ship);
			pst.setString(12, warranty);
			pst.setString(13, img);
			pst.setString(14, id);
			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// Inserting coupons
	public int InsertProduct(String name, String description, String design, int weight, int catid, String color,
			int stock, Double price, String deal, Double mrp, int ship, String warranty, String img) {
		int result = 0;
		try {
			query = "INSERT INTO product (name,description,design,weight,category_ID,color,stock,price,deal,mrp,shipping,warranty,mimg)\r\n"
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);";
			pst = this.con.prepareStatement(query);
			pst.setString(1, name);
			pst.setString(2, description);
			pst.setString(3, design);
			pst.setInt(4, weight);
			pst.setInt(5, catid);
			pst.setString(6, color);
			pst.setInt(7, stock);
			pst.setDouble(8, price);
			pst.setString(9, deal);
			pst.setDouble(10, mrp);
			pst.setInt(11, ship);
			pst.setString(12, warranty);
			pst.setString(13, img);
			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// delete
	public int deleteprod(String Id) {
		int result = 0;
		try {
			query = "DELETE FROM product WHERE product_ID=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, Id);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

}
