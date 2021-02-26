package com.example.servingwebcontent.service;

import com.example.servingwebcontent.domain.Message;
import com.example.servingwebcontent.domain.User;
import com.example.servingwebcontent.domain.dto.MessageDto;
import com.example.servingwebcontent.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;

@Service
public class MessageService {
    @Autowired
    private MessageRepo messageRepo;

    @Autowired
    private EntityManager em;

    public Page<MessageDto> messageList(Pageable pageable, String filter, User user) {
        if (filter == null || "".equals(filter)) {
            return messageRepo.findAll(pageable, user);
        } else {
            return messageRepo.findByTag(filter, pageable, user);
        }
    }

    public Page<MessageDto> messageListForUser(Pageable pageable, User currentUser, User author) {
        return messageRepo.findByUser(pageable, author, currentUser);
    }

    public void save(Message message) {
        messageRepo.save(message);
    }

    public Page<MessageDto> findAll(Pageable pageable, User user) {
        return messageRepo.findAll(pageable, user);
    }
}
