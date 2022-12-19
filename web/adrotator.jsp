

<jsp:useBean id = "rotator" scope= "session" class = "Servelets.Rotator"/>

    <% rotator.nextAd(); %>
    
<!--    <p> Advertisement: <%= rotator.getNameAd() %></p>-->
    <div>
        <p><%= rotator.getNameAd()%></p>
        <a href = "<jsp:getProperty name= "rotator" property= "link" />" target="_blank">
            
            <img src= "<jsp:getProperty name= "rotator" property= "image" />" alt = "advertisement" class="img-fluid"/>
        </a> 
    </div>