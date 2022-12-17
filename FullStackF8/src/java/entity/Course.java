/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;

/**
 *
 * @author ADMIN
 */
public class Course {
    private int course_Id;
    private String course_Name;
    private String price;
    private String des;
    private int enroll_count;
    private String image;
    private String sale_price;
    private int status;

    public Course() {
    }

    public Course(int course_Id, String course_Name, String price, String des, int enroll_count, String image, String sale_price, int status) {
        this.course_Id = course_Id;
        this.course_Name = course_Name;
        this.price = price;
        this.des = des;
        this.enroll_count = enroll_count;
        this.image = image;
        this.sale_price = sale_price;
        this.status = status;
    }

    public int getCourse_Id() {
        return course_Id;
    }

    public void setCourse_Id(int course_Id) {
        this.course_Id = course_Id;
    }

    public String getCourse_Name() {
        return course_Name;
    }

    public void setCourse_Name(String course_Name) {
        this.course_Name = course_Name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public int getEnroll_count() {
        return enroll_count;
    }

    public void setEnroll_count(int enroll_count) {
        this.enroll_count = enroll_count;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSale_price() {
        return sale_price;
    }

    public void setSale_price(String sale_price) {
        this.sale_price = sale_price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Course{" + "course_Id=" + course_Id + ", course_Name=" + course_Name + ", price=" + price + ", des=" + des + ", enroll_count=" + enroll_count + ", image=" + image + ", sale_price=" + sale_price + ", status=" + status + '}';
    }
    
}