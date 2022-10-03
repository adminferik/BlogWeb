<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEgitimGuncelle.aspx.cs" Inherits="BlogWeb.AdminEgitimGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


     <form id="Form1" runat="server">
        <div class="form-group">   

               <div>
                <asp:Label ID="Label6" runat="server" Text="ID"></asp:Label>

                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />  


            <div>
                <asp:Label ID="Label1" runat="server" Text="Başlık"></asp:Label>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />  

               <div>
                <asp:Label ID="Label2" runat="server" Text="Alt Başlık"></asp:Label>

                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />  

               <div>
                <asp:Label ID="Label3" runat="server" Text="Açıklama"></asp:Label>

                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />  
            


                 <div>
                <asp:Label ID="Label4" runat="server" Text="Tarih"></asp:Label>

                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />  




                      <div>
                <asp:Label ID="Label5" runat="server" Text="Genel Not Ortalaması"></asp:Label>

                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />



                  <div>

      

          

            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" />
            
        </div>
            </div>
    </form>


</asp:Content>
