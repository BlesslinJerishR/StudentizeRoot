<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Studentizer.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Studentizer - CRUD Web App for Students.</title>
    <!-- Ticon -->
    <link rel="icon" href="/az.png" type="image/icon png" />
    <%-- Bootstrap --%>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <!-- Gfonts Roboto-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="Style.css" />
</head>

<body>

    <%--<h1>Hello Studentizer</h1>--%>

        <div style="padding: 2% 20% 0 2%;position: relative; left: 2%;">
            <h1> Studentizer - CRUD. </h1><p></p><h4 style="background: #FFF;color: #000; width: 38%;"> &nbsp; Web App for students who code</h4>
        </div>
            <img src="canaot.png" alt="canarys" style="position: static; margin-left: 50px; top: 100px; height: 350px;"/>
            <p></p>
            <div id="foot" style="color: #FFFFFF; font-family: 'Roboto'; position: relative !important; top: -440px; padding-bottom: 14px; left: 25%">
            <p align="center" style="font-size: 16px !important;">
                <img src="jsg.png" height="30" style="position: relative; left: 13px; top: -5px;"/><a href="https://github.com/BlesslinJerishR/" target="_blank" rel="nofollow noopener" style="text-decoration: none !important;"><span style="color: #00FF00;"> &nbsp; &nbsp; &nbsp; Blesslin Jerish R</span></a>
            </p>
        </div>
<div style="position: relative; left: 18%">
        <form id="form1" runat="server" style="padding: 0 25% 0 20%; position: relative; margin-left: 400px;top: -440px; text-align: right;">
                <div class="mb-3">
                    <label class="form-label">Employee ID <span style="color: #00FF00">•</span></label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label">Name <span style="color: #00FF00">•</span></label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label">Age <span style="color: #00FF00">•</span></label>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label">Place <span style="color: #00FF00">•</span></label>            
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label">Gmail <span style="color: #00FF00">•</span></label>            
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label">Salary <span style="color: #00FF00">•</span></label>        
                    <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
                </div>
                <br/>
                <div style="position: static;top: 92%;left: 550px;">
                    <asp:Button ID="btnAdd" class="btn btn-primary" style="background: #FFFF00; color: #000; border: none;" Text="Add" runat="server" OnClick="btnAdder"/> &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="btnUpp" class="btn btn-primary" style="background: #00FFFF; color: #000; border: none;" Text="Update" runat="server" OnClick="btnUpper"/> &nbsp; &nbsp;&nbsp; 
                    <asp:Button class="btn btn-primary" style="background: #FF0000; border: none; " Text="Delete" runat="server" OnClick="btnDeleter" />
                </div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentDBConnectionString %>" SelectCommand="SELECT * FROM [StudDetails]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="30" ForeColor="Black" GridLines="Vertical" style="text-align: center; align-items: center; position: absolute; left: 4%; top: 470px;">
            <AlternatingRowStyle BackColor="#FFFF00" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </form>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
