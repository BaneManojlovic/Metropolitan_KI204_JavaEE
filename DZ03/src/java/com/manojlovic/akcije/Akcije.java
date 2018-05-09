/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manojlovic.akcije;

/**
 *
 * @author manojlovic
 */
public class Akcije {
    
    public String name;
    public double price;

    public Akcije() {
    }

    public Akcije(String name, double price) {
        this.name = name;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public double proracun(int broj, double cena){
        double rez=0;
        
        rez = broj*cena;
        //System.out.println(rez);
        return rez;
    }
}
