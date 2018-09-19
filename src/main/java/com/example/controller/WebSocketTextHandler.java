package com.example.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.util.ArrayList;
import java.util.List;

@Component
public class WebSocketTextHandler extends TextWebSocketHandler {

    private List<WebSocketSession> sessionList;

    public WebSocketTextHandler() {
        sessionList = new ArrayList<>();
    }

    //connect
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        super.afterConnectionEstablished(session);

        //메시지 발송을 위해 세션목록에 추가한다.
        sessionList.add(session);

        sessionList.stream().forEach(client -> {
            try {
                if(!client.getId().equals(session.getId())) {
                    client.sendMessage(new TextMessage("상대방이 입장하셨습니다."));
                }
            }catch (Exception e){
                System.err.println(e.getMessage());
            }
        });
    }

    //send message
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) {

        String payloadMessage = message.getPayload();

        sessionList.stream().forEach(client -> {
            try {
                if(!client.getId().equals(session.getId())){
                    client.sendMessage(new TextMessage("상대방 : " + payloadMessage));
                }
            }catch (Exception e){
                System.err.println(e.getMessage());
            }
        });
    }

    //disconnect event
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        super.afterConnectionClosed(session, status);

        //메시지 발송 제외를 위해 세션목록에서 삭제한다.
        sessionList.remove(session);

        sessionList.stream().forEach(client -> {
            try {
                client.sendMessage(new TextMessage("상대방이 대화방은 나갔습니다."));
            }catch (Exception e){
                System.err.println(e.getMessage());
            }
        });

    }

}
