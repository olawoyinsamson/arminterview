<cfoutput>
  <cffunction  name="getTitlePage" type="string">
    <cfreturn #ucase(url.pg)#>
  </cffunction>
  <html>
    <head>
      <title>ABC Company</title>
      <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
      <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    </head>
    <body>
      <div class="container">
      <cfinclude  template="inc/header.cfm">
      <cfinclude  template="pages/#listfirst(url.pg,'@')#.cfm">

      <br><br> <br>
      <p class="text-center">Privacy policy, 2020 ABC Company, all right reserved</p>
      </div>
      <script type="text/javascript" src="assets/js/jquery.js"></script>
      <script type="text/javascript" src="assets/js/bootstrap.js"></script>      
    </body>
  </html>
</cfoutput>