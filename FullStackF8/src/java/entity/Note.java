/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author ADMIN
 */
public class Note {
    private int lesson_note_id;
    private String note;
    private int user_id;
    private String title;
    private Date time;
    private String name;
    private String avatar;

    public Note() {
    }

    public Note(int lesson_note_id, String note, int user_id, String title, Date time, String name, String avatar) {
        this.lesson_note_id = lesson_note_id;
        this.note = note;
        this.user_id = user_id;
        this.title = title;
        this.time = time;
        this.name = name;
        this.avatar = avatar;
    }

    public int getLesson_note_id() {
        return lesson_note_id;
    }

    public void setLesson_note_id(int lesson_note_id) {
        this.lesson_note_id = lesson_note_id;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "Note{" + "lesson_note_id=" + lesson_note_id + ", note=" + note + ", user_id=" + user_id + ", title=" + title + ", time=" + time + ", name=" + name + ", avatar=" + avatar + '}';
    }

   

   
    
    
}
