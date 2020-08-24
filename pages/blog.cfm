<cfoutput>
  <cfquery name="qblog">
    SELECT * FROM blog
  </cfquery>
  <div class="container">
    <div class="col-sm-10 col-sm-offset-2">
      <br><br>
      <h2>Recent blog post.</h2>
      <cfloop query="qblog">
        <div class="card">
          <div class="card-body">
            <img src="#Banner#" alt="#Title#" style="width:700px" />
            <h2>#Title# <span class="badge badge-success"><i class="fa fa-calendar"></i> #dateFormat(Date,"ddd dd-mmm-yyyy")#</span></h2>
            <p>
              #left(Content,500)#...
            </p>
            <br>
            <a href="?pg=blog.more@#BlogId#">read more</a>
          </div>
        </div>
      </cfloop>
    </div>
  </div>
</cfoutput>