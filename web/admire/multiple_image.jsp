<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head><title>Upload page</title></head>  
<script type="text/javascript">  
  
function dothat() {  
   var div = document.getElementById('fileuploads');  
    var field = div.getElementsByTagName('input')[0];  
      
    div.appendChild(document.createElement("br")); 
    
    div.appendChild(field.cloneNode(false)); 
    field.value=0;
}  
  
</script>  
</p> <p><body>  
<td align="center"><b>Multi page file Upload</td>  
<form action="../ImageServlet" method="post" enctype="multipart/form-data" name="form1" id="form1">  
     
   <table border="2" align="left">  
       <tr>  
                 
           </tr>  
       <tr>  
   <div id="fileuploads" align="left">  
     
        <input type="file" name="fileField" id="fileField" />  
        </div>  
    </tr><td align="left">  
      
    <input type="button" name="addmore" id="addmore" value="Add More" onClick="dothat();" />  
    <input type="submit" name="button" id="button" value="Submit" />  
  
                   </td>  
         
             
                   </table>  
          
</form>  
</body>  
</html>  