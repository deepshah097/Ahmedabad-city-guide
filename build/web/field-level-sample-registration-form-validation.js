/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//After form loads focus will go to User id field.  
  function firstfocus()  
  {  
  var uid = document.registration.fname.focus();  
  return true;  
  }  
// This function will validate Password.  
  function validatepwd()
{
    var pwd=document.getElementById("password");
    passid_validation(pwd,7,20);
                                  
}

function confirm_password1()
{
    alert("confirm called");
    var cnfmpassgrp=document.getElementById("confirm_password");
 //var len =pwd.value.length;
var fspan=document.getElementById("confirm_passwordspan"); 
var cpass=document.getElementById("confirm_password");
var pass=document.getElementById("password");
 
if(cpass.value.match(pass.value))  
{  
 cnfmpassgrp.style="border: 2px solid #f7f7f7" ; 
 fspan.innerHTML="";
return true;  
}  
else  
{ 
    alert("confirm");
//alert('Username must have alphabet characters only');  
 cnfmpassgrp.style=" border: 2px solid red";
 fspan.innerHTML="Confirm password and password must be same";
  cpass.focus();  
return false;  

}
}


function passid_validation(passid,mx,my)  
{  
  var pwdgrp=document.getElementById("password");
  var pspan=document.getElementById("passwordspan"); 
  var passid_len = passid.value.length;  
if(passid_len === 0)
{
                            
                            pwdgrp.style=" border: 2px solid red";
                            pspan.innerHTML="Password should not be empty";
                            passid.focus();
                            return false;                           
}
else if (passid_len >= my || passid_len < mx)  
{  
                            
                            pwdgrp.style=" border: 2px solid red";
                            pspan.innerHTML="Password length be between "+mx+" to "+my;
                           // alert("Password should not be empty / length be between "+mx+" to "+my);  
                            passid.focus();  
                            return false;  
}  
else
{
                            pwdgrp.style="border: 2px solid #f7f7f7" ; 
                            pspan.innerHTML="";
                            return true;  
}  
}


function validateContactNo()
{
    var n=document.getElementById("contact_number");
    var nspan=document.getElementById("contactspan");
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

  




  // This function will validate Name.  
  function allLetter1()  
  {   
  var uname = document.registration.fname;  
  var letters = /^[A-Za-z]+$/;  
  if(uname.value.match(letters))  
  {  
  // Focus goes to next field i.e. Address.  
  document.registration.lname.focus();  
  return true;  
  }  
  else  
  {  
  alert('Username must have alphabet characters only');  
  uname.focus();  
  return false;  
  }  
  }  
  
  function allLetter2()  
  {   
  var uname = document.registration.lname;  
  var letters = /^[A-Za-z]+$/;  
  if(uname.value.match(letters))  
  {  
  // Focus goes to next field i.e. Address.  
  document.registration.email_id.focus();  
  return true;  
  }  
  else  
  {  
  alert('Username must have alphabet characters only');  
  uname.focus();  
  return false;  
  }  
  }  
  
  
function ValidateEmail(uemail)
{
    var uemail=document.getElementById("email_id");
    var mailgrp=document.getElementById("email_id");
    //var len =nm.value.length;
    var mailspan=document.getElementById("emailspan");
    
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(uemail.value.match(mailformat))
{
 mailgrp.style=" border: 2px solid #f7f7f7";
 mailspan.style="color: #f7f7f7 ";
 mailspan.innerHTML="";
 return true;
}
else
{
                        
                            uemail.focus();
                            mailgrp.style=" border: 2px solid red";
                            mailspan.innerHTML="Invalid Email";
                           // uemail.focus();
                            return false;
}
}
  
function validateFname()  
{  
var fnmgrp=document.getElementById("fname");
 //var len =pwd.value.length;
var fspan=document.getElementById("fnamespan"); 
var uname=document.getElementById("fname");
var letters = /^[A-Za-z]+$/;  
if(uname.value.match(letters))  
{  
 fnmgrp.style="border: 2px solid #f7f7f7" ; 
 fspan.innerHTML="";
return true;  
}  
else  
{  
//alert('Username must have alphabet characters only');  
 fnmgrp.style=" border: 2px solid red";
 fspan.innerHTML="First name must have alphabet characters only";
uname.focus();  
return false;  
}  
}  

 

function validateLname()  
{  
var fnmgrp=document.getElementById("lname");
 //var len =pwd.value.length;
var fspan=document.getElementById("lnamespan"); 
var uname=document.getElementById("lname");
var letters = /^[A-Za-z]+$/;  
if(uname.value.match(letters))  
{  
 fnmgrp.style="border: 2px solid #f7f7f7" ; 
 fspan.innerHTML="";
return true;  
}  
else  
{  
//alert('Username must have alphabet characters only');  
 fnmgrp.style=" border: 2px solid red";
 fspan.innerHTML="Last name must have alphabet characters only";
uname.focus();  
return false;  
}  
}  

function validateunm()
{
	
	
                        
                       var nm=document.getElementById("email_id");
                       
                        var mailgrp=document.getElementById("emailspan");
                         var len =nm.value.length;
                           var mailspan=document.getElementById("emailspan");
                           ValidateEmail(nm);
                                       
}



