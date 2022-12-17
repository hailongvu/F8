/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;

/**
 *
 * @author Admin
 */
public class Chapter {

    private int chapter_id;
    private String content;
    private int course_Id;
    private List<Lesson> lessons;

    public Chapter(int chapter_id, String content, int course_Id, List<Lesson> lessons) {
        this.chapter_id = chapter_id;
        this.content = content;
        this.course_Id = course_Id;
        this.lessons = lessons;
    }

    public List<Lesson> getLessons() {
        return lessons;
    }

    public void setLessons(List<Lesson> lessons) {
        this.lessons = lessons;
    }

    public Chapter() {
    }

    public Chapter(int chapter_id, String content, int course_Id) {
        this.chapter_id = chapter_id;
        this.content = content;
        this.course_Id = course_Id;
    }

    public int getChapter_id() {
        return chapter_id;
    }

    public void setChapter_id(int chapter_id) {
        this.chapter_id = chapter_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCourse_Id() {
        return course_Id;
    }

    public void setCourse_Id(int course_Id) {
        this.course_Id = course_Id;
    }

    @Override
    public String toString() {
        return "Chapter{" + "chapter_id=" + chapter_id + ", content=" + content + ", course_Id=" + course_Id + ", lessons=" + lessons + '}';
    }

   

}
