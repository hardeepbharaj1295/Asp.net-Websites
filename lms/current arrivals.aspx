<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="current arrivals.aspx.cs" Inherits="current_arrivals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
            text-decoration: underline;
        }
        .style3
        {
            font-size: x-large;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<table style="width:90% ">

<tr>
<td>

    <span class="style2">Welcome to college Library. </span><span class="style1">
    <br />
    Library Management System is Library Management 
    Software for monitoring and controlling the transaction in a library. Library Management System is a web based solution which is developed on
    latest technology focused automating the vital activities of the library.</span><br 
        class="style1" />
    </td>

</tr>

<tr>
<td>

    &nbsp;</td>

</tr>
<tr>
<td>
    <asp:Image ID="Image2" runat="server" Height="250px" 
        ImageUrl="~/images/pexels-photo-256541.jpeg" Width="750px" 
        style="border-radius:50px;" ImageAlign="Middle" />



</td>


</tr>


<tr>
<td>


</td>

</tr>


<tr>
<td>


    <span class="style1">All students are registered with the library. Your College ID card is your 
    library card -use the library, issue the books.
    if your library card lost so student fill the registration form and issue the 
    books.</span><br />
    <br />
    <span class="style1">
    <em>a)&nbsp;&nbsp; Search our library collections.</em></span><em><br 
        class="style1" />
    </em><span class="style1">
    <em>b)&nbsp;&nbsp; find out more about the skills training our library sevice 
    provides.</em></span></td>
    

<tr>
<td>


    &nbsp;</td>
    <tr>
    <td class="style3">
                Features of library-:</td>
        </tr>
    <tr>
    <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="font-italic">
                1. Provision for entry of lost books.</td>
        </tr>
        <tr>
            <td class="font-italic">
                2. Calculation fine from student.</td>
        </tr>
        <tr>
            <td class="font-italic">
                3. Accountabilty of Available, Issued and lost books.</td></tr>

</tr>

</table>


</asp:Content>

