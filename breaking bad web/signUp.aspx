<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="breaking_bad_web.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>sign up</title>
    <style type>
    body {
        position: relative;
        margin: 0;
        padding: 0;
        height: 100vh;
        overflow: hidden;
    }
            body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('images/angry dude.jpg');
            background-size: cover;
            z-index: -1;
        }

   #middleRectangle1 {
       background-color: black;
       height: 1100px;
       bottom: 0%;
       width: 600px;
       position: absolute;
       top: 0%;
       left: 15%;
       z-index: 0;
       filter: drop-shadow(0px -5px 150px);
   }
   p {
       color: ghostwhite;
       font-family: Copperplate, Papyrus, fantasy;
   }
   #title {
       font-size: 45px;
       color: ghostwhite;
       font-family: Copperplate, Papyrus, fantasy;
       z-index: 1;
       position: absolute;
       top: 1%;
       left: 35%;
   }
   .textBox{
       border-radius: 15px;
       margin-bottom: 3px;
       width: 410px;
       height: 35px;
       background-color: ghostwhite;
       font-size: 17px;
       font-family: Copperplate, Papyrus, fantasy;
   }
   .inputFields {
       display: flex;
       flex-direction: column;
       position: absolute;
       top: 8%;
       left: 16%;
       font-family: Copperplate, Papyrus, fantasy;
   }
   .radioButtonList {
       color: ghostwhite;
       font-family: Copperplate, Papyrus, fantasy;
   }
   
   .submitButton{
           border-color: black;
           border-radius: 15px;
           background-color: transparent;
           color: ghostwhite;
           font-family: Copperplate, Papyrus, fantasy;
           font-size: 15px;
           margin-left: 124px;
           margin-top: 0px;
   }
   .submitButton:hover{
       cursor: pointer;
   }
</style>
</head>
        <script>
            function submitForm(event) {
                event.preventDefault(); // Prevent form from submitting

                let num = 0;
                let errorMessage = document.getElementById("errorMessage");

                let userName = document.getElementById("userName").value;
                let firstName = document.getElementById("firstName").value;
                let lastName = document.getElementById("lastName").value;
                let password = document.getElementById("password").value;
                let rating = document.getElementById("rating").value;
                let sexChoice = document.getElementById("sexChoice").selectedIndex;
                let state = document.getElementById("state").selectedIndex;

                if (userName === "") num++;
                if (firstName === "") num++;
                if (lastName === "") num++;
                if (password === "") num++;
                if (rating === "") num++;
                if (sexChoice === -1) num++;
                if (state === 0) num++;

                if (num > 2) {
                    errorMessage.innerText = "almost nothing is filled";
                } else if (num < 2 && num > 0) {
                    errorMessage.innerText = `you need to fill ${num} more`;
                }
            }
    </script>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div id="middleRectangle1">
                <h1 id="title">sign up</h1>
      <div class="inputFields">
        <div>
            <p>first name:</p>
            <asp:TextBox runat="server" CssClass="textBox" ID="firstName"></asp:TextBox>
        </div>

        <div>
            <p>last name:</p>
            <asp:TextBox runat="server" CssClass="textBox" ID="lastName"></asp:TextBox>
        </div>

        <div>
            <p>username:</p>
            <asp:TextBox runat="server" CssClass="textBox" ID="userName"></asp:TextBox>
        </div>

        <div>
            <p>password:</p>
            <asp:TextBox runat="server" CssClass="textBox" ID="password"></asp:TextBox>
        </div>

        <div>
            <p>sex:</p>
            <asp:RadioButtonList ID="sexChoise" CssClass="radioButtonList" runat="server">
                <asp:ListItem>male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
                <asp:ListItem>other</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>
            <p>i rate the show:</p>
            <asp:TextBox runat="server" CssClass="textBox" ID="rating"></asp:TextBox>
        </div>
        <div>
            <p>i...</p>
            <asp:DropDownList ID="state" runat="server" CssClass="textBox">
                <asp:ListItem>just started watching</asp:ListItem>
                <asp:ListItem>am on seasons 2-3</asp:ListItem>
                <asp:ListItem>am on season 5</asp:ListItem>
                <asp:ListItem>watched it multiple time(CHAD)</asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Label ID="errorMessage" runat="server" Width="400px" Height="23px" style="margin-top: 25px; font-family: Copperplate, Papyrus, fantasy; color: ghostwhite;"></asp:Label>
        <asp:Button runat="server" Text="submit" OnClick="submit" CssClass="submitButton" ID="submitButton" Height="31px" Width="165px"/>
        </div>
    </div>
</div>
    </div>
    </form>
</body>
</html>
