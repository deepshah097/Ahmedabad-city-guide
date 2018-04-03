<%@page import="Manager.AreaManager"%>
<%@page import="Beans.AreaBean"%>
<%@page import="Beans.AreaBean"%>
<%@page import="java.util.List"%>
<%@page import="Beans.CategoryBean"%>
<%@page import="Manager.CategoryManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Business Registration </title>
<script src="js/jquery.min.js"></script>
<script src="js/business_validation.js">
    </script>
    <script src="js/multiple_img1.js">
    </script>
    
<script type="text/javascript">
    function getSubCategory()
        {
          //  alert("function called");
           var cid=document.getElementById("Category").value;
           // alert(cid);
            var options="<option value='0'>----Select Sub Category----</option>";
           //  alert(options);
          $.ajax({
              
               url:'ViewSubCategoryServlet',
                type:'POST',
                data:{Category:cid},
                success:function(data1)
                {
             //      alert("success");
                    var subcategory=data1.split(",");
                    for(var i=0;i<subcategory.length;i++)
                    {
                        var subcat=subcategory[i].split(":");
                        options+="<option value='"+subcat[1]+"' name='"+subcat[2]+"'>"+subcat[2]+"</option>";
                        
                    }
                    var sub=document.getElementById("subcat1");
                     // alert("function called::::::::"+sub.value);
          
                    sub.innerHTML=options;
                   }
                
            })
        }
     
</script>



