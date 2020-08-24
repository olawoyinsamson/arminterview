<cfoutput>
  <cfquery name="qb">
    SELECT * FROM blog WHERE BlogId = #url.key#
  </cfquery>
  <div class="container">
    <div class="col-sm-10 col-sm-offset-2">
      <br><br>
      <h2>View Blog post @ #qb.Title#.</h2>

        <div class="card">
          <div class="card-body">
            <img src="#qb.Banner#" alt="#qb.Title#" style="width:700px" />
            <h2>#qb.Title# <span class="badge badge-success"><i class="fa fa-calendar"></i> #dateFormat(qb.Date,"ddd dd-mmm-yyyy")#</span></h2>
            <p>
              #qb.Content#
            </p>
            <br>
            <a href="?pg=blog" class="btn btn-success">back to blog page</a>
          </div>
        </div>
    </div>
  </div>
</cfoutput>