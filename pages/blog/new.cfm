<cfoutput>
  <cfif request.isLogin>
    <cfif structKeyExists(form, "upDateBlog")>
      <cfquery>
        INSERT INTO blog SET 
        Title  = "#form.Title#",
        Content = "#form.Content#",
        Banner  = "#form.Banner#",
        CreatedBy = "#request.user.UserId#"
      </cfquery>
      <div class="alert alert-success">Blog successfully updated!</div>
    </cfif>    
    <h2>New blog creation page</h2>
    <div class="container"> 
      <div class="col-sm-10 col-sm-offset-2">
        <form method="post">
          <div class="form-group">
            <div class="col-sm-10">
              <label>Blog title</label>
              <input type="text" name="Title"  class="form-control" placeholder="Blog Title"/>
            </div>
          </div>
          
          <div class="form-group">
            <div class="col-sm-10">
              <br><br>
              <label>Blog Banner Picture</label>
              <input type="text" name="Banner" required class="form-control" placeholder="Banner"/>
            </div>
          </div>  
          
          <div class="form-group">
            <div class="col-sm-10">
              <br><br>
              <label>Blog Content</label>
              <textarea name="Content" cols="10" required rows="10" class="form-control"></textarea>
            </div>
          </div>   
          
          <div class="form-group">
            <div class="col-sm-6">
              <br><br>
              <button type="submit" name="upDateBlog" class="btn btn-success">Update</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    <cfelse>
      <h2>Access denied, you need to login in othet to access this page.</h2>
  </cfif>
</cfoutput>