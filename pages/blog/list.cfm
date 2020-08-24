<cfoutput>
  <cfif request.isLogin>
    <br><br>
    <cfquery name="qBlog">
      SELECT * FROM blog
    </cfquery>
    <h2>Blog page</h2>
    <div class="col-sm-12">
      <a href="?pg=blog.new" class="btn btn-success">Create new blog post</a>
      <table class="table table-striped">
        <thead>
          <th width="10%">S/N</th>
          <th width="20%">Title</th>
          <th width="50%">Content</th>
          <th width="10%">Date</th>
          <th width="10%">&nbsp;</th>
        </thead>
        <tbody>
          <cfloop query="qBlog">
            <tr>
              <td>#currentRow#</td>
              <td> <img src="#banner#" class="" style="width:150px"> #Title#</td>
              <td>#left(Content,200)#...</td>
              <td>#dateFormat(Date,"dd-mmm-yyyy.")#</td>
              <td><a href="?pg=blog.view@#BlogId#" class="btn btn-info">View</a></td>
            </tr>
          </cfloop>
        </tbody>
      </table>
    </div>
    <cfelse>
      <h2>Access denied, you need to login in othet to access this page.</h2>
  </cfif>
</cfoutput>