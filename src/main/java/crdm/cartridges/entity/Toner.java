package crdm.cartridges.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "toners")
public class Toner {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String model;

	private Float quantity;

	@Column(name = "quantity_remained")
	private Float remainder;

	private Date procure_date;

	private Float price;

	private String company;

	@Column(name = "is_active", nullable = false, columnDefinition = "boolean default true")
	private Boolean active = true;

	
	public Toner() {
	}

	public Toner(String model, Float quantity, Float remainder, Date procure_date, Float price, String company,
			Boolean active) {
		this.model = model;
		this.quantity = quantity;
		this.remainder = remainder;
		this.procure_date = procure_date;
		this.price = price;
		this.company = company;
		this.active = active;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Float getQuantity() {
		return quantity;
	}

	public void setQuantity(Float quantity) {
		this.quantity = quantity;
	}

	public Float getRemainder() {
		return remainder;
	}

	public void setRemainder(Float remainder) {
		this.remainder = remainder;
	}

	public Date getProcure_date() {
		return procure_date;
	}

	public void setProcure_date(Date procure_date) {
		this.procure_date = procure_date;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

}
