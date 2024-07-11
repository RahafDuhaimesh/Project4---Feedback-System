﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditeStudentCourses.aspx.cs" Inherits="Feedback_Sys.EditeStudentCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Index - Mentor Bootstrap Template</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet">

    <style>
        .hero {
            padding: 290px 0;
        }

        .me-auto {
            margin-right: auto !important;
            display: flex;
            align-items: baseline;
        }

        span#welcome {
            margin-left: 2em;
        }

        .py-3 my-4 {
            --background-color: #f9f9f9;
        }

        .footerLogo h1 {
            font-weight: 700;
            font-size: 30px;
            text-align: center;
            letter-spacing: 1px;
            text-transform: uppercase;
            color: #388da8;
        }

        .social-links a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 1px solid rgba(68, 68, 68, 0.5); /* rgba for transparent color */
    font-size: 16px;
    color: rgba(68, 68, 68, 0.3); / rgba for transparent color /
    margin-right: 10px;
    transition: 0.3s;
}

    .social-links a:hover {
        color: #2a6b80; /* rgba for transparent color */
        border: 1px solid #5fcf80; /*rgba for transparent color */
        }

        .social-links.mt-4 {
            display: flex;
            justify-content: center;
        }

        h1.sitename {
            color: #388da8;
        }

        .color {
            background-color: #f9f9f9;
        }

        .my-4 {
            margin-top: 1.5rem !important;
            margin-bottom: 0rem !important;
        }

        .py-3 {
            padding-top: 2rem !important;
            padding-bottom: 1rem !important;
        }

        @media (max-width: 1000px) {
            span#welcome {
                display: none;
            }
        }

        .coursesPic {
            height: 150px;
            width: 100%;
            display: block;
            margin: 0 auto; /* Centers the image horizontally */
        }

        #javaPic {
            width: 85%;
        }

        #cssPic {
            width: 70%;
        }

        .btn-primary {
            background-color: #19517e;
            border: none;
            height: 33px;
            font-size: 14px;
        }

        .course-item {
            margin-bottom: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <header id="header" class="header d-flex align-items-center sticky-top">
      <div class="container-fluid container-xl position-relative d-flex align-items-center">
          <div class="me-auto">
              <a href="index.html" class="logo d-flex align-items-center ">
                  <!-- Uncomment the line below if you also wish to use an image logo -->
                  <!-- <img src="assets/img/logo.png" alt=""> -->
                  <h1 class="sitename">TECHLEARN HUB</h1>
              </a>
              <asp:Label ID="welcome" runat="server" Text="Label" Visible="false"></asp:Label>
          </div>
          <nav id="navmenu" class="navmenu">
              <ul>

                  <li>
                      <asp:HyperLink ID="homeLink" runat="server" NavigateUrl="index.aspx" Text="Home" class="active" /></li>
                  <li>
                      <asp:HyperLink ID="aboutLink" runat="server" NavigateUrl="about.aspx" Text="About" /></li>

                  <li>
                      <asp:HyperLink ID="coursesLink1" runat="server" NavigateUrl="Feedback.aspx" Text="Courses" Visible="false" /></li>
                  <li>
                      <asp:HyperLink ID="adminDashLink1" runat="server" NavigateUrl="adminDashboard.aspx" Text="Admin Dashboard" Visible="false" /></li>
                  <li>
                      <asp:HyperLink ID="teamLink1" runat="server" NavigateUrl="Trainers.aspx" Text="Trainers" /></li>


                  <li>
                      <asp:HyperLink ID="contactLink1" runat="server" NavigateUrl="contact.aspx" Text="Contact" /></li>
              </ul>
              <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
          </nav>
          <asp:HyperLink ID="logInLink" runat="server" class="btn-getstarted" NavigateUrl="Login.aspx">Login</asp:HyperLink>

      </div>
  </header>
  <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                Edit Student Information
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title">Student Name</h5>
                        <asp:TextBox ID="inputStudentName" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                    </div>
                    <div class="col">
                        <h5 class="card-title">Email</h5>
                        <asp:TextBox ID="inputStudentEmail" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <p class="card-text">National ID</p>
                        <asp:TextBox ID="inputStudentNationalId" runat="server" CssClass="form-control mb-3" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="col">
                        <p class="card-text">Student ID</p>
                       
                        <asp:TextBox ID="inputStudentId" runat="server" CssClass="form-control mb-3" Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <p class="card-text">Age</p>
                        <asp:TextBox ID="inputStudentAge" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                    </div>
                    <div class="col">
                        <p class="card-text">Phone Number</p>
                        <asp:TextBox ID="inputStudentPhone" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <p class="card-text">Bio</p>
                        <asp:TextBox ID="inputStudentBio" runat="server" CssClass="form-control mb-3" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div>
                </div>

                <div id="studentCourses" class="mb-3">
                    <p>Registered Courses:</p>
                    <asp:CheckBox ID="courseJava" runat="server" Text="Java" CssClass="form-check-input me-2" />
                    <%--<label for="courseJava" class="form-check-label">Java</label>--%><br />
                    <asp:CheckBox ID="courseCss" runat="server" Text="CSS" CssClass="form-check-input me-2" />
                   <%-- <label for="courseCss" class="form-check-label">CSS</label>--%><br />
                    <asp:CheckBox ID="courseJavascript" runat="server" Text="JavaScript" CssClass="form-check-input me-2" />
                    <%--<label for="courseJavascript" class="form-check-label">JavaScript</label>--%> <br />
                    <asp:CheckBox ID="coursePython" runat="server" Text="Python" CssClass="form-check-input me-2" />
                    <%--<label for="coursePython" class="form-check-label">Python</label><br />--%>
                </div>

                <asp:Button ID="saveChangesBtn" runat="server" Text="Save Changes" CssClass="btn btn-primary mt-3" OnClick="saveChangesBtn_Click" />
            </div>
        </div>

        <div class="toast-container position-fixed top-0 end-0 p-3">
            <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-header">
                    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
                <div class="toast-body">
                    Student Info has been updated successfully.
                </div>
            </div>
        </div>
    </div>
          <div class="color">
      <div class="container">
          <footer class="py-3 my-4">
              <a href="index.html" class="footerLogo">
                  <h1 class="sitename">TECHLEARN HUB</h1>
              </a>
              <div class="social-links  mt-4">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
              </div>
              <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                  <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Home</a></li>
                  <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">About</a></li>
                  <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Trainers</a></li>
                  <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Contact</a></li>
              </ul>
              <p class="text-center text-body-secondary">&copy; 2024 Company, Inc</p>
          </footer>
      </div>
  </div>


    </form>
</body>
</html>
