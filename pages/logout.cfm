<cfoutput>
  <cfscript>
    structDelete(session, "isLogin");
    structDelete(session, "User");
  </cfscript>
  <cflocation  url="?pg=home" addToken="false">
</cfoutput>