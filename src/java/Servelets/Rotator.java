package Servelets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

public class Rotator {
    private String images[] = {
        "images/aws.png",
        "images/azure.png",
        "images/cloud-logo.png"
    };
    
    private String links[] = {
        "https://aws.azamon.com/",
        "https://azure.microsoft.com/pt-br/",
        "https://cloud.google.com/"
    };
    
    private int selectedIndex = 0;
    
    public String getImage(){
        return images[ selectedIndex];
    };
    
    public String getNameAd(){
        String amazon = "Amazon";
        String azure = "Azure";
        String cloud = "Cloud";
        
        if(selectedIndex == 0){
            return amazon;
        }
        else if(selectedIndex == 1){
            return azure;
        }
        else{
            return cloud;
        }
    };
    
    public String getLink(){
        return links[ selectedIndex ];
    };
    
    public void nextAd(){
        selectedIndex = (selectedIndex + 1) % images.length;
    }
}
