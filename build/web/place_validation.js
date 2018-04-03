function validatePlaceName()
{
    var n=document.getElementById("name");
    var nspan=document.getElementById("sname");
    var letters=/^[A-Za-z\s]+$/;  
    
    if(!n.value.match(letters))
    {
       n.style="border:2px red solid";
       nspan.innerHTML="Place name should have alphabets only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid";
        nspan.style="display:none";
        return true;
    }
}

function validateContactNo()
{
    var n=document.getElementById("number");
    var nspan=document.getElementById("snumber");
    var digits=/^[9|8|7][0-9]+$/; 
    
    if(!n.value.match(digits))
    {
       n.style="border:2px red solid";
       nspan.innerHTML="Contact number should have digits and it should start with 9 or 8 or 7 only";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else if(n.value.length>10 || n.value.length<10)
    {
       n.style="border:2px red solid";
       nspan.innerHTML="Maximum 10 digits allowed";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else
    {
        n.style="border:2px blue solid";
        nspan.style="display:none";
    }
}

function validateAddress()
{
    var n=document.getElementById("add");
    var nspan=document.getElementById("sadd");
    var add=/^[A-Za-z0-9][A-Za-z0-9\s\-\,]+/;
    var add1=/^[0-9]+$/;
    if(n.value.match(add1))
    {
       n.style="border:2px red solid";
       nspan.innerHTML="Address cannot contain only digits";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus(); 
    }
    else if(!n.value.match(add))
    {
       n.style="border:2px red solid";
       nspan.innerHTML="Invalid address";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
 
    else
    {
        n.style="border:2px blue solid";
        nspan.style="display:none";
        return true;
    }
}

function validateWebsite()
{
    var n=document.getElementById("website");
    var nspan=document.getElementById("swebsite");
   var web=/^[w{3,3}]+(?=\.)/; 
    //var web=/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]']+)?$/;
    if(!n.value.match(web))
    {
       n.style="border:2px red solid";
       nspan.innerHTML="Invalid url";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid";
        nspan.style="display:none";
        return true;
    }
}

function validateArea()
{
    var n=document.getElementById("area");
    var nspan=document.getElementById("sarea");
    alert("Function called");
    if(n.value=="0")
    {
       n.style="border:2px red solid";
       nspan.innerHTML="Please select area first";
       nspan.style="display:block;color:red;";
       n.value="";
       n.focus();
    }
    else
    {
        n.style="border:2px blue solid";
        nspan.style="display:none";
        return true;
    }
}

