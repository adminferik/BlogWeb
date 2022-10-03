<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UyelerListesi.aspx.cs" Inherits="BlogWeb.UyelerListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">





       
    <form id="Form1" runat="server">

    <table class="table table-bordered">
        <tr>
            <td>ID</td>
            <td>UYEAD</td>
            <td>UYESOYAD</td>
            <td>UYETELEFON</td>
            <td>UYETCKIMLIK</td>
            <td>UYEMAIL</td>
            <td>UYEKAYITTARIH</td>
            <td>UYEBITISTARIH</td>


           
        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("UYEAD") %></td>

                        <td><%# Eval("UYESOYAD") %></td>
                        <td><%# Eval("UYETELEFON") %></td>
                        <td><%# Eval("UYETCKIMLIK") %></td>
                        <td><%# Eval("UYEADRES") %></td>
                        <td><%# Eval("UYEMAIL") %></td>
                        <td><%# Eval("UYEKAYITTARIH") %></td>
                        <td><%# Eval("UYEBITISTARIH") %></td>
                      

                        <td>
     <asp:HyperLink NavigateUrl='<%# "UyeSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
     <asp:HyperLink NavigateUrl='<%# "UyeGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </tbody>
        
    </table>

            <asp:HyperLink NavigateUrl="~/UyeEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">Üye Ekle</asp:HyperLink>

    </form>



</asp:Content>
