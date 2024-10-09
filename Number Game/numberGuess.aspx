<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="numberGuess.aspx.cs" Inherits="Number_Game.numberGuess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Number Guess</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
</head> 
<body>
    <form id="form1" runat="server" class="position-absolute top-50 start-50 translate-middle">
        <div>
            <center><h1 class="h3 mb-3 font-weight-normal">Welcome to Number Game</h1></center>
            <asp:Label ID="lblComputerGuess" runat="server" Text="I'm thinking of a number between 1 and 100 : "></asp:Label><br />
            <div class="form-floating">
                <asp:Label ID="lblUserGuess" runat="server" Text="Tell Me What Number I Guess"></asp:Label><br />
                <asp:Label ID="lblattempts" runat="server" Text="You have 10 attempts to guess it." Font-Bold="true"></asp:Label><br />
                <asp:TextBox class="form-control" ID="txtNumberGuess" runat="server" placeholder="Enter a number : "></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorNumber" runat="server" ErrorMessage="Enter number only" ForeColor="Red" ControlToValidate="txtNumberGuess" ValidationExpression="[0-9]+" Display="Dynamic" Font-Size="Small" ></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredNumber" runat="server" ErrorMessage="please Enter number" ForeColor="Red" ControlToValidate="txtNumberGuess" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
            </div>
            <asp:Button ID="btnSubmitValue" class="btn btn-primary w-100 py-2" runat="server" Text="Entered Number" OnClick="btnSubmitValue_Click"/>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
