﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BlogWeb.Default" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Resume - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="Dosyalar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"> -->
    <link href="Dosyalar/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->

    <!-- <link href="css/resume.min.css" rel="stylesheet"> -->
    <link href="Dosyalar/css/resume.min.css" rel="stylesheet" />
  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">Clarence Taylor</span>
        <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="Dosyalar/img/profile.jpg" alt="">
        </span>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">Hakkımda</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#experience">Deneyimlerim</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#education">Eğitim Hayatım</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#skills">Yeteneklerim</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#interests">Hobilerim</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#awards">Sertifikalarım</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container-fluid p-0">

      <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
        <div class="my-auto">
          <h1 class="mb-0">
    <asp:Label ID="Label1" runat="server" Text='<%# Eval("AD") %>'></asp:Label>
            <span class="text-primary">
        
              
        <asp:Label ID="Label2" runat="server" Text='<%# Eval ("SOYAD") %>'></asp:Label></span>
          </h1>
          <div class="subheading mb-5"> <p></p>
              Adres: 
            <asp:Label ID="Label3" runat="server" Text='<%# Eval ("ADRES") %>'></asp:Label>
              <p></p>
              Telefon:
              <asp:Label ID="Label4" runat="server" Text='<%# Eval ("TELEFON") %>'></asp:Label>
            <a href="#">
                <p></p>
                Mail:
                <asp:Label ID="Label5" runat="server" Text='<%# Eval ("MAIL") %>'></asp:Label></a>
          </div>
          <p class="lead mb-5">
              Hakkımda:
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval ("KISANOT") %>'></asp:Label></p>
          <div class="social-icons">
            <a href="#">
              <i class="fab fa-linkedin-in"></i>
            </a>
            <a href="#">
              <i class="fab fa-github"></i>
            </a>
            <a href="#">
              <i class="fab fa-twitter"></i>
            </a>
            <a href="#">
              <i class="fab fa-facebook-f"></i>
            </a>
          </div>
        </div>
            </ItemTemplate>
        </asp:Repeater>
      </section>

      <hr class="m-0">

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">

          <h2 class="mb-5">Deneyimlerim</h2>
              <asp:Repeater ID="Repeater2" runat="server">
        <ItemTemplate>
        <div class="my-auto">
          

          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("BASLIK") %>'></asp:Label></h3>
              <div class="subheading mb-3">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("ALTBASLIK") %>'></asp:Label></div>
              <p>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("ACIKLAMA") %>'></asp:Label></p>
            </div>
            <div class="resume-date text-md-right">
              <span class="text-primary">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("TARIH") %>'></asp:Label></span>
            </div>
          </div>

    

      

        </div>
          </ItemTemplate>
          </asp:Repeater>
      </section>

      <hr class="m-0">

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
           <h2 class="mb-5">Eğitim Hayatım</h2>
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>

                
        <div class="my-auto">
         

          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">'<%# Eval("BASLIK") %>'</h3>
              <div class="subheading mb-3">'<%# Eval("ALTBASLIK") %>'</div>
              <div>'<%# Eval("ACIKLAMA") %>'</div>
              <p>'<%# Eval("GNOT") %>'</p>
            </div>
            <div class="resume-date text-md-right">
              <span class="text-primary">'<%# Eval("TARIH") %>'</span>
            </div>
          </div>

          <div class="resume-item d-flex flex-column flex-md-row">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">James Buchanan High School</h3>
              <div class="subheading mb-3">Technology Magnet Program</div>
              <p>GPA: 3.56</p>
            </div>
            <div class="resume-date text-md-right">
              <span class="text-primary">August 2002 - May 2006</span>
            </div>
          </div>

        </div>
                    </ItemTemplate>
                </asp:Repeater>
      </section>

      <hr class="m-0">





      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
        <div class="my-auto">
          <h2 class="mb-5">Skills</h2>

          <div class="subheading mb-3">Programlama Dilleri...</div>
          <ul class="list-inline dev-icons">
            <li class="list-inline-item">
              <i class="fab fa-html5"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-css3-alt"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-js-square"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-angular"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-react"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-node-js"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-sass"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-less"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-wordpress"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-gulp"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-grunt"></i>
            </li>
            <li class="list-inline-item">
              <i class="fab fa-npm"></i>
            </li>
          </ul>

          <div class="subheading mb-3">İş Akışı</div>
            <asp:Repeater ID="Repeater6" runat="server">
                <ItemTemplate>


                
          <ul class="fa-ul mb-0">
            <li>
              <i class="fa-li fa fa-check"></i>
            <asp:Label ID="Label13" runat="server" Text='<%# Eval("YETENEK") %>'></asp:Label>
              </li>
          
          
          </ul>
        </div>
                    </ItemTemplate>
          </asp:Repeater>
      </section>












      <hr class="m-0">

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
          <asp:Repeater ID="Repeater4" runat="server">
              <ItemTemplate>
        <div class="my-auto">
          <h2 class="mb-5">Hobilerim</h2>
          <p class="mb-0">
            <asp:Label ID="Label11" runat="server" Text='<%# Eval("HOBI") %>'></asp:Label></p>
        </div>
                  </ItemTemplate>
              </asp:Repeater>
      </section>

      <hr class="m-0">

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
          <h2 class="mb-5">Sertifikalarım</h2>
                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>

                   
        <div class="my-auto">
          
          <ul class="fa-ul mb-0">
            <li>
              <i class="fa-li fa fa-trophy text-warning"></i>
              <asp:Label ID="Label12" runat="server" Text='<%# Eval("SERTIFIKA") %>'></asp:Label>
            </li>
           
      
         
            
          </ul>
        </div>
                         </ItemTemplate>
                    </asp:Repeater>
      </section>

    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/resume.min.js"></script>

  </body>

</html>
