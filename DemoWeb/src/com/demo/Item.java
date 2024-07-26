package com.demo;

public class Item {
    private String itemName;
    private double itemPrice;
    private String imageUrl;
    private String description;

    public Item(String itemName, double itemPrice, String imageUrl, String description) {
        this.itemName = itemName;
        this.itemPrice = itemPrice;
        this.imageUrl = imageUrl;
        this.description = description;
    }

    public String getItemName() {
        return itemName;
    }

    public double getItemPrice() {
        return itemPrice;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public String getDescription() {
        return description;
    }
}
