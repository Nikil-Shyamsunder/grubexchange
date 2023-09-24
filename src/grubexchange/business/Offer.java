package grubexchange.business;

import grubexchange.db.OfferDB;

public class Offer {
	private int idoffer;
	private int receivingIduser;
	private int offeringIduser;
	private int receivingIdgrub;
	private int offeringIdgrub;



	public int getIdoffer() {
		return idoffer;
	}


	public void setIdoffer(int idoffer) {
		this.idoffer = idoffer;
	}


	public int getReceivingIduser() {
		return receivingIduser;
	}


	public void setReceivingIduser(int receivingIduser) {
		this.receivingIduser = receivingIduser;
	}


	public int getOfferingIduser() {
		return offeringIduser;
	}


	public void setOfferingIduser(int offeringIduser) {
		this.offeringIduser = offeringIduser;
	}


	public int getReceivingIdgrub() {
		return receivingIdgrub;
	}


	public void setReceivingIdgrub(int receivingIdgrub) {
		this.receivingIdgrub = receivingIdgrub;
	}


	public int getOfferingIdgrub() {
		return offeringIdgrub;
	}


	public void setOfferingIdgrub(int offeringIdgrub) {
		this.offeringIdgrub = offeringIdgrub;
	}


	public Offer() {
		super();
	}

	
	

	public Offer(int idoffer, int receivingIduser, int offeringIduser, int receivingIdgrub, int offeringIdgrub) {
		super();
		this.idoffer = idoffer;
		this.receivingIduser = receivingIduser;
		this.offeringIduser = offeringIduser;
		this.receivingIdgrub = receivingIdgrub;
		this.offeringIdgrub = offeringIdgrub;
	}


	@Override
	public String toString() {
		return "Offer [idoffer=" + idoffer + ", receivingIduser=" + receivingIduser + ", offeringIduser="
				+ offeringIduser + ", receivingIdgrub=" + receivingIdgrub + ", offeringIdgrub=" + offeringIdgrub + "]";
	}


	

	
	




	

}
