 var i=0; 
function dothat() {  
    alert("i="+i);
    var im=document.getElementById("image_no");
   var div = document.getElementById('file_image');  
    var field = div.getElementsByTagName('input')[0]; 
   // alert(div.getElementsById('image'+i)[i].value);
   alert(document.getElementById("image"+i).value);
    if(document.getElementById("image"+i).value)
    {
            var field1=div.getElementsByTagName('img')[0]; 
            var e=document.createAttribute('id');
            e.nodeValue="image"+(i+1);
            alert(e.nodeValue);
            var n=document.createAttribute('name');
            n.nodeValue="image"+(i+1);
            alert(n.nodeValue);
            var v=document.createAttribute('value');
            v.nodeValue=" ";
            alert("v.nodeValue:"+v.nodeValue);
            for(var j=0;j<=i;j++)
            {
                alert("j="+j);
                div.appendChild(document.createElement("br")); 
            }
            var f=field.cloneNode(false);
             var f1=field1.cloneNode(false);
            f.setAttributeNode(e);
            f.setAttributeNode(n);
            f.setAttributeNode(v);
            alert("f.value"+f.value);
            div.appendChild(f);
           // div.appendChild(field.cloneNode(false).setAttributeNode(e)); 
            div.appendChild(f1); 
            i=i+1;
            im.value=i;
    }
    else
    {
        alert("please select file first");
    }
} 

function hostel()
{
    $("#hosteldiv").hide();
}  

function hostel1(val)
{
    alert("Function called");
    if(val=="1")
    {
        $("#hosteldiv").show();
    }
    else
    {
      $("#hosteldiv").hide();  
    }
} 

