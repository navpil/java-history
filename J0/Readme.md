# What is Java Zero

http://www.pascal-man.com/download/download-jdk.shtml

http://web.mit.edu/java_v1.0.2/

est. 1996, 209 classes, jdk ~5Mb 

Packages: applet, awt (+3 subpackages), io, lang, net, util

`applet` is obsolete

`awt` is interesting probably only for Swing developers (GridBagLayout is already there)

`io` no Readers, only Input/Output streams
 - Buffered
 - ByteArray
 - Data
 - File
 - Filter - made for subclassing
 - Piped

input only:
 - Pushback
 - Sequence 
 - LineNumber - deprecated
 - StringBuffer - deprecatd
    
output only:    
 - PrintStream (used in System.out and System.err)
 
StreamTokenizer - Used for parse Stream (for programming languages)
File (use Paths from Java 7 instead)
RandomAccessFile

No Serializable

`lang`

Wrappers over primitives, Cloneable, Math, Runnable, String, StackOverflowException, 
StringBuffer (use StringBuilder), Thread, Process

`net`

DatagramSocket (UDP) (no broadcasting yet), Socket/Server socket (TCP), URL, URLEncoder/URLDecoder, InetAddress

`util` 

Date - try using java.time instead 
Enumeration (diff from Iterator http://javaconceptoftheday.com/differences-between-enumeration-vs-iterator-in-java/ failsafe-failfast)
Hashtable (Properties), Vector (sync), Stack (legacy)
StringTokenizer - legacy, use String.split()
Random
BitSet 

## Tools

     ls java1.0.2/bin | grep .exe > j0tools
     ls jdk-9.0.1/bin | grep .exe > j9tools
     diff j0tools j9tools | grep '<' | cut -d' ' -f2 > obsolete
     diff obsolete j0tools | grep '>' | cut -d' ' -f2 > j0modern-tools

 - appletviewer - Write an applet, include it in html and see it with this tool. Requires access to homedir...
       
        .\java1.0.2\demo\TicTacToe>..\..\bin\appletviewer.exe example1.html
      
 - javac - compiler
 - javadoc - generates javadocs
 - java - executor
 - javah - creates C header files for Java classes, needed for native methods
 - javap - disassembles the .class file into bytecode
 - javaw - same as java.exe, but does not start a console (System.out is suppressed)
 - jdb - java debugger

`jar` is missing... There is no java -jar
## TODO

Explain difference between top-level non-public classes and nested classes (appear in Java 1.1)

grep -l Observ $(find . -type f)

diff <(sort j1tools) <(sort j9tools) | grep '<'
