/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Context.DbContext;
import entity.Chapter;
import entity.CourseChapterLesson;
import entity.CourseTarget;
import entity.Lesson;
import entity.LinkSocial;
import entity.Note;
import entity.Slider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class LearnDao extends DbContext {

    Connection con = null;
    PreparedStatement st = null;
    ResultSet rs = null;

    public List<CourseTarget> getCourseTargetByID(int course_Id) {
        List<CourseTarget> list = new ArrayList<>();
        String sql = "SELECT a.course_target_id, a.target, a.vid_intro, b.course_name, b.description, b.image, a.request FROM swp.course_target a join course b on a.course_id = b.course_id where a.course_id =?;";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setInt(1, course_Id);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new CourseTarget(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Chapter> getChapterByCourseId(int course_Id) {
        List<Chapter> list = new ArrayList<>();
        String sql = "SELECT a.chapter_id, a.content, b.course_Id FROM chapter a join course_chapter b on a.chapter_id = b.chapter_id where b.course_id =?;";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setInt(1, course_Id);
            rs = st.executeQuery();
            while (rs.next()) {
                int chapterId = rs.getInt(1);
                String content = rs.getString(2);
                int courseId = rs.getInt(3);

                List<Lesson> lessons = new ArrayList<>();
//                lessons = getLessonByChapterId(chapterId);

//                String sqllessons = "SELECT a.lesson_id, a.lesson_note_id, a.title, a.status, a.type, a.question_id, a.link_video FROM lesson a join chapter_lesson b on a.lesson_id = b.lesson_id where b.chapter_id =?;";
//
//                con = getConnection();
//                st1 = con.prepareStatement(sqllessons);
//                st.setInt(1, course_Id);
//                rs = st.executeQuery();
//                while (rs.next()) {
//                    lessons.add(new Lesson(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7)));
//                }
                Chapter c = new Chapter();
                c.setChapter_id(chapterId);
                c.setContent(content);
                c.setCourse_Id(courseId);
                c.setLessons(lessons);

                list.add(c);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Note> getNoteList() {
        List<Note> list = new ArrayList<>();
        String sql = "SELECT a.lesson_note_id,a.note,a.user_id, c.title ,a.time, b.name, b.avatar  FROM lesson_note a join user b  on a.user_id = b.user_id  join lesson c on a.lesson_id = c.lesson_id order by time asc;\n"
                + " ";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Note(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getDate(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<LinkSocial> getLinkSocial() {
        List<LinkSocial> list = new ArrayList<>();
        String sql = "Select * from link_social";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new LinkSocial(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteNote(String lesson_note_id) {
        String sql = "delete from lesson_note where lesson_note_id = ?";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setString(1, lesson_note_id);
            st.executeUpdate();

        } catch (Exception e) {
        }
    }

    public List<Lesson> getLessonByChapterId(int course_Id) {
        List<Lesson> list = new ArrayList<>();
        String sql = "SELECT a.lesson_note_id,a.lesson_id, a.lesson_note_id, a.title, a.status, a.type, a.question_id, a.link_video FROM lesson a join chapter_lesson b on a.lesson_id = b.lesson_id where b.chapter_id =?;";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setInt(1, course_Id);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Lesson(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7)));
            }
            return list;
        } catch (Exception e) {
        }

        return null;

    }

    public List<Lesson> getLe(int course_Id) {
        List<Lesson> list = new ArrayList<>();
        String sql = "SELECT a.lesson_id, a.lesson_note_id, a.title, a.status, a.type, a.question_id, a.link_video FROM lesson a join chapter_lesson b on a.lesson_id = b.lesson_id where b.course_id =?;";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setInt(1, course_Id);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Lesson(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7)));
            }
            return list;
        } catch (Exception e) {
        }

        return null;

    }
    public List<CourseChapterLesson> getCoLeCh(int course_Id) {
        List<CourseChapterLesson> list = new ArrayList<>();
        String sql = "SELECT b.course_Id, e.course_name, e.description, e.image, c.lesson_id,a.content, a.chapter_id, d.title, d.link_video "
                + "FROM chapter a join course_chapter b on a.chapter_id = b.chapter_id join chapter_lesson c on c.chapter_id = b.chapter_id join lesson d on d.lesson_id = c.lesson_id join course e on e.course_id = b.course_id "
                + "where b.course_id = ?";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setInt(1, course_Id);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new CourseChapterLesson(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9)));
            }
            return list;
        } catch (Exception e) {
        }

        return null;

    }

    public void addNote(String note, String user_id, String lesson_id, String time) {
        String sql = "insert into lesson_note (note, user_id, lesson_id, time) values (?,?,?,?)";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setString(1, note);
            st.setString(2, user_id);
            st.setString(3, lesson_id);
            st.setString(4, time);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void updateNote(String note, String lesson_note_id) {
        String sql = "update lesson_note set note = ? where lesson_note_id = ?";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setString(1, note);
            st.setString(2, lesson_note_id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Note getNoteById(String leson_note_id) {
        String sql = "SELECT a.lesson_note_id, a.note,a.user_id, c.title ,a.time, b.name, b.avatar  FROM lesson_note a join user b  on a.user_id = b.user_id  join lesson c on a.lesson_id = c.lesson_id where a.lesson_note_id = ?\n" +
" ";
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setString(1, leson_note_id);
            rs = st.executeQuery();
            while(rs.next()){
                return new Note(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(5), rs.getDate(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
//    public static void main(String[] args) {
//        LocalDate currentdate = LocalDate.now();
//        LearnDao dao = new LearnDao();
//        String a = currentdate.toString();
//        dao.addNote("em cu lam sao ay", "1", "1", a);
//        
//    }
    public static void main(String[] args) {
        LearnDao dao = new LearnDao();
        List<CourseChapterLesson> list = dao.getCoLeCh(1);
        for (CourseChapterLesson o : list) {
            System.out.println(o);
        }
        
    }
}
