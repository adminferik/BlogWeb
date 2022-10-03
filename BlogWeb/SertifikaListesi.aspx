<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SertifikaListesi.aspx.cs" Inherits="BlogWeb.SertifikaListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


      <form id="Form1" runat="server">

    <table class="table table-bordered">
        <tr>
            <td>ID</td>
            <td>Sertifika</td>

            <td>İşlemler</td>
           
        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("SERTIFIKA") %></td>
                      

                        <td>
     <asp:HyperLink NavigateUrl='<%# "SertifikaSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
     <asp:HyperLink NavigateUrl='<%# "SertifikaGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </tbody>
        
    </table>

            <asp:HyperLink NavigateUrl="~/SertifikaEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">YEni Sertifika Ekle</asp:HyperLink>

    </form>




</asp:Content>
