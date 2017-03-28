<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BootstrapDemo.aspx.cs" Inherits="WebDev2017.Week5.Bootstrap.BootstrapDemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
                <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="form-group">
                        <label class="control-label">
                            Name:<br />
                            <input type="text" id="TBName" name="userName" required autofocus
                                placeholder="Your name. . ." class="form-control"
                                oninvalid="this.setCustomValidity('Yo!  Please Enter a name')" />
                        </label>
                    </div>

                    <label class="control-label">
                        Email:<br />
                        <input type="email" id="TBEmail" name="userEmail" required
                            placeholder="Your email. . ." class="form-control"
                            oninvalid="this.setCustomValidity('Please Enter a valid email')" />
                    </label>
                    <br />

                    <label>
                        Phone:<br />
                        <input type="tel" id="TBPhone" name="userPhone" required
                            placeholder="your phone number. . ."
                            oninvalid="this.setCustomValidity('Please Enter a valid telephone number')" />
                    </label>
                    <br />
                    <label>
                        Browser<br />
                        <input list="browsers" id="TBBrowser" name="userBrowser" />
                        <datalist id="browsers">
                            <option value="Internet Explorer">
                            <option value="Firefox">
                            <option value="Chrome">
                            <option value="Opera">
                            <option value="Safari">
                        </datalist>
                    </label>


                    <input type="submit" value="Save" />
                    <button type="submit">Save</button>
                </div>
            </div>

</asp:Content>
