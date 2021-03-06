package Model;


public class Vene {
	private int tunnus;
	private String nimi, merkkimalli;
	private double pituus, leveys, hinta; 

	
	public Vene() {
		super();
}
	public Vene(int tunnus, String nimi, String merkkimalli, double pituus,
			double leveys, double hinta) {
		super();
		this.tunnus= tunnus;
		this.nimi = nimi;
		this.merkkimalli = merkkimalli;
		this.pituus = pituus;
		this.leveys = leveys;
		this.hinta = hinta;
	}
	public Vene(int tunnus) {
		super();
		this.tunnus= tunnus;
	}
	public Vene(String nimi, String merkkimalli, double pituus, double leveys, double hinta) {
		super();
		this.nimi = nimi;
		this.merkkimalli = merkkimalli;
		this.pituus = pituus;
		this.leveys = leveys;
		this.hinta = hinta;
	}
	public int getTunnus() {
		return tunnus;
	}
	public void setTunnus(int tunnus) {
		this.tunnus = tunnus;
	}
	public String getNimi() {
		return nimi;
	}
	public void setNimi(String nimi) {
		this.nimi = nimi;
	}
	public String getMerkkimalli() {
		return merkkimalli;
	}
	public void setMerkkimalli(String merkkimalli) {
		this.merkkimalli = merkkimalli;
	}
	public double getPituus() {
		return pituus;
	}
	public void setPituus(double pituus) {
		this.pituus = pituus;
	}
	public double getLeveys() {
		return leveys;
	}
	
	public void setLeveys(double leveys) {
		this.leveys = leveys;
	}
	public double getHinta() {
		return hinta;
	}
	public void setHinta(double hinta) {
		this.hinta = hinta;
	}
	@Override
	public String toString() {
		return "Vene [tunnus=" + tunnus + ", nimi=" + nimi + ", merkkimalli="
				+ merkkimalli + ", pituus=" + pituus + ", leveys=" + leveys
				+ ", hinta=" + hinta + "]";
	}
}