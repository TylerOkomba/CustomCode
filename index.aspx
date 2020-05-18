<%@Language="VB" AutoEventWireup="false" Debug="true"%>

<html>
<head runat="server">
<title>Vacation Destination </title>
<link rel="stylesheet" type="text/css" href="assignment1_styles.css">
<link href="https://fonts.googleapis.com/css?family=Karla" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
$('#data').hide();
$('#view').click(function(){
$('#info').hide();
$('#data').show();
});// end of function to display data

});
</script>
</head>
 <style>


</style> 

<body>
<div id="wrapper">
<a href="index.aspx">
<div id="title" style="margin-bottom: 100px;"> Vacation <br> Destination </div>
</a>
<div id="info">
<div id="heading">
<h1> Take the headache out of vacation planning </h1>
</div>
<div id="maininfo">
<p>Vacation Destination allows users to find living arrangements wherever they are traveling. Users simply enter in their desired destination, price range, and number of guest, and their information is posted on our website. Next, certified local hotels and Air bnb's can view user information to check if they are availible to cater to that customer. Quick and hassle free! </p>
</div>
<BUTTON id="view"> <p> view user info <p> </BUTTON>
<a href="user.html">
<div id="find">
<p> find a destination </p>
</div>
</a>
</div>
<a href="datagrideditor.aspx" style="color:blue; position: absolute; left: 10%; top:92%; font-family: helvetica; font-size: 18px;"> Administration Data Editor 
 <i class="large material-icons">grid_on</i> </a>

<form id="form1" runat="server">

<div id=list>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SQLwww %>" 
            SelectCommand="select * from Booking">
    </asp:SqlDataSource>

   <div id="data" style="overflow: scroll;">
      <div id="FormTitle"> Guest Information </div>
		<asp:Repeater ID="Repeater1"  runat="server"  DataSourceID="SqlDataSource1" >
                <ItemTemplate>
                  <div class="holder"
	               <p>  
                 <div class="name">   
                  <i class="large material-icons">account_circle</i>
                    <asp:Label ID="Label1" runat="server" Text="<%# Bind('Fname')%>" />,
                   <asp:Label ID="label2" runat="server" Text="<%# Bind('Lname')%>" />
                   <br>
                 </div>
                 <div class="loc">
                   <asp:Label ID="label3" runat="server" Text="<%# Bind('city')%>" />,
                   <asp:Label ID="label4" runat="server" Text="<%# Bind('state')%>" />
                   <br>
                 </div>
                 <div class="price">
                   $<asp:Label ID="label5" runat="server" Text="<%# Bind('PriceMin')%>" />-$<asp:Label ID="label6" runat="server" Text="<%# Bind('PriceMax')%>" />
                </p>
              </div>
            </div>
                
                </ItemTemplate>
            </asp:Repeater>


       

    </div>

</form>
</div>
</div>

	</body>
	</html>

