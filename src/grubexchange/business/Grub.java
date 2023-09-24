package grubexchange.business;

import java.util.List;

import grubexchange.db.OfferDB;

public class Grub {
	private int idgrub;
	private int iduser;
	private String name;
	private String description;
	private boolean containsPeanuts;
	private boolean containsEggs;
	private boolean containsCowsmilk;
	private boolean containsTreenuts;
	private boolean containsShellfish;
	private boolean containsWheat;
	private boolean containsSoy;
	private String status;


	public Grub() {
		super();
	}

	public Grub(int idgrub, int iduser, String name, String description, boolean containsPeanuts, boolean containsEggs,
			boolean containsCowsmilk, boolean containsTreenuts, boolean containsShellfish, boolean containsWheat,
			boolean containsSoy) {
		super();
		this.idgrub = idgrub;
		this.iduser = iduser;
		this.name = name;
		this.description = description;
		this.containsPeanuts = containsPeanuts;
		this.containsEggs = containsEggs;
		this.containsCowsmilk = containsCowsmilk;
		this.containsTreenuts = containsTreenuts;
		this.containsShellfish = containsShellfish;
		this.containsWheat = containsWheat;
		this.containsSoy = containsSoy;
		this.status = "Available";
	}
	
	public int getIdgrub() {
		return idgrub;
	}
	public void setIdgrub(int idgrub) {
		this.idgrub = idgrub;
	}
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public boolean isContainsPeanuts() {
		return containsPeanuts;
	}
	public void setContainsPeanuts(boolean containsPeanuts) {
		this.containsPeanuts = containsPeanuts;
	}
	public boolean isContainsEggs() {
		return containsEggs;
	}
	public void setContainsEggs(boolean containsEggs) {
		this.containsEggs = containsEggs;
	}
	public boolean isContainsCowsmilk() {
		return containsCowsmilk;
	}
	public void setContainsCowsmilk(boolean containsCowsmilk) {
		this.containsCowsmilk = containsCowsmilk;
	}
	public boolean isContainsTreenuts() {
		return containsTreenuts;
	}
	public void setContainsTreenuts(boolean containsTreenuts) {
		this.containsTreenuts = containsTreenuts;
	}
	public boolean isContainsShellfish() {
		return containsShellfish;
	}
	public void setContainsShellfish(boolean containsShellfish) {
		this.containsShellfish = containsShellfish;
	}
	public boolean isContainsWheat() {
		return containsWheat;
	}
	public void setContainsWheat(boolean containsWheat) {
		this.containsWheat = containsWheat;
	}
	public boolean isContainsSoy() {
		return containsSoy;
	}
	public void setContainsSoy(boolean containsSoy) {
		this.containsSoy = containsSoy;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public boolean hasOfferFromUser(int idgrub, int iduser) {
		List <Offer> offers = OfferDB.selectOffersByIdgrub(idgrub);
		System.out.println("Grub:hasOfferFromUser:offers =" + offers);
		System.out.println("Grub:hasOfferFromUser:iduser =" + iduser);
		System.out.println("Grub:hasOfferFromUser:receivingIduser =" + offers);
		System.out.println("Grub:hasOfferFromUser:iduser =" + iduser);
		for (int i = 0; i < offers.size(); i++) {
			Offer offer = offers.get(i);
			System.out.println("Grub:hasOfferFromUser:receivingIduser =" + offer.getReceivingIduser());
			System.out.println("Grub:hasOfferFromUser:offeringIduser =" + offer.getOfferingIduser());

			if (offer.getOfferingIduser() == iduser || offer.getReceivingIduser() == iduser){
				return true;
			}
		}	
		return false;

	}

	@Override
	public String toString() {
		return "Grub [idgrub=" + idgrub + ", iduser=" + iduser + ", name=" + name + ", description=" + description
				+ ", containsPeanuts=" + containsPeanuts + ", containsEggs=" + containsEggs + ", containsCowsmilk="
				+ containsCowsmilk + ", containsTreenuts=" + containsTreenuts + ", containsShellfish="
				+ containsShellfish + ", containsWheat=" + containsWheat + ", containsSoy=" + containsSoy + ", status="
				+ status + "]";
	}
	





	

}
