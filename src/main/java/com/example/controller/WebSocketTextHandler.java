package com.example.controller;

import com.example.config.CustomUser;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.adapter.standard.StandardWebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.nio.file.attribute.UserPrincipal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class WebSocketTextHandler extends TextWebSocketHandler {

    private List<WebSocketSession> sessionList = new ArrayList<>();

    public WebSocketTextHandler() {
        System.out.println("open websocket");
    }

    //connect
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        super.afterConnectionEstablished(session);

        //메시지 발송을 위해 세션목록에 추가한다.
        sessionList.add(session);
    }

    //send message
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

        String payloadMessage = message.getPayload();
        for (WebSocketSession client : sessionList) {
            if(!client.getId().equals(session.getId())){
                client.sendMessage(new TextMessage("상대방 : " + payloadMessage));
            }
        }
    }

    //disconnect event
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        super.afterConnectionClosed(session, status);

        //메시지 발송 제외를 위해 세션목록에서 삭제한다.
        sessionList.remove(session);

        for (WebSocketSession client : sessionList) {
            if(!client.getId().equals(session.getId())){
                client.sendMessage(new TextMessage("상대방이 대화방을 나갔습니다."));
            }
        }

        System.out.println("list" + sessionList.size());
    }

}
