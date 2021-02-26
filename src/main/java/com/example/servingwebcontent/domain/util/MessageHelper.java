package com.example.servingwebcontent.domain.util;

import com.example.servingwebcontent.domain.User;

public abstract class MessageHelper {
    public static String getAuthorName(User author) {
        return author == null ? "none" : author.getUsername();
    }
}
