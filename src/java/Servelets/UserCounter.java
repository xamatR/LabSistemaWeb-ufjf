/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
/**
 *
 * @author mathe
 */
@WebListener
public class UserCounter implements HttpSessionListener{

   private static int count;

    public UserCounter() {
        count =0;
    }
   
   @Override
    public void sessionCreated(HttpSessionEvent event) {
     count++;
    }

   @Override
    public void sessionDestroyed(HttpSessionEvent event) {
        if(count > 0){
           count--;
        }
    }

    public static int getCount() {
        return count;
    }

    
    
    
    
    
}
