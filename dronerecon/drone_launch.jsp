<html>

  <body>

      <br />
      <h2 style="text-align:center;background-color:gray;color:white">DRONE RECON</h2>

      <!-- ###################################################
      Create a form here where the action is set to "drone_sim.jsp".
      Set a text input with name as "area_id".
      Set a text input with name as "colcount".
      Set a text input with name as "rowcount".
      Create a button with text similar to this: "Create Area Grid".
      ################################################### -->
      <form action="drone_sim.jsp">
      	<table>
      		<tr>
      			<td>
      				<p>Area ID</p>
        			<input type="text" name="area_id" />
        		</td>
        	</tr>
        	<tr>
        		<td>
        			<p>Columns</p>
        			<input type="text" name="colcount" />
        		</td>
        	</tr>
        	<tr>
        		<td>
        			<p>Rows</p>
        			<input type="text" name="rowcount" />
        		</td>
        	</tr>
        	<tr>
        		<td>
        			<input type="submit" value="Create Area Grid" />
        		</td>
        	</tr>
        </table>
      </form>
      
  </body>
</html>