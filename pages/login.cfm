<cfoutput>
  <cfif structKeyExists(form, "login")>
    <cfquery name="qUser">
      SELECT * FROM user 
      Where Email  = "#form.email#"
    </cfquery>

    <cfif qUser.recordcount gt 0>
      <cfquery name="qlogin">
        SELECT * FROM login 
        Where  Password = "#hmac(form.password,qUser.UserId)#" AND UserId  = "#qUser.UserId#"
      </cfquery>
      <cfif qlogin.recordcount gt 0>
        <cflock scope="session" type="exclusive" timeout="5">
          <cfset session.IsLogin = true/>
          <cfset session.User = qUser />
        </cflock>
        <cflocation  url="?pg=blog.list" addToken="false">
      <cfelse>
        <div class="alert alert-danger">Invalid password, please try again</div>
      </cfif>
    <cfelse>
      <br><br>
      <div class="alert alert-danger">Invalid email address, please try again</div>
    </cfif>
  </cfif>
  <div class="container">
    <h2 class="text-center">Login page <br><small>signin to get access</small></h2>
    <div class="col-sm-8 col-sm-offset-3">
      <form method="post">
        <div class="form-group">
          <div class="col-sm-8">
            <input type="email" required name="email" class="form-control" placeholder="Enter username"/>
          </div>
        </div>
        <br><br>
        <div class="form-group">
          <div class="col-sm-8">
            <input type="password" required name="password" class="form-control" placeholder="Password"/>
          </div>
        </div>
        
        <br><br>
        <div class="form-group">
          <div class="col-sm-8">
            <button type="submit"  name="login" class="btn btn-danger">Login!</button>
          </div>
        </div>        
      </form>
    </div>
  </div>
</cfoutput>