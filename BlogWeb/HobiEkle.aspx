<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HobiEkle.aspx.cs" Inherits="BlogWeb.HobiEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


        <form id="Form1" runat="server">
        <div class="form-group">   
            <div>
                <asp:Label ID="Label1" runat="server" Text="Hobi"></asp:Label>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />  

       

             

                  <div>

      

                      <!--

                                      <asp:Label ID="Label7" runat="server" Text="Fotoğraf"></asp:Label>

                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br /> 

            -->

            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click1"    />
            
        </div>
            </div>
    </form>
</asp:Content>
