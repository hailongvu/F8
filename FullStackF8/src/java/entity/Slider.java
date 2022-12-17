/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author ADMIN
 */
public class Slider {
    private int sliderId;
    private String slider;

    public Slider() {
    }

    public Slider(int sliderId, String slider) {
        this.sliderId = sliderId;
        this.slider = slider;
    }

    public int getSliderId() {
        return sliderId;
    }

    public void setSliderId(int sliderId) {
        this.sliderId = sliderId;
    }

    public String getSlider() {
        return slider;
    }

    public void setSlider(String slider) {
        this.slider = slider;
    }

    @Override
    public String toString() {
        return "Slider{" + "sliderId=" + sliderId + ", slider=" + slider + '}';
    }

    
    
    
}
