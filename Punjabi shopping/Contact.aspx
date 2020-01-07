<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-contact-area">
            <div class="mu-title">
              <span class="mu-subtitle">Get In Touch</span>
              <h2>Contact Us</h2>
              <i class="fa fa-spoon"></i>              
              <span class="mu-title-bar"></span>
            </div>
            <div class="mu-contact-content">
              <div class="row">
                <div class="col-md-6">
                  <div class="mu-contact-left">
                    <form class="mu-contact-form" runat="server">
                      <div class="form-group">
                        <label for="name">Your Name</label>
                          <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Name" runat="server" required="required"></asp:TextBox>
                       
                      </div>
                      <div class="form-group">
                        <label for="email">Email address</label>
                          <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Email" runat="server" required="required"></asp:TextBox>
                        
                      </div>                      
                      <div class="form-group">
                        <label for="subject">Subject</label>
                          <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Subject"  runat="server" required="required"></asp:TextBox>
                  
                      </div>
                      <div class="form-group">
                        <label for="message">Message</label>       
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="10" Columns="30" required="required" placeholder="Type Your Message"></asp:TextBox>           
                    
                      </div>              
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
                          Text="Send Message" onclick="Button1_Click" />       
                      <br />
                    </form>
                    <br />
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="mu-contact-right">
                    <div class="mu-contact-widget">
                      <h3>Office Address</h3>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia temporibus corporis ea non consequatur porro corrupti hic voluptatibus assumenda, doloribus.</p>
                      <address>
                        <p><i class="fa fa-phone"></i> (850) 457 6688</p>
                        <p><i class="fa fa-envelope-o"></i>contact@markups.io</p>
                        <p><i class="fa fa-map-marker"></i>368 St. Panama City, Florida, USA</p>
                      </address>
                    </div>
                    <div class="mu-contact-widget">
                      <h3>Open Hours</h3>                      
                      <address>
                        <p><span>Monday - Friday</span> 9.00 am to 12 pm</p>
                        <p><span>Saturday</span> 9.00 am to 10 pm</p>
                        <p><span>Sunday</span> 10.00 am to 12 pm</p>
                      </address>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  <!-- End Contact section -->
</asp:Content>

