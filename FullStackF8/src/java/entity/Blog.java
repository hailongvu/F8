/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;



/**
 *
 * @author ADMIN
 */
public class Blog {
    private int id;
    private String title;
    private String content;
    private String comment;
    private int userId;
    private Date time;
    private String excerpt;
    private String image;
    private int status;
    private int category_id;
    private int tag_id;
    private int is_display;
    private String userName;
    private String userAvatar;
    

    public Blog() {
    }

    public Blog(int id, String title, String content, String comment, int userId, Date time, String excerpt, String image, int status, int category_id, int tag_id, int is_display, String userName, String userAvatar) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.comment = comment;
        this.userId = userId;
        this.time = time;
        this.excerpt = excerpt;
        this.image = image;
        this.status = status;
        this.category_id = category_id;
        this.tag_id = tag_id;
        this.userName = userName;
        this.userAvatar = userAvatar;
        this.is_display = is_display;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getExcerpt() {
        return excerpt;
    }

    public void setExcerpt(String excerpt) {
        this.excerpt = excerpt;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getTag_id() {
        return tag_id;
    }

    public void setTag_id(int tag_id) {
        this.tag_id = tag_id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
    }

    public int getIs_display() {
        return is_display;
    }

    public void setIs_display(int is_display) {
        this.is_display = is_display;
    }

    @Override
    public String toString() {
        return "Blog{" + "id=" + id + ", title=" + title + ", content=" + content + ", comment=" + comment + ", userId=" + userId + ", time=" + time + ", excerpt=" + excerpt + ", image=" + image + ", status=" + status + ", category_id=" + category_id + ", tag_id=" + tag_id + ", userName=" + userName + ", userAvatar=" + userAvatar + ", is_display=" + is_display + '}';
    }

}