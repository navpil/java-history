# Java 1.4:
 
est. 2002, 2921 classes (of which 466 are in org.apache, so 2455 together), 77.4 Mb

## List of changes

http://www.oracle.com/technetwork/java/javase/changes-136374.html

 - Virtual Machine
     - Runtime Performance
     - Client Hotspot Compiler
     - Server Hotspot Compiler
 - Core Libraries
     - Networking (NTLM)
     - New I/O (nio)
     - I/O
     - Internationalization
     - JAXP (org.apache)
     - Security
 - Integration Libraries
     - CORBA, Java IDL, and Java RMI-IIOP
     - Java Naming and Directory Interface API
 - User Interface
     - Java Sound Technology
     - Java 2D Technology
     - Input Methods
     - AWT
     - Swing
 - Deployment
     - Java Update (1.4.2_01 and higher)
     - Startup Time Improvements
     - Applets
     - Java Plug-in Technology
     - Java Web Start 1.4.2
 - Tools and Tool Architecture
     - Java Platform Debugger Architecture
     - Java Virtual Machine Profiler Interface
     - Java Compiler (javac)
     - Javadoc Tool
     
https://en.wikipedia.org/wiki/Java_version_history#J2SE_1.4

Language changes

 - assert keyword (specified in JSR 41)
 
Library improvements

 - Regular expressions modeled after Perl regular expressions
 - Exception chaining allows an exception to encapsulate original lower-level exception
 - Internet Protocol version 6 (IPv6) support
 - Non-blocking IO (named New Input/Output, NIO) (specified in JSR 51)
 - Logging API (specified in JSR 47)
 - Image I/O API for reading and writing images in formats like JPEG and PNG
 - Integrated XML parser and XSLT processor (JAXP) (specified in JSR 5 and JSR 63)
 - Integrated security and cryptography extensions (JCE, JSSE, JAAS)
 - Java Web Start included (Java Web Start was first released in March 2001 for J2SE 1.3) (specified in JSR 56)
 - Preferences API (java.util.prefs)

More usages of spi, but still proprietary (nio.channels, nio.charset, x.imageio, x.security.auth, x.sound.midi, x.sound.sampled)

## Language changes
 
assert
 
## Tools

nothing of a great interest

new :
 - HtmlConverter - Applet stuff
 - kinit - Kerberos stuff
 - klist - Kerberos stuff
 - ktab - Kerberos stuff
 - orbd - RMI stuff
 - packager - irrelevant now
 - servertool - RMI stuff
 
removed (nothing interesting):
 - unregbean
 - oldjava
 - oldjavac
 - oldjavaw
 - oldjdb

## Packages:

java javax and org packages are official and supported. 
However the org.apache is removed from the later java release, so we will not discuss it here

Streams are faster when we simply read from file. Channels are more flexible and may be nonblocking (not async)

http://tutorials.jenkov.com/java-nio/index.html

https://web.archive.org/web/20140528182031/https://blogs.oracle.com/slc/entry/javanio_vs_javaio

