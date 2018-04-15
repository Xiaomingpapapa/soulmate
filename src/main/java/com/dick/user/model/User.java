package com.dick.user.model;

public class User {
    private int user_id;
    private String user_name;
    private String password;
    private boolean is_finished_testing;

    public int getUser_id() {
        return user_id;
    }
    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    public String getUser_name() {
        return user_name;
    }
    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public boolean isIs_finished_testing() {
        return is_finished_testing;
    }
    public void setIs_finished_testing(boolean is_finished_testing) {
        this.is_finished_testing = is_finished_testing;
    }
}
