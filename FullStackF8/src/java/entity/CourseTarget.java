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
public class CourseTarget {
    private int courseTargerId;
    private String target;
    private String vid_intro;
    private String course_name;
    private String des;
    private String image;
    private String request;

    public CourseTarget() {
    }

    public CourseTarget(int courseTargerId, String target, String vid_intro, String course_name, String des, String image, String request) {
        this.courseTargerId = courseTargerId;
        this.target = target;
        this.vid_intro = vid_intro;
        this.course_name = course_name;
        this.des = des;
        this.image = image;
        this.request = request;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    

    public int getCourseTargerId() {
        return courseTargerId;
    }

    public void setCourseTargerId(int courseTargerId) {
        this.courseTargerId = courseTargerId;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getVid_intro() {
        return vid_intro;
    }

    public void setVid_intro(String vid_intro) {
        this.vid_intro = vid_intro;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "CourseTarget{" + "courseTargerId=" + courseTargerId + ", target=" + target + ", vid_intro=" + vid_intro + ", course_name=" + course_name + ", des=" + des + ", image=" + image + ", request=" + request + '}';
    }

   
    

    

    
    
}