<script>
    function div_hide()
    {
        //alert("div_hide");
        $("#Classes").hide();
        $("#smpl").show();
        $("#hostel").hide(); 
        $("#Cafe").hide(); 
        $("#Atm1").hide();
        $("#Restaurant").hide();
        $("#Clinic").hide();
        $("#Hospital").hide();
        $("#College").hide();
        $("#Gym").hide(); 
        $("#Doctor").hide(); 
        $("#Bakery").hide();
        $("#Saloon").hide();
         $("#Hotel").hide();
         $("#School").hide();
         $("#Service").hide();
         $("#Electronics").hide();
    }
    function div_show()
    {
        var sub=document.getElementById("subcat1").value;
            if(sub=="12"){
                $("#Atm1").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                   $("#Classes").show();
                   $("#Cafe").hide(); 
                   $("#College").hide();
                   $("#Hospital").hide();
                   $("#Doctor").hide(); 
                   $("#Saloon").hide();
                   $("#School").hide();
                $("#Hotel").hide();
                   $("#Gym").hide(); 
                   $("#Service").hide();
                   $("#smpl").hide();
                    $("#Bakery").hide();
                    $("#Clinic").hide();
            }
            else if(sub==""){
                $("#Atm1").show();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                   $("#Classes").hide();
                   $("#Cafe").hide(); 
                   $("#College").hide();
                   $("#Hospital").hide();
                   $("#Doctor").hide(); 
                   $("#Saloon").hide();
                   $("#School").hide();
                $("#Hotel").hide();
                   $("#Gym").hide(); 
                   $("#smpl").hide();
                   $("#Service").hide();
                    $("#Bakery").hide();
                    $("#Clinic").hide();
            }
            else if(sub=="20"){
                $("#Atm1").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                   $("#Classes").hide();
                   $("#Cafe").hide(); 
                   $("#College").hide();
                   $("#Hospital").hide();
                   $("#Doctor").hide(); 
                   $("#Saloon").hide();
                   $("#School").hide();
                $("#Hotel").hide();
                   $("#Gym").hide(); 
                   $("#Service").show();
                   $("#smpl").hide();
                    $("#Bakery").hide();
                    $("#Clinic").hide();
            }
            else if(sub=="21"){
                $("#Atm1").hide(); 
                   $("#Classes").hide();
                   $("#Restaurant").hide();
                   $("#Cafe").hide();
                   $("#Gym").hide(); 
                   $("#College").hide();
                   $("#Hospital").hide();
                   $("#Service").hide();
                   $("#Saloon").hide();
                   $("#School").hide();
                $("#Electronics").hide();
                   $("#Doctor").show();
                    $("#Bakery").hide();
                    $("#smpl").hide();
                    $("#Hotel").hide();
                    $("#Clinic").hide();
            }
            else if(sub=="28"){
                $("#Atm1").hide(); 
                   $("#Classes").hide();
                   $("#Restaurant").hide();
                   $("#Cafe").hide();
                   $("#Gym").hide(); 
                   $("#College").hide();
                   $("#Hospital").hide();
                   $("#Service").hide();
                   $("#Saloon").hide();
                   $("#School").show();
                $("#Electronics").hide();
                   $("#Doctor").hide();
                    $("#Bakery").hide();
                    $("#Hotel").hide();
                    $("#smpl").hide();
                    $("#Clinic").hide();
            }
            else if(sub=="23"){
                $("#Atm1").hide();
                   $("#Classes").hide();
                   $("#Restaurant").hide();
                   $("#Cafe").hide(); 
                   $("#Hospital").hide();
                   $("#Gym").hide(); 
                   $("#Electronics").hide();
                   $("#Saloon").hide();
                $("#College").hide();
                    $("#Bakery").hide();
                    $("#Hotel").hide();
                    $("#School").hide();
                    $("#Service").hide();
                    $("#smpl").hide();
                    $("#Clinic").show();
                    $("#Doctor").hide(); 
            }
            else if(sub=="18")
            {
                $("#Atm1").hide();
                $("#Hospital").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                $("#Cafe").hide();
                $("#Gym").hide(); 
                $("#Service").hide();
                $("#College").show();
                 $("#Bakery").hide();
                $("#Saloon").hide();
                 $("#Hotel").hide();
                 $("#School").hide();
                 $("#Doctor").hide(); 
                 $("#smpl").hide();
                 $("#Clinic").hide();
            }
            else if(sub=="27")
            {
                $("#Atm1").hide();
                $("#Hospital").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                $("#Cafe").hide();
                $("#Gym").hide(); 
                $("#College").hide();
                 $("#Bakery").hide();
                $("#Saloon").show();
                 $("#Hotel").hide();
                 $("#School").hide();
                 $("#Doctor").hide(); 
                 $("#Clinic").hide();
                 $("#Service").hide();
                 $("#smpl").hide();
            }
            else if(sub=="15")
            {
                $("#Atm1").hide();
                $("#Hospital").hide();
                $("#Classes").hide();
                $("#Restaurant").show();
                $("#Electronics").hide();
                $("#Cafe").hide();
                $("#Gym").hide(); 
                $("#College").hide();
                 $("#Bakery").hide();
                 $("#Hotel").hide();
                $("#Saloon").hide();
                $("#Service").hide();
                $("#School").hide();
                 $("#Doctor").hide(); 
                 $("#smpl").hide();
                 $("#Clinic").hide();
            }
            else if(sub=="17")
            {
                $("#Atm1").hide();
                $("#Gym").hide(); 
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                $("#College").hide();
                $("#Hospital").hide();
                 $("#Bakery").show();
                $("#Saloon").hide();
                 $("#Cafe").hide(); 
                 $("#Clinic").hide();
                 $("#Hotel").hide();
                 $("#School").hide();
                 $("#Doctor").hide();
                 $("#smpl").hide();
                 $("#Service").hide();
            }
            else if(sub=="14")
            {
                $("#Atm1").hide();
                $("#Gym").hide(); 
                $("#Restaurant").hide();
                $("#Classes").hide();
                $("#Electronics").hide();
                $("#College").hide();
                $("#Hospital").hide();
                 $("#Bakery").hide();
                 $("#Cafe").hide(); 
                 $("#Clinic").hide();
                $("#Saloon").hide();
                $("#School").hide();
                $("#Service").hide();
                 $("#Hotel").show();
                 $("#smpl").hide();
                 $("#Doctor").hide(); 
            }
            else if(sub=="16")
            {
                $("#Atm1").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#College").hide();
                 $("#Bakery").hide(); 
                 $("#Electronics").hide();
                 $("#Cafe").show();
                 $("#smpl").hide();
                 $("#Hospital").hide();
                $("#Saloon").hide();
                 $("#Gym").hide(); 
                 $("#School").hide();
                 $("#Hotel").hide();
                 $("#Clinic").hide();
                 $("#Service").hide();
                 $("#Doctor").hide(); 
            }
            else if(sub=="19")
            {
                $("#Atm1").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#College").hide();
                $("#Saloon").hide();
                 $("#Bakery").hide();
                 $("#Service").hide();
                 $("#Hotel").hide();
                 $("#School").hide();
                 $("#Electronics").show();
                 $("#Cafe").hide();
                 $("#smpl").hide();
                 $("#Clinic").hide();
                 $("#Hospital").hide();
                 $("#Gym").hide(); 
                 $("#Doctor").hide(); 
            }
            else if(sub=="26")
            {
                $("#Atm1").hide();
                $("#Restaurant").hide();
                $("#Classes").hide();
                $("#School").hide();
                $("#College").hide();
                 $("#Bakery").hide(); 
                 $("#Electronics").hide(); 
                 $("#Cafe").hide();
                 $("#Clinic").hide();
                $("#Saloon").hide();
                $("#Service").hide();
                 $("#Gym").show();
                 $("#smpl").hide();
                 $("#Doctor").hide(); 
                 $("#Hospital").hide();
                 $("#Hotel").hide();
            }
            else if(sub=="22")
            {
                $("#Atm1").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#College").hide();
                 $("#Bakery").hide(); 
                 $("#Electronics").hide(); 
                 $("#Cafe").hide();
                 $("#Clinic").hide();
                 $("#Gym").hide();
                 $("#Doctor").hide(); 
                $("#Saloon").hide();
                 $("#Hotel").hide();
                 $("#Hospital").show();
                 $("#School").hide();
                 $("#smpl").hide();
                 $("#Service").hide();
            }
            else if(sub=="0"){
                $("#Classes").hide();
                $("#Atm1").hide();
                 $("#Bakery").hide();
                 $("#Restaurant").hide();
                $("#College").hide();
                $("#Cafe").hide(); 
                $("#Gym").hide(); 
                $("#Electronics").hide();
                $("#Doctor").hide(); 
                $("#Clinic").hide();
                $("#School").hide();
                $("#Hospital").hide();
                $("#Saloon").hide();
                $("#Hotel").hide();
                $("#Service").hide();
                $("#smpl").hide();
            }
                
       
    }
    </script>
    <script>
                function validatePlaceNamecol()
{
   alert("validate place name function called");
    var n=document.getElementById("colname");
    var nspan=document.getElementById("colsname");
    var letters=/^[A-Za-z\s]+$/;  
    alert(n.value);
    if(!n.value.match(letters))
    {
       n.style="border:2px red solid;width:300px;";
       //nspan.innerHTML="Place name should have alphabets only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px;";
        nspan.style="display:none";
    }
}
function validateContactNocol()
{
    
    
    var n=document.getElementById("colnumber");
    var nspan=document.getElementById("colsnumber");
    var digits=/^[9|8|7][0-9]+$/; 
    
    if(!n.value.match(digits))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Only digits and start with 9 or 8 or 7 only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(n.value.length>10 || n.value.length<10)
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Maximum 10 digits allowed";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}
function validateAddresscol()
{
    var n=document.getElementById("coladd");
    var nspan=document.getElementById("colsadd");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Address cannot contain only digits";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid address";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
function validateWebsitecol()
{
    var n=document.getElementById("colwebsite");
    var nspan=document.getElementById("colswebsite");
   var web=/^[w{3,3}]+(?=\.)/; 
    //var web=/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]']+)?$/;
    if(!n.value.match(web))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Invalid url";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateAreacol()
{
    var n=document.getElementById("colarea");
    var nspan=document.getElementById("colsarea");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select area first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateDescriptioncol()
{
    alert("funcall");
    var n=document.getElementById("coldescription");
    var nspan=document.getElementById("colsdesc");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML=" Enter proper description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid Description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}

function validateTypecol()
{
    var n=document.getElementById("type");
    var nspan=document.getElementById("colstype");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select Type first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
            
    </script>
        <script>
                function validatePlaceNamecls()
{
   alert("validate place name function called");
    var n=document.getElementById("clsname");
    var nspan=document.getElementById("clssname");
    var letters=/^[A-Za-z\s]+$/;  
    alert(n.value);
    if(!n.value.match(letters))
    {
       n.style="border:2px red solid;width:300px;";
       //nspan.innerHTML="Place name should have alphabets only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px;";
        nspan.style="display:none";
    }
}
function validateContactNocls()
{
    
    
    var n=document.getElementById("clsnumber");
    var nspan=document.getElementById("clssnumber");
    var digits=/^[9|8|7][0-9]+$/; 
    
    if(!n.value.match(digits))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Only digits and start with 9 or 8 or 7 only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(n.value.length>10 || n.value.length<10)
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Maximum 10 digits allowed";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}
function validateAddresscls()
{
    var n=document.getElementById("clsadd");
    var nspan=document.getElementById("clssadd");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Address cannot contain only digits";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid address";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
function validateWebsitecls()
{
    var n=document.getElementById("clswebsite");
    var nspan=document.getElementById("clsswebsite");
   var web=/^[w{3,3}]+(?=\.)/; 
    //var web=/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]']+)?$/;
    if(!n.value.match(web))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Invalid url";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateAreacls()
{
    var n=document.getElementById("clsarea");
    var nspan=document.getElementById("clssarea");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select area first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateDescriptioncls()
{
    alert("funcall");
    var n=document.getElementById("clsdescription");
    var nspan=document.getElementById("clssdesc");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML=" Enter proper description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid Description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}

function validateTypecls()
{
    var n=document.getElementById("clstype");
    var nspan=document.getElementById("clsstype");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select Type first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
            
    </script>
    <script>
                function validatePlaceNameatm()
{
   alert("validate place name function called");
    var n=document.getElementById("atmname");
    var nspan=document.getElementById("atmsname");
    var letters=/^[A-Za-z\s]+$/;  
    alert(n.value);
    if(!n.value.match(letters))
    {
       n.style="border:2px red solid;width:300px;";
       //nspan.innerHTML="Place name should have alphabets only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px;";
        nspan.style="display:none";
    }
}
function validateContactNoatm()
{
    
    
    var n=document.getElementById("atmnumber");
    var nspan=document.getElementById("atmsnumber");
    var digits=/^[9|8|7][0-9]+$/; 
    
    if(!n.value.match(digits))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Only digits and start with 9 or 8 or 7 only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(n.value.length>10 || n.value.length<10)
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Maximum 10 digits allowed";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}
function validateAddressatm()
{
    var n=document.getElementById("atmadd");
    var nspan=document.getElementById("atmsadd");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Address cannot contain only digits";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid address";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
function validateWebsiteatm()
{
    var n=document.getElementById("atmwebsite");
    var nspan=document.getElementById("atmswebsite");
   var web=/^[w{3,3}]+(?=\.)/; 
    //var web=/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]']+)?$/;
    if(!n.value.match(web))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Invalid url";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateAreaatm()
{
    var n=document.getElementById("atmarea");
    var nspan=document.getElementById("atmsarea");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select area first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateDescriptionatm()
{
    alert("funcall");
    var n=document.getElementById("atmdescription");
    var nspan=document.getElementById("atmsdesc");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML=" Enter proper description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid Description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}

function validateTypeatm()
{
    var n=document.getElementById("atmtype");
    var nspan=document.getElementById("atmstype");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select Type first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
            
    </script>
    <script>
                function validatePlaceNamebak()
{
   alert("validate place name function called");
    var n=document.getElementById("bakname");
    var nspan=document.getElementById("baksname");
    var letters=/^[A-Za-z\s]+$/;  
    alert(n.value);
    if(!n.value.match(letters))
    {
       n.style="border:2px red solid;width:300px;";
       //nspan.innerHTML="Place name should have alphabets only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px;";
        nspan.style="display:none";
    }
}
function validateContactNobak()
{
    
    
    var n=document.getElementById("baknumber");
    var nspan=document.getElementById("baksnumber");
    var digits=/^[9|8|7][0-9]+$/; 
    
    if(!n.value.match(digits))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Only digits and start with 9 or 8 or 7 only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(n.value.length>10 || n.value.length<10)
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Maximum 10 digits allowed";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}
function validateAddressbak()
{
    var n=document.getElementById("bakadd");
    var nspan=document.getElementById("baksadd");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Address cannot contain only digits";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid address";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
function validateWebsitebak()
{
    var n=document.getElementById("bakwebsite");
    var nspan=document.getElementById("bakswebsite");
   var web=/^[w{3,3}]+(?=\.)/; 
    //var web=/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]']+)?$/;
    if(!n.value.match(web))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Invalid url";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateAreabak()
{
    var n=document.getElementById("bakarea");
    var nspan=document.getElementById("baksarea");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select area first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateDescriptionbak()
{
    alert("funcall");
    var n=document.getElementById("bakdescription");
    var nspan=document.getElementById("baksdesc");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML=" Enter proper description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid Description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}

function validateTypebak()
{
    var n=document.getElementById("baktype");
    var nspan=document.getElementById("bakstype");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select Type first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
            
    </script>
    <script>
                function validatePlaceNamecafe()
{
   alert("validate place name function called");
    var n=document.getElementById("cafename");
    var nspan=document.getElementById("cafesname");
    var letters=/^[A-Za-z\s]+$/;  
    alert(n.value);
    if(!n.value.match(letters))
    {
       n.style="border:2px red solid;width:300px;";
       //nspan.innerHTML="Place name should have alphabets only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px;";
        nspan.style="display:none";
    }
}
function validateContactNocafe()
{
    
    
    var n=document.getElementById("cafenumber");
    var nspan=document.getElementById("cafesnumber");
    var digits=/^[9|8|7][0-9]+$/; 
    
    if(!n.value.match(digits))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Only digits and start with 9 or 8 or 7 only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(n.value.length>10 || n.value.length<10)
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Maximum 10 digits allowed";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}
function validateAddresscafe()
{
    var n=document.getElementById("cafeadd");
    var nspan=document.getElementById("cafesadd");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Address cannot contain only digits";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid address";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
function validateWebsitecafe()
{
    var n=document.getElementById("cafewebsite");
    var nspan=document.getElementById("cafeswebsite");
   var web=/^[w{3,3}]+(?=\.)/; 
    //var web=/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]']+)?$/;
    if(!n.value.match(web))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Invalid url";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateAreacafe()
{
    var n=document.getElementById("cafearea");
    var nspan=document.getElementById("cafesarea");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select area first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateDescriptioncafe()
{
    alert("funcall");
    var n=document.getElementById("cafedescription");
    var nspan=document.getElementById("cafesdesc");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML=" Enter proper description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid Description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}

function validateTypecafe()
{
    var n=document.getElementById("cafetype");
    var nspan=document.getElementById("cafestype");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select Type first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
            
    </script>
    <script>
                function validatePlaceNameclinic()
{
   alert("validate place name function called");
    var n=document.getElementById("clinicname");
    var nspan=document.getElementById("clinicsname");
    var letters=/^[A-Za-z\s]+$/;  
    alert(n.value);
    if(!n.value.match(letters))
    {
       n.style="border:2px red solid;width:300px;";
       //nspan.innerHTML="Place name should have alphabets only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px;";
        nspan.style="display:none";
    }
}
function validateContactNoclinic()
{
    
    
    var n=document.getElementById("clinicnumber");
    var nspan=document.getElementById("clinicsnumber");
    var digits=/^[9|8|7][0-9]+$/; 
    
    if(!n.value.match(digits))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Only digits and start with 9 or 8 or 7 only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(n.value.length>10 || n.value.length<10)
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Maximum 10 digits allowed";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}
function validateAddressclinic()
{
    var n=document.getElementById("clinicadd");
    var nspan=document.getElementById("clinicsadd");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Address cannot contain only digits";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid address";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
function validateWebsiteclinic()
{
    var n=document.getElementById("clinicwebsite");
    var nspan=document.getElementById("clinicswebsite");
   var web=/^[w{3,3}]+(?=\.)/; 
    //var web=/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]']+)?$/;
    if(!n.value.match(web))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Invalid url";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateAreaclinic()
{
    var n=document.getElementById("clinicarea");
    var nspan=document.getElementById("clinicsarea");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select area first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateDescriptionclinic()
{
    alert("funcall");
    var n=document.getElementById("clinicdescription");
    var nspan=document.getElementById("clinicsdesc");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML=" Enter proper description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid Description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}

function validateTypeclinic()
{
    var n=document.getElementById("clinictype");
    var nspan=document.getElementById("clinicstype");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select Type first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
            
    </script>
    
    <script>
                function validatePlaceNamedoctor()
{
   alert("validate place name function called");
    var n=document.getElementById("doctorname");
    var nspan=document.getElementById("doctorsname");
    var letters=/^[A-Za-z\s]+$/;  
    alert(n.value);
    if(!n.value.match(letters))
    {
       n.style="border:2px red solid;width:300px;";
       //nspan.innerHTML="Place name should have alphabets only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px;";
        nspan.style="display:none";
    }
}
function validateContactNodoctor()
{
    
    
    var n=document.getElementById("doctornumber");
    var nspan=document.getElementById("doctorsnumber");
    var digits=/^[9|8|7][0-9]+$/; 
    
    if(!n.value.match(digits))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Only digits and start with 9 or 8 or 7 only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(n.value.length>10 || n.value.length<10)
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Maximum 10 digits allowed";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}
function validateAddressdoctor()
{
    var n=document.getElementById("doctoradd");
    var nspan=document.getElementById("doctorsadd");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Address cannot contain only digits";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid address";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
function validateWebsitedoctor()
{
    var n=document.getElementById("doctorwebsite");
    var nspan=document.getElementById("doctorswebsite");
   var web=/^[w{3,3}]+(?=\.)/; 
    //var web=/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]']+)?$/;
    if(!n.value.match(web))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Invalid url";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateAreadoctor()
{
    var n=document.getElementById("doctorarea");
    var nspan=document.getElementById("doctorsarea");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select area first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateDescriptiondoctor()
{
    alert("funcall");
    var n=document.getElementById("dotordescription");
    var nspan=document.getElementById("doctorsdesc");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML=" Enter proper description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid Description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}

function validateTypedoctor()
{
    var n=document.getElementById("doctortype");
    var nspan=document.getElementById("doctorstype");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select Type first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
            
    </script>
    <script>
                function validatePlaceNameelec()
{
   alert("validate place name function called");
    var n=document.getElementById("elecname");
    var nspan=document.getElementById("elecsname");
    var letters=/^[A-Za-z\s]+$/;  
    alert(n.value);
    if(!n.value.match(letters))
    {
       n.style="border:2px red solid;width:300px;";
       //nspan.innerHTML="Place name should have alphabets only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px;";
        nspan.style="display:none";
    }
}
function validateContactNoelec()
{
    
    
    var n=document.getElementById("elecnumber");
    var nspan=document.getElementById("elecsnumber");
    var digits=/^[9|8|7][0-9]+$/; 
    
    if(!n.value.match(digits))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Only digits and start with 9 or 8 or 7 only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(n.value.length>10 || n.value.length<10)
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Maximum 10 digits allowed";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}
function validateAddresselec()
{
    var n=document.getElementById("elecadd");
    var nspan=document.getElementById("elecsadd");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Address cannot contain only digits";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid address";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
function validateWebsiteelec()
{
    var n=document.getElementById("elecwebsite");
    var nspan=document.getElementById("elecswebsite");
   var web=/^[w{3,3}]+(?=\.)/; 
    //var web=/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]']+)?$/;
    if(!n.value.match(web))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML="Invalid url";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateAreaelec()
{
    var n=document.getElementById("elecarea");
    var nspan=document.getElementById("elecsarea");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select area first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}

function validateDescriptionelec()
{
    alert("funcall");
    var n=document.getElementById("elecdescription");
    var nspan=document.getElementById("elecsdesc");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid;width:300px;";
       nspan.innerHTML=" Enter proper description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Invalid Description";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
    }
}

function validateTypeelec()
{
    var n=document.getElementById("electype");
    var nspan=document.getElementById("elecstype");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid;width:300px";
       nspan.innerHTML="Please select Type first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid;width:300px";
        nspan.style="display:none";
        return true;
    }
}
            
    </script>
</head>

<body onload="div_hide()" style="background-image: url(img/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;">
  
<!--<div class="add_place none" id="autorized">-->
    <div>
        <%@include file="BusinessHeader.jsp" %>
    </div>
    <div>
        <div style="text-align: center;">
            <h1 style="color:white;">Register your business here.....<span></span></h1>
            <br><br>
            <label><span style="color:white;font-size: 20px;">Select Category First:</span><select id="Category" name="Category" onchange="getSubCategory()">
                <option value="0">----Select Category---</option>
                               <% 
                                   List <CategoryBean> list=CategoryManager.getAllCategoryList();
                                                    for (CategoryBean bean:list)
                                                    {
                              %>
                              <option value="<%=bean.getCategoryId()%>">
                                  <%=bean.getCategoryName()%></option>
                              <% } %>
                </select></label>
                <br><br>
                <label><span style="color:white;font-size: 20px;">Select Sub-Category:</span><select id="subcat1" name="subcat1" onchange="div_show()">
                
            </select></label>
        </div>
                <div id="smpl">
                    <%@include file="Addsample.jsp" %>
                </div>
        <div id="College">
        
     <div class="col-xl-12">
                                <div class="card m-t-35">                                 
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="18">
                                                <input type="hidden" id="img_no" name="img_no" value="0">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter College Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="colname" name="name" class="form-control" placeholder="College Name" onblur="validatePlaceNamecol()" required="true"><span id="colsname" style="display:none;">Enter proper name</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="colarea" style="width:300px;" name="area" class="form-control" onblur="validateAreacol()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list1=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list1)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="colsarea"></span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter College Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="coladd" name="add" class="form-control" placeholder="College Address" onblur="validateAddresscol()" required="true"> <span id="colsadd"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter College Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="colwebsite" name="website" class="form-control" placeholder="College Website" onblur="validateWebsitecol()" required="true"><span id="colswebsite"></span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="colnumber" name="number" class="form-control" placeholder="Contact Number" onblur="validateContactNocol()" required="true"><span id="colsnumber" style="display:none;"></span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description:(List of courses offered)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="coldescription" style="width:300px;" name="description" rows="3" class="form-control" onblur="validateDescriptioncol()" required="true"></textarea><span id="colsdesc"  style="display:none;" ></span>
                                                           <!-- <input type="text" id="description" name="description" class="form-control" placeholder="Description">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select college image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothats()">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                    
                                                 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
    </div>
    <div id="Classes">
        <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                          <input type="hidden" id="subcat" style="width:300px;" name="subcat" value="12"> 
                                            <input type="hidden" id="img_no" name="img_no" value="0">
                                           <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Classes  Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="clsname" style="width:300px;" name="name" class="form-control" placeholder="Classes Name" onblur="validatePlaceNamecls()"  required="true"> <span id="clssname" style="display:none;">Enter proper name</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                               <span id="sname" style="display:none;"></span> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="clsarea" name="area" style="width:300px;" class="form-control" onblur="validateAreacls()" required="true">
                                                            <option value="0">--------select Area--------</option>
                                                                <% List <AreaBean> list4=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list4)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="clssarea"></span>
                                                        </div>
                                                        </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Classes Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="clsadd" name="add" class="form-control" placeholder="Classes Address" onblur="validateAddresscls()" required="true"> <span id="clssadd"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Classes Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="clswebsite" style="width:300px;" name="website" class="form-control" placeholder="Classes Website" onblur="validateWebsitecls()" required="true"><span id="clsswebsite"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="clsnumber" style="width:300px;" name="number" class="form-control" placeholder="Contact Number" onblur="validateContactNocls();" required="true"><span id="clssnumber" style="display:none;"></span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Classes Description:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group" >
                                                            <textarea id="clsdescription" style="width:300px;" name="description" rows="3" class="form-control" onblur="validateDescriptioncls()" required="true"></textarea><span id="clssdesc"  style="display:none;" ></span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Classes Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="clstype" style="width:300px;" name="type" class="form-control" onblur="validateTypecls()">
                                                                <option value="0">--Select  Type--</option>
                                                                <option value="Painting">Painting</option>
                                                                <option value="B.Com">B.Com</option>
                                                                <option value="Engineering">Engineering</option>
                                                            </select><span id="clsstype" style="display : none "></span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select hotel image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothats()">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align: center">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
    </div>
   
                <div id="Atm1">
                   <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter ATM Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="atmname" name="name" class="form-control" placeholder="ATM Name" onblur="validatePlaceNameatm()" required="true"> <span id="atmsname" style="display:none;">Enter proper name</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop"  style="color:white;font-size: 18px;">Enter ATM Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="atmadd" name="add" class="form-control" placeholder="ATM Address" onblur="validateAddressatm()" required="true"> <span id="atmsadd"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter ATM Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="atmwebsite" style="width:300px;" name="website" class="form-control" placeholder="ATM Website" onblur="validateWebsiteatm()" required="true"><span id="atmswebsite"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="atmnumber" style="width:300px;" name="number" class="form-control" placeholder="Contact Number" onblur="validateContactNoatm()" required="true"><span id="atmsnumber" style="display:none;"></span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                

                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" onclick="sendDetails()" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
           
                <div id="Bakery">
                       <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal"  method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>                                                
                                                <input type="hidden" id="subcat" name="subcat" value="17">
                                                 <input type="hidden" id="image_no" name="img_no" value="0">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Bakery Name:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="bakname" name="name" class="form-control" placeholder="Bakery Name" onblur="validatePlaceNamebak()" required="true"> <span id="baksname" style="display:none;">Enter proper name</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                        <select id="bakarea" style="width:300px;" name="area" class="form-control" onblur="validateAreabak()">
                                                                 <option value="0">----Select Category---</option>
                                                                <% List <AreaBean> list2=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list2)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="baksarea"></span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Bakery Address:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="bakadd" name="add" class="form-control" placeholder="Bakery Address" onblur="validateAddressbak()" required="true"> <span id="baksadd"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Bakery Website:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="bakwebsite" name="website" class="form-control" placeholder="Bakery Website" onblur="validateWebsitebak()" required="true"><span id="bakswebsite"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="baknumber" name="number" class="form-control" placeholder="Contact Number" onblur="validateContactNobak()" required="true"><span id="baksnumber" style="display:none;"></span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description:(Include details of menu items offered and opening and closing hours)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="bakdescription" style="width:300px;" name="description" rows="3" class="form-control" onblur="validateDescriptionbak()" required="true"></textarea><span id="baksdesc"  style="display:none;" ></span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select Bakery image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Cafe">
                    <div class="col-xl-12">
                                <div class="card m-t-35">
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="16">
                                                 <input type="hidden" id="image_no" name="img_no" value="0">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Cafe Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="cafename" name="name" class="form-control" placeholder="Cafe Name" onblur="validatePlaceNamecafe()" required="true"><span id="cafesname" style="display:none;">Enter proper name</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="cafearea" style="width:300px;" name="area" class="form-control" onblur="validateAreacafe()" required="true">
                                                                <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list3=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list3)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="cafesarea"></span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Cafe Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="cafeadd" name="add" class="form-control" placeholder="Cafe Address" onblur="validateAddresscafe()" required="true"> <span id="cafesadd"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Cafe Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="cafewebsite" style="width:300px;" name="website" class="form-control" placeholder="Cafe Website" onblur="validateWebsitecafe()" required="true"><span id="cafeswebsite"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="cafenumber" style="width:300px;" name="number" class="form-control" placeholder="Contact Number" onblur="validateContactNocafe()" required="true"><span id="cafesnumber" style="display:none;"></span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description:(Include details of menu items offered and opening and closing hours)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="cafedescription" style="width:300px;" name="description" rows="3" class="form-control" onblur="validateDescriptioncafe()" required="true"></textarea><span id="cafesdesc"  style="display:none;" ></span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select cafe image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div>            
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Clinic">
                    <div class="col-xl-12">
                                <div class="card m-t-35">
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="23">
                                                <input type="hidden" id="image_no" name="img_no" value="0">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Clinic Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="clinicname" name="name" class="form-control" placeholder="Clinic Name" onblur="validatePlaceNameclinic()" required="true"> <span id="clinicsname" style="display:none;">Enter proper name</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="clinicarea" name="area" style="width:300px;" class="form-control" onblur="validateAreaclinic()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list5=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list5)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="clinicsarea"></span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Clinic Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="clinicadd" name="add" class="form-control" placeholder="Clinic Address" onblur="validateAddressclinic()" required="true"><span id="clinicsadd"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Clinic Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="clinicwebsite" style="width:300px;" name="website" class="form-control" placeholder="Clinic Website" onblur="validateWebsiteclinic()" required="true"><span id="clinicswebsite"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="clinicnumber" name="number" class="form-control" placeholder="Contact Number" onblur="validateContactNoclinic()" required="true"><span id="clinicsnumber" style="display:none;"></span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="clinicdescription" style="width:300px;" name="description" rows="3" class="form-control" onblur="validateDescriptionclinic()" required="true"></textarea><span id="clinicsdesc"  style="display:none;" ></span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select clinic image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Doctor">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                   
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                               <br>
                                            <input type="hidden" id="subcat" name="subcat" value="21">
                                                 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Doctor Name:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="doctorname" name="name" class="form-control" placeholder="Doctor Name"  onblur="validatePlaceNamedoctor()" required="true"><span id="doctorsname" style="display:none;">Enter proper name</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                        <select id="doctorarea" style="width:300px;" name="area" class="form-control"  onblur="validateAreadoctor()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list6=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list6)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="doctorsarea"></span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Address:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="doctoradd" name="add" class="form-control" placeholder="Address of clinic or hospital" onblur="validateAddressdoctor()" required="true"><span id="doctorsadd"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="doctorwebsite" name="website" class="form-control" placeholder="Website of hospital or clinic working in" onblur="validateWebsitedoctor()" required="true"><span id="doctorswebsite"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="doctornumber" name="number" class="form-control" placeholder="Contact Number" onblur="validateContactNodoctor()" required="true"><span id="doctorsnumber" style="display:none;"></span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description:(about qualifications and experiences)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                          <textarea id="dotordescription" style="width:300px;" name="description" rows="3" class="form-control" onblur="validateDescriptiondoctor()" required="true"></textarea><span id="doctorsdesc"  style="display:none;" ></span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Doctor Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="doctortype" style="width:300px;" name="type" class="form-control" onblur="validateTypedoctor()">
                                                                <option value="0">---Select Doctor Type----</option>
                                                                <option value="Physician">Physician</option>
                                                                <option value="Cardiologist">Cardiologist</option>
                                                                <option value="Paediatrician">Paediatrician</option>
                                                                <option value="Dentist">Dentist</option>
                                                                <option value="Dermatologist">Dermatologist</option>
                                                                <option value="Paediatrician">Paediatrician</option>
                                                                <option value="Psychiatrist">Psychiatrist</option>
                                                                <option value="Neurologist">Neurologist</option>
                                                            </select><span id="doctorstype" style="display : none "></span>
                                                        </div>
                                                   
                                                    </div>
                                                    
                                                </div>
                                                 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Electronics">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                 <input type="hidden" id="subcat" name="subcat" value="19">
                                                 <input type="hidden" id="image_no" name="img_no" value="0">                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Electronic Store Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="elecname" name="name" class="form-control" placeholder="Electronic Store Name" onblur="validatePlaceNameelec()" required="true"><span id="elecsname" style="display:none;">Enter proper name</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="elecarea" style="width:300px;" name="area" class="form-control"  onblur="validateAreaelec()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list7=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list7)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="elecsarea"></span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Electronic Store Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="elecadd" name="add" class="form-control" placeholder="Electronic Store Address" onblur="validateAddresselec()" required="true"> <span id="elecsadd"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Electronic Store Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="elecwebsite" name="website" class="form-control" placeholder="Electronic Store Website" onblur="validateWebsiteelec()" required="true"><span id="elecswebsite"></span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="elecnumber" name="number" class="form-control" placeholder="Contact Number" onblur="validateContactNoelec()" required="true"><span id="elecsnumber" style="display:none;"></span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea style="width:300px;" id="elecdescription" name="description" rows="3" class="form-control" onblur="validateDescriptionelec()" required="true"></textarea><span id="elecsdesc"  style="display:none;" ></span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select hospital image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Gym">
                      <div class="col-xl-12">
                                <div class="card m-t-35">                                   
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="26">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Gym Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Gym Name"  onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control"  onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list8=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list8)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Gym Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Gym Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Gym Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Gym Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Gym Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select GYM Type----</option>
                                                                <option value="Men">Men</option>
                                                                <option value="Women">Women</option>
                                                                <option value="Both">Both</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper GYM Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select Gym image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>  
                </div>
                <div id="Hospital">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="22">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Hospital Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Hospital Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list9=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list9)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Hospital Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Hospital Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Hospital Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Hospital Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select hospital image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent"  type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Hotel">
                    <div class="col-xl-12">
                                <div class="card m-t-35">          
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="14">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Hotel Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Hotel Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list10=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list10)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Hotel Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Hotel Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Hotel Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Hotel Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Hotel Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select Hotel Type----</option>
                                                                <option value="3">3 star</option>
                                                                <option value="4">4 star</option>
                                                                <option value="5">5 star</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Doctor Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select hotel image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" onclick="sendDetails()" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                                
                                             <%--   <input type="hidden" name="subcat"><%=request.getParameter("subcat")%></input>--%>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Restaurant">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                 
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="15">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Restaurant Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Restaurant Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                         <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list11=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list11)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Restaurant Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Restaurant Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Restaurant Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Restaurant Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description:(Include details of menu items)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Restaurant Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select Restaurant Type----</option>
                                                                <option value="South Indian">South Indian</option>
                                                                <option value="Punjabi">Punjabi</option>
                                                                <option value="Continental">Continental</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Restaurant Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Home Delivery</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        &nbsp;
                                                        <input type="radio" name="hd" id="hd" value="1" ><span style="color:white;font-size: 18px;">&nbsp;&nbsp;Yes</span></input>
                                                        <input type="radio" name="hd" id="hd" value="0" checked="true"><span style="color:white;font-size: 18px;">&nbsp;&nbsp;No</span></input>
                                                        </div>
                                                </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select restaurant image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Saloon">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                               
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                               <br>
                                              <input type="hidden" id="subcat" name="subcat" value="27">

                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Salon Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Salon Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list12=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list12)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Salon Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Salon Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Saloon Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Saloon Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Salon Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" name="type" style="width:300px;" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select Salon Type----</option>
                                                                <option value="Men">Men</option>
                                                                <option value="Women">Women</option>
                                                                <option value="Both">Both</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Salon Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select hotel image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="School">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="28">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter School Name:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4" style="text-align: center;">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="name" style="width:300px;" name="name" class="form-control" placeholder="School Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list13=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list13)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter School Address:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="School Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter School Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="School Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                           <!-- <input type="text" id="description" name="description" class="form-control" placeholder="Description">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Board</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="board" style="width:300px;" name="board" class="form-control" onblur="validateselect1()">
                                                                <option value="0">-----Select Board Type-----</option>
                                                                <option value="GSEB">GSEB</option>
                                                                <option value="ICSE">ICSE</option>
                                                                <option value="CBSE">CBSE</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Board Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                   
                                                    
                                                </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Medium</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="medium" style="width:300px;" name="medium" class="form-control" onblur="validateselect2()">
                                                                <option value="0">---Select Medium Type---</option>
                                                                <option value="Gujarati">Gujarati</option>
                                                                <option value="English">English</option>
                                                                <option value="Hindi">Hindi</option>
                                                            </select><span id="selectdata2" style="color: #ececec;display : none "> *Select proper Medium Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                   
                                                   
                                                </div>
                                                <!-- last name-->
                                               <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Hostel</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        &nbsp;
                                                        <input type="radio" id="hostel" name="hostel" value="1"><span style="color:white;font-size: 18px;">&nbsp;&nbsp;Yes</span></input>
                                                        <input type="radio" id="hostel" name="hostel" value="0" checked="true"><span  style="color:white;font-size: 18px;">&nbsp;&nbsp;No</span></input>
                                                        </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Hostel Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="hos_name" name="hos_name" class="form-control" placeholder="Hostel Name" onblur="validatenameh()" required="true"><span id="first-span1" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span4" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Hostel Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="hos_add" name="hos_add" class="form-control" placeholder="Hostel Address" onblur="validateaddressh()" required="true"><span id="addres1" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select school image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align: center;">
                                                        <button class="btn btn-primary layout_btn_prevent" onclick="sendDetails()" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Service">
                    <div class="col-xl-12">
                                <div class="card m-t-35">
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="20">

                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Service Center Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Service Center Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list14=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list14)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Service Center Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="hadd" name="hadd" class="form-control" placeholder="Service Center Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Service Center Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Service Center Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label" style="color:white;font-size: 18px;">Service Center Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select Service Type----</option>
                                                                <option value="Samsung">Samsung</option>
                                                                <option value="Oppo">Oppo</option>
                                                                <option value="Vodafone">Vodafone</option>
                                                                <option value="Dell">Dell</option>
                                                                <option value="Lenovo">Lenovo</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Service Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select hospital image</label>
                                                    </div>
                                                     <div class="col-lg-6 col-xl-4  two_column_signup_margintop" id="file_image">
                                                        <div class="input-group">
                                                            <input type="file" id="image0" name="image0"><img src="img/sign-add-icon.png" style="height:26px;" onclick="dothat()">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent"  type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
    </div>

    <div>
        <%@include file="Footer.jsp" %>
    </div>
</body>
</html>

