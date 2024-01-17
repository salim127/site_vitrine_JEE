package modal;

import java.io.Serializable;

public class Contact implements Serializable {
    private int id; // Nouvelle propriété pour l'ID
    private String name;
    private String email;
    private String phone;
    private String message;

    // Nouveau getter et setter pour l'ID
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Les autres méthodes et propriétés restent inchangées

    // Constructeurs, getters, setters

    @Override
    public String toString() {
        return "Contact [id=" + id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", message=" + message + "]";
    }

    public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Contact(int id, String name, String email, String phone, String message) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.message = message;
    }

    public Contact(String name, String email, String phone, String message) {
        super();
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.message = message;
    }

    public Contact() {
        super();
    }
}
