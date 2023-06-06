<html>
  <head>
    
      <%
        // ###############################
        // Create two int variables -- iCols and iRows -- and fill them with params passed in called "colcount" and "rowcount".
        // You'll have to convert those incoming strings to ints.
        // ###############################

        int iCols = Integer.parseInt(request.getParameter("colcount"));
        int iRows = Integer.parseInt(request.getParameter("rowcount"));
        
        
      %>

    <style>
      body {
        font-family: "Arial", arial, ans-serif;
      }
    </style>

    <script src="js/jquery.min.js"></script>
    <script src="js/webservice_client.js"></script>
    <script src="js/dronesim.js"></script>

    <script>

      setTiles(<%=iCols%>, <%=iRows%>);

    </script>

  </head>

  <!--<body onload="changeColor();">-->
  <body>

    <br />
    <h2 style="text-align:center;background-color:gray;color:white">DRONE RECON</h2>
    Area ID: <span id="area_id" type="text"><%=request.getParameter("area_id")%></span>
    <br />
    <button onclick="beginDroneSim();">Begin Drone Sim</button>
    <button onclick="stopDroneSim();">Stop Drone Sim</button>

    <br /><br />

    <table style="width:100%;border-style:solid;
      text-align:center;vertical-align:middle;font-weight:bold;font-size:large">

      <%
      // ###############################
      // Create first line of for loop here that loops iRows times.
      // ###############################
      for(int y = 0; y < iRows; y++) {

          %>
          <tr>
          <%
          // ###############################
          // Create first line of for loop here that loops iCols times.
          // ###############################
          for(int x = 0; x < iCols; x++) {

            %>
            
              <td id="<%="x" + x + "-y" + y%>" style="height:100;background-color:white">
                
                <div id="<%="div-x" + x + "-y" + y%>" style="width: 100px; height: 1px; position: relative;">
                </div>
                <%="X:" + x + ",Y:" + y%>
              </td>

            <%
          }

          %>
          </tr>
          <%
        }
        %>
    </table>
  </body>
</html>