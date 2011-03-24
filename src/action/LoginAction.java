package action;

import java.util.Date;
import java.util.Map;

import model.Booking;
import model.Extra;
import model.Guest;
import model.Room;
import model.RoomFacility;
import model.Structure;
import model.User;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

@ParentPackage(value="default")
public class LoginAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session = null;
	private String email = null;
	private String password;
	
	@Actions(value={
			@Action(value="/login", results={
					@Result(name="input",location="/WEB-INF/jsp/login.jsp"),
					@Result(name="loginSuccess", location="/homeLogged.jsp"),	
					@Result(name="loginError", location="/login.jsp")
			})
			
	})	
	
	public String execute(){
		String ret = null;	
		User user = null;
		Structure structure = null;
		
		if(this.getEmail().trim().equals("locanda@locanda.it") &&
				this.getPassword().trim().equals("locanda")){
			user = new User();
			
			user.setEmail(this.getEmail());
			structure = this.buildStructure();
			user.setStructure(structure);
			this.getSession().put("user", user);	
			ret = "loginSuccess";
		}else{
			this.getSession().put("user", null);
			ret = "loginError";
		}		
		return ret;
	}
	
	private Structure buildStructure(){
		Structure ret = null;
			
		
		ret = new Structure();
		ret.setName("polaris");
		ret.setEmail("polaris@locanda.it");
		
		this.buildRooms(ret);
		this.buildRoomFacilities(ret);
		this.buildGuests(ret);
		this.buildBookings(ret);
		this.buildExtras(ret);
		
		return ret;		
	}
	
	private void buildRooms(Structure structure){
		Room aRoom = null;		
			
		aRoom = new Room();
		aRoom.setId(structure.nextKey());
		aRoom.setName("101");
		aRoom.setRoomType("singola");
		aRoom.setPrice(80.0);
		aRoom.setMaxGuests(1);
		structure.addRoom(aRoom);
		
		aRoom = new Room();
		aRoom.setId(structure.nextKey());
		aRoom.setName("201");
		aRoom.setRoomType("doppia");
		aRoom.setPrice(120.0);
		aRoom.setMaxGuests(2);
		structure.addRoom(aRoom);
	}
	
	private void buildRoomFacilities(Structure structure){
		RoomFacility aRoomFacility = null;
		
		aRoomFacility = new RoomFacility();
		aRoomFacility.setId(structure.nextKey());
		aRoomFacility.setName("AAD");
		aRoomFacility.setFileName("AAD.gif");
		structure.addRoomFacility(aRoomFacility);
		
		aRoomFacility = new RoomFacility();
		aRoomFacility.setId(structure.nextKey());
		aRoomFacility.setName("BAR");
		aRoomFacility.setFileName("BAR.gif");
		structure.addRoomFacility(aRoomFacility);
		
		aRoomFacility = new RoomFacility();
		aRoomFacility.setId(structure.nextKey());
		aRoomFacility.setName("PHO");
		aRoomFacility.setFileName("PHO.gif");
		structure.addRoomFacility(aRoomFacility);
		
		aRoomFacility = new RoomFacility();
		aRoomFacility.setId(structure.nextKey());
		aRoomFacility.setName("RAD");
		aRoomFacility.setFileName("RAD.gif");
		structure.addRoomFacility(aRoomFacility);
		
		aRoomFacility = new RoomFacility();
		aRoomFacility.setId(structure.nextKey());
		aRoomFacility.setName("TEL");
		aRoomFacility.setFileName("TEL.gif");
		structure.addRoomFacility(aRoomFacility);
		
	}
	
	private void buildGuests(Structure structure){
		Guest aGuest = null;
		
		aGuest = new Guest();
		aGuest.setId(structure.nextKey());
		aGuest.setFirstName("Paolo");
		aGuest.setLastName("Rossi");
		aGuest.setCountry("Italy");
		aGuest.setAddress("Roma, Via Rossini 82");
		aGuest.setEmail("paolo@rossi.it");
		aGuest.setPhone("06-6789458");
		aGuest.setZipCode("09123");
		aGuest.setNotes("Note su Paolo Rossi");
		structure.addGuest(aGuest);
	}
	
	private void buildBookings(Structure structure){
		Booking aBooking = null;
		Room aRoom = null;
		Guest aGuest = null;
		Date dateIn = null;
		Date dateOut = null;
		
		aBooking = new Booking();
		aRoom = structure.findRoomByName("101");
		aGuest = structure.getGuests().get(0);
		aBooking.setGuest(aGuest);
		aBooking.setRoom(aRoom);
		dateIn = new Date(System.currentTimeMillis());
		dateOut = new Date(System.currentTimeMillis() + 3*24*3600*1000);
		aBooking.setDateIn(dateIn);
		aBooking.setDateOut(dateOut);
		aBooking.setId(structure.nextKey());
		aBooking.setNrGuests(1);
		aBooking.setSubtotal(50.0);
		structure.addBooking(aBooking);
		
	}
	
	private void buildExtras(Structure structure){
		Booking aBooking = null;
		Extra anExtra = null;
		
		anExtra = new Extra();
		aBooking = structure.getBookings().get(0);
		anExtra.setId(structure.nextKey());
		anExtra.setName("Breakfast");
		anExtra.setPrice(10.0);
		anExtra.setResourcePriceType("per Room");
		anExtra.setTimePriceType("per Night");
		aBooking.addExtra(anExtra);
		structure.addExtra(anExtra);
		
		anExtra = new Extra();
		aBooking = structure.getBookings().get(0);
		anExtra.setId(structure.nextKey());
		anExtra.setName("Parking");
		anExtra.setPrice(15.0);
		anExtra.setResourcePriceType("per Room");
		anExtra.setTimePriceType("per Night");
		aBooking.addExtra(anExtra);
		structure.addExtra(anExtra);
	}
	
	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
