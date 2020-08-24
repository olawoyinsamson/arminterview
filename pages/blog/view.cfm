<cfoutput>
  <cfif request.isLogin>

    <cfif structKeyExists(form, "upDateBlog")>
      <cfquery>
        UPDATE blog SET 
        Title  = "#form.Title#",
        Content = "#form.Content#",
        Banner  = "#form.Banner#"
        Where BlogId = #val(url.key)#
      </cfquery>
      
      <div class="alert alert-success">Blog successfully updated!</div>
    </cfif>
    <cfquery name="qblogView">
      SELECT * FROM blog WHERE BlogId = #url.key#
    </cfquery>
    <br><br><br><br>
    <h2 class="text-center">View Blog @ #qblogView.Title#</h2>
    <div class="container">
      <div class="col-sm-10 col-sm-offset-2">
        <img src="#qblogView.Banner#" style="width:800px" alt="#qblogView.Title#" />
        <form method="post">
          <div class="form-group">
            <div class="col-sm-10">
              <label>Blog title</label>
              <input type="text" name="Title" value="#qblogView.Title#" v class="form-control" placeholder="Blog Title"/>
            </div>
          </div>
          
          <div class="form-group">
            <div class="col-sm-10">
              <br><br>
              <label>Blog Banner Picture</label>
              <input type="text" name="Banner" value="#qblogView.Banner#" required class="form-control" placeholder="Banner"/>
            </div>
          </div>  
          
          <div class="form-group">
            <div class="col-sm-10">
              <br><br>
              <label>Blog Content</label>
              <textarea name="Content" cols="10" required rows="10" class="form-control">#qblogView.Content#</textarea>
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