package customerMng;

public class Model {
    private int id;
    private String name;
    private String uname;
    private String password;
    private String phone;
    private String email;
    private String sex;
    
    
	public Model(int id, String name, String uname, String password, String phone, String email, String sex) {
		super();
		this.id = id;
		this.name = name;
		this.uname = uname;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.sex = sex;
	}
    
	public Model(String name, String uname, String password, String phone, String email, String sex) {
		super();
		this.name = name;
		this.uname = uname;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.sex = sex;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
    
    
	
    
	
    
}
