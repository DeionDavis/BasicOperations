<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Display.aspx.cs" Inherits="Student_Display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Height="355px" Width="641px" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" 
                    SortExpression="StudentID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                
                                                                     <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:ImageButton runat="server" ID="btnEdit" CommandArgument='<%# Eval("StudentID") %>'
                                                            ImageUrl="~/images/edit.png" CommandName="Edit" ToolTip="Edit Gadgets" />
                                                        <asp:ImageButton runat="server" ID="btnDelete" CommandArgument='<%# Eval("StudentID") %>'
                                                            ImageUrl="~/images/delete.png" CommandName="Delete" 
                                                            OnClientClick="return confirm('Are you sure you want to delete this StudentID?');" ToolTip ="Delete Student"/>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
