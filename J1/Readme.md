# Java 1.1

est. 1997, 600 classes (103 classes in java.text.resources, which will be removed into runtime i18n.jar later, so actually 497), jdk ~20Mb

## List of changes:

https://www.cs.princeton.edu/courses/archive/fall97/cs461/jdkdocs/index.html

 - Internationalization (Locale, java.text)
 - Security and Signed Applets
 - AWT Enhancements
 - JavaBeans(TM)
 - JAR File Format
 - Networking Enhancements
 - IO Enhancements
 - Math Package
 - Remote Method Invocation
 - Object Serialization
 - Reflection
 - JDBC(TM) - Connecting Java and Databases
 - Inner Classes
 - Instance initializers
 - anonymous array expressions
 - class literal
 - blank finals and final local variables
 - Java Native Interface (improved from Java 1.0 Native Method Interface)
 - Performance Enhancements 
 - Byte, Short and Void Classes
 - The @deprecated Tag
 - Accessing Resource Files
 - The APPLET Tag (HTML)

## Language changes

Inner classes - before that two toplevel classes in the same file

## Tools

New tools:

 - jar - yes, now you can package your files into a .jar (but only for quick download, no main-class yet)
 - javakey - the predecessor of keytool 
 - javaverify - ?
 - native2ascii - this should fix a problem with UTF-8 properties not understood
 - rmic - RMI compiler - probably you don't need it
 - rmiregistry - RMI Registry - RMI 'service discovery'
 - serialver - shows serialVersionUID for a class (this release got Serializable)

## Packages

New packages:

 - beans (mostly irrelevant)
        
    Contains classes related to developing beans -- components based on the JavaBeans™ architecture. A few of the classes are used by beans while they run in an application. For example, the event classes are used by beans that fire property and vetoable change events (see PropertyChangeEvent). However, <b>most of the classes in this package are meant to be used by a bean editor</b> (that is, a development environment for customizing and putting together beans to create an application). In particular, these classes help the bean editor create a user interface that the user can use to customize the bean. For example, a bean may contain a property of a special type that a bean editor may not know how to handle. By using the PropertyEditor interface, a bean developer can provide an editor for this special type.
    
    Read more here: http://www.humbertocervantes.net/beansdiscussion.html
    
    Quote from the above website:
    
    Before discussing any particular aspect of the JavaBeans component model, we must underline the fact that JavaBeans were mainly designed with <b>visually assembly inside builder tools in mind</b>.
        
 - math - BigDecimal+BigInteger
 - rmi - now dead
 - security - JCA (Java Cryptographic Architecture)
 - sql - JDBC
 - text 
 
        src/java/text/BreakIterator.java
        src/java/text/CharacterIterator.java
        src/java/text/ChoiceFormat.java
        src/java/text/CollationElementIterator.java
        src/java/text/CollationKey.java
        src/java/text/Collator.java
        src/java/text/DateFormat.java
        src/java/text/DateFormatSymbols.java
        src/java/text/DecimalFormat.java
        src/java/text/DecimalFormatSymbols.java
        src/java/text/FieldPosition.java
        src/java/text/Format.java
        src/java/text/MessageFormat.java
        src/java/text/NumberFormat.java
        src/java/text/ParseException.java
        src/java/text/ParsePosition.java
        src/java/text/RuleBasedCollator.java
        src/java/text/SimpleDateFormat.java
        src/java/text/StringCharacterIterator.java
   
 - lang.reflection (read only)
 - util.zip
         
Updates to old packages:
 
 io:
 Readers/Writers (File, Filter, InputStream, LineNumber, Piped, PrintWriter, String)
 Seralizable + Externalizable + ObjectInputStream
  - readResolve
  - readObject
  - readObjectNoData
  - writeReplace
  - writeObject
  - defaultReadObject 
  - readExternal
  - writeExternal
  - read more [here](https://docs.oracle.com/javase/7/docs/platform/serialization/spec/serialTOC.html)
  
 lang:Byte, Short, Void
 
 net: Multicast

 util: Calendar, Locale, ResourceBundle 
 

getResourceAsStream

grep -zol -E 'public[^{]+(class|interface)' $(find src/java -type f) | grep -v resources

## Security by versions:

XML DigitalSignature javax.xml.crypto since 1.6
SASL java.security.sasl since 1.5
JAAS javax.security.auth (?) since 1.4
Java GSS-API
JSSE (SSL) since 1.4
PKI since 1.4


 