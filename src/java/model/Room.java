
package model;

public class Room {
    private int id;
    private String beds;
    private double price;

    public Room() {
    }

    public Room(int id, String beds, double price) {
        this.id = id;
        this.beds = beds;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBeds() {
        return beds;
    }

    public void setBeds(String beds) {
        this.beds = beds;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    
}
