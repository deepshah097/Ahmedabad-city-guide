function getSubCategory()
        {
            alert("function called");
           var cid=document.getElementById("Category").value;
            alert(cid);
            var options="<option value='0'>----Select Sub Category----</option>";
             alert(options);
          $.ajax({
              
               url:'../../../../ViewSubCategoryServlet',
                type:'POST',
                data:{Category:cid},
                success:function(data1)
                {
                   alert("success");
                    var subcategory=data1.split(",");
                    for(var i=0;i<subcategory.length;i++)
                    {
                        var subcat=subcategory[i].split(":");
                        options+="<option value='"+subcat[1]+"' name='"+subcat[2]+"'>"+subcat[2]+"</option>";
                        
                    }
                    var sub=document.getElementById("subcat");
                    
                    sub.innerHTML=options;
                   }
                
            })
        }

    
    
    function sendDetails()
    {
        alert("Function called");
       var sub=document.getElementById("subcat").value;
        
            var website=document.getElementById("website").value;
             alert(website);
             var sname=document.getElementById("sname").value;
             alert(sname);
            var sadd=document.getElementById("sadd").value;
             alert(sadd);
           var number=document.getElementById("contact_number").value;
            alert("Contact number is "+number);
           var desc=document.getElementById("description").value;
          alert(desc);
          
            $.ajax({
                
                url:'../../../../SchoolServlet',
                type:'POST',
                data:{website:website,sname:sname,sadd:sadd,number:number,description:desc,subcat:sub},
                success:function(data1){
                    alert(data1);
                }
            })
            alert("servlet called");
        
    }
    

    function div_hide()
    {
       //  $("#School").hide();
         
    }
    function div_show()
    {
        var sub=document.getElementById("subcat");
        if(sub=="1")
        {    
            $("#School").show();
        } 
    }


