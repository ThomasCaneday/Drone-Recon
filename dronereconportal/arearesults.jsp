<%@ page import="com.dronerecon.ws.AreaGridTile" %>
<%@ page import="com.dronerecon.ws.DBManager" %>
<%@ page import="java.util.ArrayList" %>

<html>

<body>
    <a href="areasearch.jsp">back to Submission page</a>
	<br>
	<br>
    <table>

        <tr>
            <td>
                <% String areaID = request.getParameter("areaID"); %>
                <% DBManager oDBManager = new DBManager(); %>
                <% oDBManager.DBLocation = System.getProperty("catalina.base") + "\\webapps\\dronereconportal\\db\\" + oDBManager.DBLocation; %>
                <% ArrayList<AreaGridTile> arrayL = oDBManager.readAreaGridTiles(areaID); %>
                <% 
                    int highestR = 0;
                    int highestG = 0;
                    int highestRX = 0;
                    int highestRY = 0;
                    int highestGX = 0;
                    int highestGY = 0;
                    for(int i = 0; i < arrayL.size(); i++) {
                        if(arrayL.get(i).r > highestR) {
                            highestR = arrayL.get(i).r;
                            highestRX = arrayL.get(i).x;
                            highestRY = arrayL.get(i).y;
                        }

                        if(arrayL.get(i).g > highestG) {
                            highestG = arrayL.get(i).g;
                            highestGX = arrayL.get(i).x;
                            highestGY = arrayL.get(i).y;
                        }
                    }
                    %>
                    <%="Highest R (x,y): " + highestRX + ", " + highestRY%>
                    <%="Highest G (x,y): " + highestGX + ", " + highestGY%>
                    <!-- System.out.println(highestG);
                    System.out.println(highestR);
                    System.out.println(); -->
                
            </td>
        </tr>

    

</table>
</body>
</html>