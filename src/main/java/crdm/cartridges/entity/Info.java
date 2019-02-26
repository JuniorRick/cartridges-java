package crdm.cartridges.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "managements")
public class Info {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne
	@JoinColumn(name = "cartridge_id")
	private Cartridge cartridge;

	@ManyToOne
	@JoinColumn(name = "toner_id")
	private Toner toner;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Cartridge getCartridge() {
		return cartridge;
	}

	public void setCartridge(Cartridge cartridge) {
		this.cartridge = cartridge;
	}

	public Toner getToner() {
		return toner;
	}

	public void setToner(Toner toner) {
		this.toner = toner;
	}

}
