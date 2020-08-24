<cfoutput>
  <cfif structKeyExists(form, "sendInquiry")>
    <cfquery>
      INSERT INTO inquiry SET 
      ClientName = "#form.ClientName#",
      ClientEmail = "#form.ClientEmail#",
      ClientMessage = "#form.ClientMessage#"
    </cfquery>

    <cfmail from="do-not-reply@abccompany.com" username="do-not-reply@abccompany.com" password="gpeyU3)QLT,y" server="mail.abccompany.com" port="587" useTLS="true" replyto="#form.ClientEmail#" cc="it@armpension.com"
    to="info@abccompany.com"  subject="Client Inquiry on ABC Company Website "  type="html">
      Below is a client inquiry from your website <br>
      Name : #form.ClientName#<br>
      Email : #form.ClientEmail# <br><br>
      =================================================
      <br>
      #form.ClientMessage#
      <br>
      =================================================
    </cfmail>

    <cfmail from="do-not-reply@abccompany.com" username="do-not-reply@abccompany.com" password="gpeyU3)QLT,y" server="mail.abccompany.com" port="25" useTLS="true"
    to="#form.ClientEmail#"  subject="Client Inquiry on ABC Company Website" cc="it@armpension.com"  type="html">
    <br>
      <p>
        Thank you for contacting us. This is an automated response confirming your inquiry. Our team will get back to you as soon as possible.
      </p>
      =================================================
      <br>
      <b>Inquiry on ABC Company. <br/></b>#form.ClientMessage#
      <br>
      =================================================
      <br/>Kind regards, <br/><br/>

      ABC Company .
    </cfmail>    
    <br><br>
    <div class="alert alert-success">Your inquiry has been successfull sent and we will get back to you soon.</div>
  </cfif>

  <h2>Contact Us page</h2>
  <div class="container">
    <div class="col-sm-8 col-sm-offset-2">
      <h3 class="text-center">You can write us concerning any of our product and services and one of our staff will get back to you immidiately. Thank you for trusting us for your business.</h3>
    </div>

    <div class="col-sm-8 col-sm-offset-2">
      <div class="row">
        <form class="form-horizontal" method="post">
          <div class="form-group">
            <div class="col-sm-6">
              <input type="text" name="ClientName" required class="form-control" placeholder="Name in full"/>
            </div>
            <div class="col-sm-6">
              <input type="email" name="ClientEmail" required class="form-control" placeholder="Email Address"/>
            </div>                       
          </div>
          <div class="form-group">
            <div class="col-sm-12">
              <textarea name="ClientMessage" class="form-control" required rows="10" cols="10"  placeholder="Please type your message here"></textarea>
            </div> 
          </div>
          <div class="form-group">
            <button type="submit" name="sendInquiry" class="btn btn-success">Send now!</button>
          </div>
        </form>
      </div>
    </div>
  </div>

</cfoutput>