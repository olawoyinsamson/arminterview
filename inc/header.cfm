<br>
<ul class="nav nav-tabs">
  <li role="presentation" <cfif url.pg eq "home">class="active"</cfif> ><a href="?pg=home">Home</a></li>
  <li role="presentation" <cfif url.pg eq "blog">class="active"</cfif>><a href="?pg=blog">Blog</a></li>
  <li role="presentation" <cfif url.pg eq "contact">class="active"</cfif>><a href="?pg=contact">Contact us</a></li>
  <cfif request.isLogin>
    <li role="presentation" <cfif url.pg eq "blog/list">class="active"</cfif>><a href="?pg=blog.list">Blog Items List</a></li>
    <li role="presentation" <cfif url.pg eq "login">class="active"</cfif>><a href="?pg=logout">Logout</a></li>
  <cfelse>
    <li role="presentation" <cfif url.pg eq "login">class="active"</cfif>><a href="?pg=login">Login</a></li>
  </cfif>
  
</ul>