New packages:

 - java.nio (`Buffer` and its children, Buffer can be used in an [off-heap storage](https://www.javacodegeeks.com/2012/12/escaping-the-jvm-heap-for-memory-intensive-applications.html))
   - java.nio.channels
     - `Channel` interface:
       - Datagram
       - File
       - GatheringByte
       - Interruptible
       - ReadableByte
       - ScatteringByte
       - Selectable
       - ServerSocket
       - Socket
       - WritableByte
     - `FileLock`
     - `Pipe`
     - `SelectionKey`
     - `Selector`
     - `Channels` utility class for interoperation between io and nio 
   - java.nio.charset:
     - `Charset`
     - `CharsetDecoder/Encoder`
     - `CoderResult`
 - java.util.logging (yes, the log4j already existed), read more [here](https://docs.oracle.com/javase/8/docs/technotes/guides/logging/overview.html)
   - `Handler` (Console, File, Memory, Socket, Stream)
   - `Formatter` (Simple, XML)
   - `Filter` for better controlling logging
   - `LogRecord` what is actually logged
   - `Logger`
 - java.util.prefs to store preferences and not to care where they are
   (java-tutorial preferences)
 - java.util.regex
   (java-tutorial regex)
 - javax.imageio - working with JPEGs and other images
 - javax.print - working with printers
 - javax.sql - new way of connecting to DB (javax.sql.DataSource vs java.sql.DriverManager), RowSet (more powerful than ResultSet)
 - org.ietf.jgss - Kerberos (?) 
 - #### XML:
   java-tutorial (xml)
    - javax.xml
      - parsers: SAX (SAXParser, uses org.xml.sax), Dom (DocumentBuilder, uses org.w3c.dom) - implemented in org.apache
      - transform: XSLT (the transform.stream package is not about StAX (pull interface as opposed to push based SAX) but about actual io streams)
    - org.w3c.dom - interfaces only, used by javax.xml.parsers.DocumentBuilder
    - org.xml.sax - used by sax parser in javax.xml.parsers
 
 - javax.crypto as extension (jce.jar) - addition to JCA
 - javax.net as extension (jsse.jar) - SSL, TLS, DTLS
 
Updates to old packages:

 - java.lang.CharSequence
  
   Some explanation from [here](https://stackoverflow.com/questions/11323962/exact-difference-between-charsequence-and-string-in-java):
   
   String, StringBuffer, StringBuilder and some other implement CharSequence, so that they can be used interchangeably 
   
 - Throwable.getStacktrace() returns array of java.lang.StackTraceElement
 - java.net: 
   - Inet4Address, Inet6Address
   - URI
 - java.text (`Bidi` for bidirectional text)
 - java.security.cert: support for PKI (CertPath, PKIX)
 - javax.security.auth: (JAAS) Moves authorization logic away from the programming logic
   - [Java tutorial](https://docs.oracle.com/javase/8/docs/technotes/guides/security/jaas/tutorials/GeneralAcnOnly.html)
   - [Tomcat example](https://tomcat.apache.org/tomcat-7.0-doc/realm-howto.html#JAASRealm)
   - [Spring example](https://docs.spring.io/spring-security/site/docs/3.0.x/reference/jaas.html)
 
 - java.sql.Savepoint (for rollbacks)
 - java.util
   - collections: `RandomAccess` - marker interface, `IdentityHashMap`, `LinkedHashMap` + `LinkedHashSet`
   - `Currency` but no real API

`sun.misc.Unsafe`
 - http://mydailyjava.blogspot.com/2013/12/sunmiscunsafe.html
 - http://mishadoff.com/blog/java-magic-part-4-sun-dot-misc-dot-unsafe/

<pre>
   <b>Conclusion</b>
   Although, Unsafe has a bunch of useful applications, never use it.
</pre>
   
 - http://www.docjar.com/html/api/sun/misc/Unsafe.java.html
 - allows for off-heap storage
   
## Security by versions:

https://docs.oracle.com/javase/9/security/toc.htm

XML DigitalSignature javax.xml.crypto since 1.6
SASL java.security.sasl since 1.5
[DONE] JAAS javax.security.auth since 1.4 (javax.security.auth)
[DONE] Java GSS-API since 1.4 - securely communicate between applications (usually by using Kerberos) = org.ietf.jgss
[DONE] JSSE (SSL) since 1.4 (as extension in jsse.jar: javax.net + javax.net.ssl)
[DONE] PKI since 1.4 (java.security.cert)

JDK Beta	1995
JDK 1.0	1996
JDK 1.1	1997
J2SE 1.2	1998
J2SE 1.3	2000
J2SE 1.4	2002
J2SE 5.0	2004
Java SE 6	2006
Java SE 7	2011
Java SE 8	2014
Java SE 9	2017
Java SE 18.3	2018
