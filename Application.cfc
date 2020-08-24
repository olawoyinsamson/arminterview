

component output="false" displayname=""  {
        this.name = "arm_interview";
        this.applicationtimeout = createTimeSpan(0, 10, 0, 0);
        this.clientmanagement = true;
        this.clientstorage = "cookie";
        this.datasource = "arm_interview";
        this.sessionManagement = true;
        this.sessionTimeout = createTimeSpan(0, 4, 0, 0);
        this.loginStorage = "session";
        this.setclientcookies = true;
        this.scriptProtect = "all";
        this.ormenabled = true;

        public void function onApplicationEnd(applicationscope required){



        }

        public boolean function onApplicationStart(){

            return true;
        }

        public void function onSessionStart(){

        }

        public boolean function onRequestStart(required string targetPage){
            param name="url.pg" default="home" type="string";
            param name="url.key" default="#listlast(url.pg,'@')#" type="string";

            lock scope="session" type="exclusive" throwontimeout="true" timeout="10"{
                param name="session.isLogin" type="boolean" default="false";
                param name="session.User" default="";
            }

            lock scope="session" type="readonly" throwontimeout="true" timeout="10"{
                request.user = session.user ;
                request.isLogin = session.isLogin ;
            }

            url.pg = Replace(url.pg,'.','/','all');

            return true;
        }

}
