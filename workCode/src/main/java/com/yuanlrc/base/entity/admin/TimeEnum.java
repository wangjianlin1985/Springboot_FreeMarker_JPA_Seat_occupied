package com.yuanlrc.base.entity.admin;

public enum TimeEnum {
    AM(1,"上午"),//上午
    PM(2,"下午"),//下午
    ;

    private int code;
    private String name;

    TimeEnum(int code, String name) {
        this.code = code;
        this.name = name;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
