package com.dick.socketserver;

import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;


@ServerEndpoint("/websocket")
public class WebsocketServer {
    private static int onlineCount = 0;

    private static CopyOnWriteArraySet<WebsocketServer> webSocketSet = new CopyOnWriteArraySet<WebsocketServer>();

    private Session session;

    @OnOpen
    public void onOpen(Session session){
        this.session = session;
        webSocketSet.add(this);     //����set��
        addOnlineCount();           //��������1
        System.out.println("�������Ӽ��룡��ǰ��������Ϊ" + getOnlineCount());
    }

    /**
     * ���ӹرյ��õķ���
     */
    @OnClose
    public void onClose(){
        webSocketSet.remove(this);  //��set��ɾ��
        subOnlineCount();           //��������1
        System.out.println("��һ���ӹرգ���ǰ��������Ϊ" + getOnlineCount());
    }

    /**
     * �յ��ͻ�����Ϣ����õķ���
     * @param message �ͻ��˷��͹�������Ϣ
     * @param session ��ѡ�Ĳ���
     */
    @OnMessage
    public void onMessage(String message, Session session) {
        System.out.println("���Կͻ��˵���Ϣ:" + message);
        //Ⱥ����Ϣ
        for(WebsocketServer item: webSocketSet){
            try {
                item.sendMessage(message);
            } catch (IOException e) {
                e.printStackTrace();
                continue;
            }
        }
    }

    /**
     * ��������ʱ����
     * @param session
     * @param error
     */
    @OnError
    public void onError(Session session, Throwable error){
        System.out.println("��������");
        error.printStackTrace();
    }

    /**
     * ������������漸��������һ����û����ע�⣬�Ǹ����Լ���Ҫ��ӵķ�����
     * @param message
     * @throws IOException
     */
    public void sendMessage(String message) throws IOException{
        this.session.getBasicRemote().sendText(message);
        //this.session.getAsyncRemote().sendText(message);
    }

    public static synchronized int getOnlineCount() {
        return onlineCount;
    }

    public static synchronized void addOnlineCount() {
        WebsocketServer.onlineCount++;
    }

    public static synchronized void subOnlineCount() {
        WebsocketServer.onlineCount--;
    }
}
