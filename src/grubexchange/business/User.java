package grubexchange.business;

import java.util.List;

import grubexchange.db.GrubDB;
import grubexchange.db.UserDB;

public class User {
	
	public User(int iduser, String firstName, String lastName, String emailAddress, String password, String phoneNumber,
			boolean peanutsAllergy, boolean eggsAllergy, boolean cowsmilk_allergy, boolean treenutsAllergy,
			boolean shellfishAllergy, boolean wheatAllergy, boolean soyAllergy, boolean termsAndConditions) {
		super();
		this.iduser = iduser;
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailAddress = emailAddress;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.peanutsAllergy = peanutsAllergy;
		this.eggsAllergy = eggsAllergy;
		this.cowsmilkAllergy = cowsmilk_allergy;
		this.treenutsAllergy = treenutsAllergy;
		this.shellfishAllergy = shellfishAllergy;
		this.wheatAllergy = wheatAllergy;
		this.soyAllergy = soyAllergy;
		this.termsAndConditions = termsAndConditions;
	}
	
	public User() {
		super();
	}
	
	



	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public boolean isPeanutsAllergy() {
		return peanutsAllergy;
	}
	public void setPeanutsAllergy(boolean peanutsAllergy) {
		this.peanutsAllergy = peanutsAllergy;
	}
	public boolean isEggsAllergy() {
		return eggsAllergy;
	}
	public void setEggsAllergy(boolean eggsAllergy) {
		this.eggsAllergy = eggsAllergy;
	}
	public boolean isCowsmilkAllergy() {
		return cowsmilkAllergy;
	}
	public void setCowsmilkAllergy(boolean cowsmilk_allergy) {
		this.cowsmilkAllergy = cowsmilk_allergy;
	}
	public boolean isTreenutsAllergy() {
		return treenutsAllergy;
	}
	public void setTreenutsAllergy(boolean treenutsAllergy) {
		this.treenutsAllergy = treenutsAllergy;
	}
	public boolean isShellfishAllergy() {
		return shellfishAllergy;
	}
	public void setShellfishAllergy(boolean shellfishAllergy) {
		this.shellfishAllergy = shellfishAllergy;
	}
	public boolean isWheatAllergy() {
		return wheatAllergy;
	}
	public void setWheatAllergy(boolean wheatAllergy) {
		this.wheatAllergy = wheatAllergy;
	}
	public boolean isSoyAllergy() {
		return soyAllergy;
	}
	public void setSoyAllergy(boolean soyAllergy) {
		this.soyAllergy = soyAllergy;
	}
	
	public boolean isTermsAndConditions() {
		return termsAndConditions;
	}
	public void setTermsAndConditions(boolean fishAllergy) {
		this.termsAndConditions = fishAllergy;
	}
	
	public List <Grub> getMyGrubs() {
		List <Grub> myGrubs = GrubDB.selectGrubsByIduser(getIduser());	
		return myGrubs;
	}
	
	public List <Grub> getOtherGrubs() {
		List <Grub> otherGrubs = GrubDB.selectOtherGrubs(getIduser());	
		return otherGrubs;
	}
	
	public void deleteGrub(int idgrub) {
		Grub grub = GrubDB.selectGrubByIdgrub(idgrub);
		if (grub.getIduser() == this.iduser){
			int recordsDeleted = UserDB.deleteGrubByIdgrub(idgrub);	
			if (recordsDeleted != 1){
				System.out.println("User:deletegrub:Error deleting grub for iduser=" + this.iduser + "with idgrub=" + idgrub);
			}
			else {
				System.out.println("User:deletegrub:Successfuly deleted grub for iduser=" + this.iduser + "with idgrub=" + idgrub);
			}
		}	
		
		
	}
	
	public Grub getGrubByID(String idgrubString) {
		System.out.println("User:getGrubById:Entering");
		int idgrub = Integer.parseInt(idgrubString);
		Grub grub = GrubDB.selectGrubByIdgrub(idgrub);
		return grub;
		}
	
	public User getUserByID(int iduserString) {
		System.out.println("User:getUserById:Entering");
		User user = UserDB.selectUserByIduser(iduser);
		return user;
	}
		

	
	@Override
	public String toString() {
		return "User [iduser=" + iduser + ", firstName=" + firstName + ", lastName=" + lastName + ", emailAddress="
				+ emailAddress + ", password=" + password + ", phoneNumber=" + phoneNumber + ", peanutsAllergy="
				+ peanutsAllergy + ", eggsAllergy=" + eggsAllergy + ", cowsmilkAllergy=" + cowsmilkAllergy
				+ ", treenutsAllergy=" + treenutsAllergy + ", shellfishAllergy=" + shellfishAllergy + ", wheatAllergy="
				+ wheatAllergy + ", soyAllergy=" + soyAllergy + ", termsAndConditions=" + termsAndConditions;
	}

	private int iduser;
	private String firstName;
	private String lastName;
	private String emailAddress;
	private String password;
	private String phoneNumber;
	private boolean peanutsAllergy;
	private boolean eggsAllergy;
	private boolean cowsmilkAllergy;
	private boolean treenutsAllergy;
	private boolean shellfishAllergy;
	private boolean wheatAllergy;
	private boolean soyAllergy;
	private boolean termsAndConditions;
	
	
	
}
