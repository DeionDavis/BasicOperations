<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Manage.aspx.cs" Inherits="Student_Manage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>
<style>
/* Full-width input fields */
.Textentry {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
.signupbtn {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}


/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<body style="height: 358px; width: 586px">

<h2> Student management </h2>
    <center>
        <form id="form1" runat="server">
        <div class="container">
            <label><b>Name</b></label>

    <asp:TextBox runat="server" ID="txtName" CssClass="Textentry" placeholder="Enter Name"></asp:TextBox>

    <label><b>Age</b></label>
        <asp:TextBox runat="server" ID="txtAge" CssClass="Textentry" placeholder="Enter age"></asp:TextBox>

    <label><b>Roll number</b></label>
    
        <asp:TextBox runat="server" ID="txtrollno" CssClass="Textentry" placeholder="Enter rollno"></asp:TextBox>
            <asp:DropDownList ID="DrpCourse" CssClass="Textentry" runat="server">
            </asp:DropDownList>
    <div class="clearfix">
      <asp:Button ID="BtnSubmit" runat="server" CssClass="signupbtn" Text="Save" 
            onclick="BtnSubmit_Click" />

        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="txtAge" ErrorMessage="In valid age" ForeColor="Red" 
            MaximumValue="25" MinimumValue="15"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtName" ErrorMessage="Name Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>

      <asp:Button ID="Btncancel" runat="server" CssClass="signupbtn" Text="Cancel" />
    </div>
  </div>
        </form>

</center>

</body>
</html>
