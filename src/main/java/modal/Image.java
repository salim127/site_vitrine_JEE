package modal;

public class Image {
    private int id;
    private String nom;
    private String description;
    private String cheminImage;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCheminImage() {
        return cheminImage;
    }

    public void setCheminImage(String cheminImage) {
        this.cheminImage = cheminImage;
    }

    @Override
    public String toString() {
        return "Image [id=" + id + ", nom=" + nom + ", description=" + description + ", cheminImage=" + cheminImage
                + "]";
    }

    // Constructeur par défaut sans paramètres
    public Image() {
        super();
    }

    // Constructeur avec paramètres
    public Image(int id) {
        super();
      
    }
    public Image(String nom, String description, String cheminImage) {
        this.nom = nom;
        this.description = description;
        this.cheminImage = cheminImage;
    }
    public Image(int id, String nom, String description, String cheminImage) {
        this.id = id;
        this.nom = nom;
        this.description = description;
        this.cheminImage = cheminImage;
    }
}
