<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<html>
<head>
   <title>Unity</title>
   
  
   <%-- <meta charset="utf-8">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> --%>
   
   <link rel="stylesheet" href="<c:url value="/resources/style.css" />">
   <%-- <link rel="stylesheet" href="<c:url value="/css/main.css" />"> --%>
   <%--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous"> --%>
   <script src="<c:url value="/resources/UnityLoader.js" />"></script>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
   <script>
     var unityInstance = UnityLoader.instantiate("unityContainer", "/resources/webGL0415.json");
   </script>
   <script language="javascript">
      function clicked(){
         unityInstance.SendMessage("UIEvent",'CreateButtonClick');
      }
   </script>
   
   <script src="https://kit.fontawesome.com/c176709a0d.js" crossorigin="anonymous"></script>

     
   
   <!--
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script> -->
<!--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> -->
</head>
<body>
   <div id="wrap">
      <div id="header">
         <div id="logo">
            <img src="<c:url value="/resources/caplogo.jpg"/>" width="20%" height="100%">
         </div>
         	<c:choose>
	         	<c:when test="${empty sessionScope.loginUser }">
	    			<div id="signin">
				         	<a class="fas fa-user-circle" id="signInButton" onclick="location.href='/user/login'" style="margin-left:50px; margin-top:5px; font-size:30px">
				         		<span aria-hidden=true></span>
				         	</a>
				         </div>
	         	</c:when>
	    	 	<c:otherwise>
	    	 		<c:choose>
	    	 		<c:when test="${sessionScope.loginUser.id  eq 'admin'}">
	    	 			<div id="signout">
			    	 			<div id="logout">
						         	<a type="button" class="far fa-user-circle" id="signOutButton" data-toggle="modal" data-target="#adminInfoModal" style="margin-left:50px; margin-top:5px; font-size:30px">
						         		<span aria-hidden=true></span>
						         	</a>
						        </div>
						        
					         </div>
					    <div class="modal fade" id="adminInfoModal" role="dialog"  tabindex="-1" aria-labelledby="modal-login-label" aria-hidden="true">
							<div class="modal-dialog modal-custom" role="document">
								<!-- Modal content-->
								<div class="modal-content">
									<!--  <div class="modal-header" style="padding: 30px 30px;"> 					
									</div> -->									 
										<div class="modal-body" style="padding: 5px 10px; height: 80px;">
											<div class="fieldlabel"><label for="userId">${sessionScope.loginUser.id}</label></div> 								        
										    <div class="fieldlabel"><label for="email">${sessionScope.loginUser.email}</label></div>   
											<input type="button" id="crawling" value="crawling" onclick="logoutCall2()">
										</div>
									<div class="modal-footer">
										<input type="button" id="logoutButton" value="로그아웃" onclick="logoutCall()">
									</div>
									
								</div>
							</div>
						</div>
	    	 		</c:when>
	    	 		<c:otherwise>
	    	 			<div id="signout">
			    	 			<div id="logout">
						         	<a class="far fa-user-circle" id="userInfoButton" onclick="userModalPop()" style="margin-left:50px; margin-top:5px; font-size:30px">
						         		<span aria-hidden=true></span>
						         	</a>
						         </div>
					    </div>
					    
					    <div class="modal fade" id="userInfoModal" role="dialog"  tabindex="-1" aria-labelledby="modal-login-label" aria-hidden="true">
							<div class="modal-dialog modal-custom" role="document">
								<!-- Modal content-->
								<div class="modal-content">
									<!--  <div class="modal-header" style="padding: 30px 30px;"> 					
									</div> -->									 
										<div class="modal-body" style="padding: 5px 10px; height: 80px;">
											<div class="fieldlabel"><label for="userId">${sessionScope.loginUser.id}</label></div> 								        
										    <div class="fieldlabel"><label for="email">${sessionScope.loginUser.email}</label></div>   
										</div>
									<div class="modal-footer">
										<input type="button" id="logoutButton" value="로그아웃" onclick="logoutCall()">
									</div>
									
								</div>
							</div>
						</div>
	    	 		</c:otherwise>
	    	 		</c:choose>
			         
			    </c:otherwise>     
         	</c:choose>
      </div>
      
      <div id=content>
         <div class="page" id="left">
            <i class="fas fa-couch" aria-hidden="true" 
            style="margin-left:6px; margin-right: 10px; margin-top:270px; font-size:3em; color:#482b19; width:10%; float:left"; data-toggle="collapse"; href="#list">
            </i>
            
            <div class="page" id="list">
               <div id="kategorie">
                  <div id="find">
                     <ul class="Menu">
                        <li id="type" class="mainMenu">Type
                           <ul class="subMenu">
                              <li id="Type" onclick="findType(this)">Type</li>
                              <li id="식탁  & 책상" onclick="findType(this)">식탁 & 책상</li>
                              <li id="책장 & 선반유닛" onclick="findType(this)">책장 & 선반유닛</li>
                              <li id="서랍" onclick="findType(this)">서랍</li>
                              <li id="의자" onclick="findType(this)">의자</li>
                              <li id="옷장" onclick="findType(this)">옷장</li>
                              <li id="수납장 & 장식장" onclick="findType(this)">수납장 & 장식장</li>
                              <li id="침대" onclick="findType(this)">침대</li>
                              <li id="모든 소파" onclick="findType(this)">모든 소파</li>
                           </ul>
                        </li>

                        <li id="brand" class="brandMenu">Brand
                           <ul class="subMenu">
                              <li id="Brand" onclick="findBrand(this)">Brand</li>
                              <li id="IKEA" onclick="findBrand(this)">IKEA</li>
                              <li id="LIVART" onclick="findBrand(this)">LIVART</li>
                              <li id="브랜드3" onclick="findBrand(this)">추후구현</li>
                              <li id="브랜드4" onclick="findBrand(this)">추후구현</li>
                              <li id="브랜드5" onclick="findBrand(this)">추후구현</li>
                           </ul>
                        </li>

                        <li id="color" class="colorMenu">Color
                           <ul class="subMenu">
                              <li id="Color" onclick="findColor(this)">Color</li>
                              <li id="색깔1" onclick="findColor(this)">색1</li>
                              <li id="색깔2" onclick="findColor(this)">색2</li>
                              <li id="색깔3" onclick="findColor(this)">색3</li>
                              <li id="색깔4" onclick="findColor(this)">색4</li>
                              <li id="색깔5" onclick="findColor(this)">색5</li>
                           </ul>
                        </li>


                        <li id="price" class="price">Price
                           <ul class="priceMenu">
                              <li id="Price" onclick="findPrice(this)">Price</li>
                              <li id="가격1" onclick="findPrice(this)">0~30000</li>
                              <li id="가격2" onclick="findPrice(this)">30001~60000</li>
                              <li id="가격3" onclick="findPrice(this)">60001~90000</li>
                              <li id="가격4" onclick="findPrice(this)">90001~120000</li>
                              <li id="가격5" onclick="findPrice(this)">120001~200000</li>
                           </ul>
                        </li>
                     </ul>
                  </div>

                  <div id="search">
                     <button type="button" class="fas fa-search" onclick = "showList()"
                        style="font-size: 20px;"></button>
                  </div>

               </div>

               <div id="listview"></div>

            </div>

         	</div>
         
         
          <div id="unityContainer" 
          style="width:91%; height:100%; position:absolute; transform: translate(5%, 0);z-index:1;"></div>
      
         <div class="page" id="right">
            <i class="fas fa-cart-arrow-down" aria-hidden="true"
               style="position:relative; float:right; margin-left:10px; margin-right:6px; margin-top: 270px; font-size: 3em; color: #482b19; width: 45px;" data-toggle="collapse"; href="#basket">
            </i>
            <div class="page" id = "basket">
               <div id = "basketview">
                  
               </div>
               <div id = "totalprice">
               </div>
            </div>

         </div>
      </div>
  
      
      <div id="footer">
         <div id="footer_inner" class="clfix">
            <div class="foot_info"> TEL. <font style="color:#075ba4;">010-5035-2500 </font><br/>
                  E-MAIL. rudejr34591@naver.com<br/>
                  Copyright team Crescendo. all right reserved.
              </div>
         </div>
      </div>
   </div>
   
 <script type="text/javascript">
 
 function userModalPop(){
	 $('#userInfoModal').modal('show');
 }
 
 function logoutCall(){
	 $.ajax({
			url : "jquery/logout.do",
			type:'POST',
			success:function(data){
				if(data==1){
					location.href="/";
				}else {
					alert("에러");
					return false;
				}
			},
			error:function(e){
				 alert(e.responseText);	       },
		     complete : function(data) {
		        //alert("complete : " + data);
		     }
			
		})
 }
 
 function logoutCall2(){
	 $.ajax({
			url : "jquery/logout2.do",
			type:'POST',
			success:function(data){
				if(data==1){
					location.href="/";
				}else {
					alert("에러");
					return false;
				}
			},
			error:function(e){
				 alert(e.responseText);	       },
		     complete : function(data) {
		        //alert("complete : " + data);
		     }
			
		})
 }
 
 function findType(e) {
     type = document.getElementById('type');
     type.innerHTML = "<li id = 'type' style = 'list-style:none'>"
           + e.innerText
           + "<ul class = 'subMenu'><li id = 'Type' onclick = 'findType(this)'>Type</li><li id = '식탁  & 책상' onclick = 'findType(this)'>식탁  & 책상</li><li id = '책장 & 선반유닛' onclick = 'findType(this)'>책장 & 선반유닛</li><li id = '서랍' onclick = 'findType(this)'>서랍</li><li id = '의자' onclick = 'findType(this)'>의자</li><li id = '옷장' onclick = 'findType(this)'>옷장</li><li id = '수납장 & 장식장' onclick = 'findType(this)'>수납장 & 장식장</li><li id = '침대' onclick = 'findType(this)'>침대</li><li id = '모든 소파' onclick = 'findType(this)'>모든 소파</li></ul></li>";
  }
  
  function findBrand(e){
     brand = document.getElementById('brand');
     brand.innerHTML = "<li id = 'brand' style = 'list-style:none'>"
           + e.innerText
           +"<ul class='subMenu'><li id='Brand' onclick='findBrand(this)'>Brand</li>   <li id='IKEA' onclick='findBrand(this)'>IKEA</li>   <li id='LIVART' onclick='findBrand(this)'>LIVART</li>   <li id='추후구현' onclick='findBrand(this)'>추후구현</li>   <li id='추후구현' onclick='findBrand(this)'>추후구현</li>   <li id='추후구현' onclick='findBrand(this)'>추후구현</li>   </ul></li>"
  }
  
  function findColor(e){
     color = document.getElementById('color');
     color.innerHTML = "<li id = 'color' style = 'list-style:none'>"
           + e.innerText
           + "<ul class='subMenu'><li id='Color' onclick='findColor(this)'>Color</li><li id='색깔1' onclick='findColor(this)'>색1</li><li id='색깔2' onclick='findColor(this)'>색2</li>   <li id='색깔3' onclick='findColor(this)'>색3</li>   <li id='색깔4' onclick='findColor(this)'>색4</li>   <li id='색깔5' onclick='findColor(this)'>색5</li>   </ul></li>"
  }
  
  function findPrice(e){
     price = document.getElementById('price');
     price.innerHTML = "<li id = 'price' style = 'list-style:none'>"
           + e.innerText
           + "<ul class='subMenu'>   <li id='Price' onclick='findPrice(this)'>Price</li><li id='가격1' onclick='findPrice(this)'>0~30000</li>   <li id='가격2' onclick='findPrice(this)'>30001~60000</li>   <li id='가격3' onclick='findPrice(this)'>60001~90000</li>   <li id='가격4' onclick='findPrice(this)'>90001~120000</li>   <li id='가격5' onclick='findPrice(this)'>120001~200000</li>   </ul></li>"
  }

 
 function showList(){
	 var Type;
     var Brand;
     var Price;
     
     if(type.innerText == Type) {
        Type = "Type";
     }else{
        Type = type.innerText;
     }
     
     if(brand.innerText == Brand){
        Brand = "Brand";
     }else {
        Brand = brand.innerText;
     }
     
     if(price.innerText == Price){
        Price = "Price";
     }else {
        Price = price.innerText;
     }
     
     search(Type, Brand, Price);

     
     //alert(type.innerText +" "+ brand.innerText +" "+ color.innerText +" "+ price.innerText);
     //$("#right #listview").load("/ #right #listview");
  }
 
 window.onload = reloadbasket();
 window.onload = showList();
 
 function addFurn(name){
	 alert("addFurn : " + name);
 }
 
 function listContainerCreate(list){
		var tc = new Array();
		var html = '';
		for(var i = 0 in list){
			tc.push({num : list[i].num, name : list[i].name, brand : list[i].brand, type : list[i].type, price : list[i].price, image : list[i].image, detail : list[i].detail, modeling : list[i].modeling }); 
		}
		if(tc.length == 0){
			$("#listview").empty();
		}else{
			for(key in tc){
				html += '<table border = "1" width="100%">';
			    html += '<tr>';
			    html += '<td rowspan="4" width="20%"><img src="' + tc[key].image + '" height="100"/></td>';
			    html += '<td colspan="3">' + tc[key].brand + '</td>';
			    html += '</tr>';
			    html += '<tr>';
			    html += '<td colspan="3">' + tc[key].name + '</td>';
			    html += '</tr>';
			    html += '<tr>';
			    html += '<td colspan = "3">' + tc[key].price + '원</td>';
			    html += '</tr>';
			    html += '<tr>';
			    html += "<td width='20%'><button onclick = 'insertbasket("+tc[key].num+")' style='width:100%; align:center'>장바구니</button></td>";
			    html += '<td width="20%"><button onclick="add(\'' + tc[key].name + '\')" style=" width:100%; align:center">가구 추가</button></td>';
				html += '<td width="20%"><button onclick = "window.open(\'' + tc[key].detail + '\')" target="_blank" style=" width:100%; align:center">구매 링크</button></td>';
				html += '</tr>';
				html += '</table>';	
			}
			$("#listview").empty()
			$("#listview").append(html);	
		
		}
	}
	function basketContainerCreate(list){
		var tc = new Array();
		var html = '';
		var totalprice = 0;
		for(var i = 0 in list){   
			tc.push({id : list[i].id, num : list[i].num, name : list[i].name, brand : list[i].brand, price : list[i].price, image : list[i].image, detail : list[i].detail, count : list[i].count}); 
			totalprice += list[i].price * list[i].count;
		}
		if(tc.length == 0){
			$("#totalprice").empty().append("<label style = 'float:right; font-size:25px; margin-right:30px;'>총 금액 :   "+totalprice+" 원</label>");
			$("#basketview").empty();
		}else{
			for(key in tc){
				html += '<table border = "1" width="100%">';
			    html += '<tr>';
			    html += '<td rowspan="4" width="20%"><img src="' + tc[key].image + '" height="100"/></td>';
			    html += '<td colspan="3">' + tc[key].brand + '</td>';
			    html += '</tr>';
			    html += '<tr>';
			    html += '<td colspan="3">' + tc[key].name + '</td>';
			    html += '</tr>';
			    html += '<tr>';
			    html += '<td colspan = "3">' + tc[key].price + '원</td>';
			    html += '</tr>';
			    html += '<tr>';
			    html += "<td width='20%'><button onclick = 'count("+tc[key].num+","+tc[key].count+",1)' style = 'float:left;'>-</button>&nbsp;&nbsp;<label>"+tc[key].count+"</label><button onclick = 'count("+tc[key].num+","+tc[key].count+",2)' style = 'float:right;'>+</button></td>";
			    html += "<td width='20%'><button onclick = 'deletebasket("+tc[key].num+")' style=' width:100%; align:center'>삭제</button></td>";
			    html += '<td width="20%"><button onclick ="window.open(\'' + tc[key].detail + '\')" target="_blank" style=" width:100%; align:center">구매 링크</button></td>';	
				html += '</tr>';
				html += '</table>';
			}
			$("#basketview").empty().append(html);;
			$("#totalprice").empty().append("<label style = 'float:right; font-size:25px; margin-right:30px;'>총 금액 :   "+totalprice+" 원</label>");
		}		
	}

 function search(type, brand, price){
	 

		$.ajax({
			url : "list/search.do",
			type:'POST',
			data :  { Type : type,
				Brand : brand,
				Price : price
			},
			success:function(check){
				listContainerCreate(check);
				//alert("fin");
			},
			error:function(e){
				 alert(e.responseText);	       },
		     complete : function(data) {
		        //alert("complete : " + data);
		     }
			
		})
	}
 
 function reloadbasket(){
     var reloadbasket = "${sessionScope.loginUser.id}";
     if(reloadbasket != ""){
        $.ajax({
           url : "/cart/basket.do",
           type : 'POST',
           data : {reloadID : reloadbasket},
           success : function(check){
              basketContainerCreate(check);
           }
        })
     }else{
     }
  }
 
 function insertbasket(furnNum){
     var insertbasket = "${sessionScope.loginUser.id}";
     if(insertbasket != ""){
        $.ajax({
           url : "/cart/insert.do",
           type : 'POST',
           data : {insertID : insertbasket, insertFurn : furnNum},
           success : function(check){
              if(check == 0) alert("이미 추가되어 있는 가구");
              else {
                 alert("장바구니 담기 성공");
                 reloadbasket();
              }
           }
        })
     }else{
     }
  }

 function deletebasket(furnNum){
     var deletebasket = "${sessionScope.loginUser.id}";
     if( deletebasket != ""){
        $.ajax({
           url : "/cart/delete.do",
           type : 'POST',
           data : {deleteID : deletebasket, deleteFurn : furnNum},
           success : function(check){
              reloadbasket();
           }
        })
     }else{
     }
  }      

 function count(num, count, type){
		var changebasket = "${sessionScope.loginUser.id}";
		var check
		if(type ==1){
			if(count == 1){
				deletebasket(num);
			}else{
				check = count - 1;
			}
		}else{
			check = count +1;
		}
		$.ajax({
			url : "/cart/count.do",
			type : 'POST',
			data : {changeID : changebasket, changeNum: num, count : check},
			success : function(check){
				if(check == 1) {
					reloadbasket();
				}
			}
		})
	}

</script>
</body>
</html>