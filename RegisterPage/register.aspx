<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="RegisterPage.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body style="background-color: azure;
height:100vh;">
    <form id="form1" runat="server"  style="align-items:center; justify-content:center;display:flex;height:100%">
                <div class="col-md-12 col-md-offset-12 col-s-5 col-xs-offset-0" >
            <div class="container text-center col-12 col-lg-4" style="background-color:lightblue;height:500px;padding-top:60px; border-radius:25px">

                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12"><asp:TextBox ID="TextBox1" placeholder="First Name" class="form-control" runat="server" ></asp:TextBox> </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12 " role="alert"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="The field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12"><asp:TextBox ID="TextBox2" placeholder="Last Name" class="form-control" runat="server" ></asp:TextBox> </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12 " role="alert"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="The field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12"><asp:TextBox ID="TextBox3" placeholder="User Name" class="form-control" runat="server" ></asp:TextBox> </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12 " role="alert"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="The field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12"><asp:TextBox ID="TextBox4" placeholder="Mail" class="form-control" runat="server" ></asp:TextBox> </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12 " role="alert"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="The field is required." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div><br />
                </div> 
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12"><asp:TextBox ID="TextBox5" placeholder="Password" class="form-control" runat="server" TextMode="Password" ></asp:TextBox> </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12 " role="alert"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="The field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div> 
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12"><asp:TextBox ID="TextBox6" placeholder="Password Repeat" class="form-control" runat="server" TextMode="Password" ></asp:TextBox> </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12 " role="alert"> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="The field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Password Matching Error" ForeColor="Red"></asp:CompareValidator>
                    </div><br />
                </div>
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12"><asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Register" OnClick="Button1_Click" /> 
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

    </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
