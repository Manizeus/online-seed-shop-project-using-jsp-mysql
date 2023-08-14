<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>ecomerce</title>
    <style>


    </style>

</head>
<body>
  <div class="fixed-top ">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">former market</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"  data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="ecom.html">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="mailto: bharani99vijay@gmail.com">contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">about us</a>
            </li>
          </ul>
          <a href="user.jsp" ><img style="width: 30px; height: 30px;margin-right: 30px;" src="./img/person.png"></a>
        </div>
      </nav>
    </div>
    <%
     String pname=request.getParameter("pacha");
     String img=request.getParameter("img");
%>
    <section class="py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="row gx-4 gx-lg-5 align-items-center">
                <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="<% out.print(img); %>" alt="..." /></div>
                <div class="col-md-6">
                    <div class="small mb-1">SKU: BST-498</div>
                    <h1 class="display-5 fw-bolder"><% out.print(pname); %></h1>
                    <div class="fs-5 mb-5">
                        <span class="text-decoration-line-through">1kg=</span>
                        <span>Rs.40</span>
                        <br>
                        <p class="lead">Welcome to our online seeds shop, where we offer a wide variety of non-GMO seeds to meet all your gardening needs. Our selection includes seeds for vegetables, fruits, herbs, flowers, and more. Each of our seed packets contains premium quality seeds that are carefully selected and packaged to ensure the highest germination rates.</p>
                        <br>
                        <button style="background-color: limegreen;color: aliceblue;" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
                          buy now
                        </button>
                    </div>
                    <div class="d-flex">
                
                          <!-- Modal -->
                          <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true" style="margin-top: 100px;">
                            <div class="modal-dialog modal-dialog-scrollable" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalScrollableTitle">place order</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <div class="modal-body">
                                         
                                         <form action="buy.jsp" method="post">
  
                                            <div class="form-floating mb-3">
                                              <label for="floatingInput">product name</label>
                                                <input type="name" class="form-control" id="floatingInput" placeholder="name@example.com" name="ProductName" value="<% out.print(pname);%>" readonly required>
                                                
                                              </div>
                                            <div class="form-floating mb-3">
                                              
                                               <%
                                               String name=(String)session.getAttribute("user");
                                               %>
                                                <input type="name" o="getLocation()" class="form-control" id="floatingInput" placeholder="name" name="name" value="<%=name%>" readonly required hidden>
                                              
                                              </div>
                                              <div class="form-floating mb-3">
                                                <label for="floatingInput">killogram</label>
                                                <input type="number" onmouseleave="cal()" value="1" class="form-control" id="price" placeholder="kg" name="killogram" required>
                                                
                                              </div>
                                               <%
                                               String nu=(String)session.getAttribute("userNumber");
                                               %>
                                            <div class="form-floating mb-3">
                                              
                                                <input type="number" class="form-control" id="floatingInput" placeholder="number" name="num" value="<%=nu%>" readonly required hidden>
                                               
                                              </div>
                                               
                                              <div class="form-floating mb-3">
                                                <input type="name" class="form-control" id="dt" value="" name="D/T" placeholder="location" readonly required hidden>
                                              </div>

                                              <div class="form-floating mb-3">
                                                <input type="name" class="form-control" id="key" value="" name="key" placeholder="key" readonly required hidden>
                                              </div>

                                              <div class="form-floating mb-3">
                                                
                                                <input type="name" class="form-control" id="demo" value="" name="location" placeholder="location" readonly required hidden>
                                                
                                              </div>
                                              <button onmouseover="cal()" style="background-color: limegreen;color: aliceblue;" type="submit" class="btn btn-primary">
                                                place order
                                              </button>
                                              <label>price : Rs-</label><input style="border: none;text-decoration: none;" type="number" value="" id="store" name="price"/>
                                            </form>
                                    </div>
                                </div>
                              </div>
                            </div>
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    
      <footer style="height: 120px;" class="bg-dark text-center text-white">
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
              © 2023 Copyright: V.Bharanitha
       </div>
      </footer>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      <script>

        window.onload=function(){
          getLocation();
          dt();
          key();
        }

        var x = document.getElementById("demo");
        
        function getLocation() {
          if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
          } else { 
            x.innerHTML = "Geolocation is not supported by this browser.";
          }
        }
        
        function showPosition(position) {
        document.getElementById("demo").value= "Latitude: " + position.coords.latitude + 
          " Longitude: " + position.coords.longitude;
        }

        function cal(){
         a=document.getElementById("price").value;
         v=a*40;
         document.getElementById("store").value=v;
        }

         function dt(){
          let date = new Date().toLocaleDateString();
          var msg=date+" "+new Date().toLocaleTimeString();
          document.getElementById("dt").value=msg;


         }

         function key(){
          var a=Math.floor(Math.random()*90000) + 10000;
          var key=a.toString();
          document.getElementById("key").value=key;
                  
         }
       
        </script>
   
    
</body>
</html>