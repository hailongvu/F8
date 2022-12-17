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
public class CourseChapterLesson {
    private int course_id;
    private String course_name;
    private String description;
    private String image;
    private int lesson_id;
    private String content;
    private int chapter_id;
    private String title;
    private String link_video;

    public CourseChapterLesson() {
    }

    public CourseChapterLesson(int course_id, String course_name, String description, String image, int lesson_id, String content, int chapter_id, String title, String link_video) {
        this.course_id = course_id;
        this.course_name = course_name;
        this.description = description;
        this.image = image;
        this.lesson_id = lesson_id;
        this.content = content;
        this.chapter_id = chapter_id;
        this.title = title;
        this.link_video = link_video;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getLesson_id() {
        return lesson_id;
    }

    public void setLesson_id(int lesson_id) {
        this.lesson_id = lesson_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getChapter_id() {
        return chapter_id;
    }

    public void setChapter_id(int chapter_id) {
        this.chapter_id = chapter_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLink_video() {
        return link_video;
    }

    public void setLink_video(String link_video) {
        this.link_video = link_video;
    }

    @Override
    public String toString() {
        return "CourseChapterLesson{" + "course_id=" + course_id + ", course_name=" + course_name + ", description=" + description + ", image=" + image + ", lesson_id=" + lesson_id + ", content=" + content + ", chapter_id=" + chapter_id + ", title=" + title + ", link_video=" + link_video + '}';
    }
    
}
