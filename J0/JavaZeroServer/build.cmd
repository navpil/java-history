set EXEC=%PATH_TO_JAVA%\java1.0.2\bin\

rem Just to check that it will be 1.0.2
call %EXEC%java.exe -version

rem compile
call %EXEC%javac.exe ua\lviv\navpil\JavaZeroServer.java

rem execute
call %EXEC%java.exe ua.lviv.navpil.JavaZeroServer

rem Then open the browser and http://localhost:8099/hello-world