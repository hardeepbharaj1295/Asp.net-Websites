<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homeone.aspx.cs" Inherits="Homeone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
        }
        .style5
        {
        font-size: medium;
        font-style: italic;
    }
        .style6
        {
            font-size: x-large;
        }
    .style7
    {
        text-decoration: underline;
    }
    .style8
    {
        text-decoration: underline;
        font-family: Algerian;
        font-size: xx-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="images/11.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="images/library.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="images/13.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <div>
       </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

     
     <center>

<table style="width: 100%; text-align:center;">

<tr>
<td >


   <span class="style1"></span> Our Library Management Service caters to both home and small


    organizational libraries. Our online software lets you create multiple 
    libraries, catalog books, question papers etc. Books are just the beginning.Our 
    dedicated staff can help you to find what you need, access primary research 
    material, and develop your study and research skills.</tr>
<tr>
<td >


    <br />


</td>
<tr>
<td>



    <strong>



    <asp:Label ID="Label1" runat="server" Text="Library Services--:" CssClass="style6" 
        style="font-size: x-large; text-decoration: underline;"></asp:Label>
    </strong> <span class="style1">You need to know about borrowing, renewing and returning the items you need 
    and how to request items that we don&#39;t have in libraries.</span><br />
    <span class="style7"><strong class="style6">Study Support--:</strong></span>
    <span class="style1">Library supports taught students to develop academic 
    skills,through online resources, workshops,
    one-to-one appointments,drop-in sessions and teaching in the curriculum.</span><br />



</td>
</tr>
<tr>
<td>




    

    


</table>

<table >
        <tr>
            <td class="style3">
                <asp:Image ID="Image2" runat="server" Height="200px" 
                    ImageUrl="~/images/Library management.jpg" Width="200px" />
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" Height="200px" 
                    ImageUrl="~/igd/automatic information.png" Width="200px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label2" runat="server" Text="LIBRARY MANAGEMENT" 
                    Font-Bold="True" Font-Italic="True" Font-Underline="True"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="AUTOMATIC INFORMATION" 
                    Font-Bold="True" Font-Italic="True" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
               <p>whether you have50 items or 100,000</p>
                <p>items ,your library is precious. with library</p>
                <p>managing your private library of books.</p></td>
            <td >
               <p>Scan, search and library automatically</p>
                <p>retrieves that item&#39;s cover art and all</p>
                <p>pertinent information.</p></td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Image ID="Image4" runat="server" Height="200px" 
                    ImageUrl="~/igd/create-review-publish-analyze-alt@2x.png" Width="200px" />
            </td>
            <td>
                <asp:Image ID="Image5" runat="server" Height="200px" 
                    ImageUrl="~/igd/scan ur images.jpg" Width="200px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label4" runat="server" Text="PUBLISH AND REVIEW ITEMS" 
                    Font-Bold="True" Font-Italic="True" Font-Underline="True"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="SCAN YOUR ITEMS" Font-Bold="True" 
                    Font-Italic="True" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
               <p>library makes it easy to publish libraries to</p>
                <p>everyone to view. you can also review your </p>
                <p>items for the public to read.</p></td>
            <td >
            <p>For a cost-efficient bar code scanner, we</p>
                <p>recommend this handheld laser</p>
                <p>barcode scanner.</p>
                </td>
        </tr>
        <tr>
            <td class="text-left">
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Features of library-:</td>
        </tr>
        <tr>
            <td 
                style="font-size: x-large; ">
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                1. Provision for entry of lost books.</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                2. Calculation fine from student.</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                3. Accountabilty of Available, Issued and lost books.</td>
        </tr>
    </table>
      
        <!-- /.col-lg-3 -->
        
</asp:Content>

