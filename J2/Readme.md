
# Java 1.2:
 
est. 1998, 820 classes (1259 with javax and 1420 with javax and org), 44Mb


## List of changes

https://courses.cs.washington.edu/courses/cse341/98au/java/jdk1.2beta4/docs/changes.html

Taken from here: http://www.pawlan.com/monica/articles/jdk1.2features/

 - Performance enhancements - JIT
 - Security Architecture enhancements - keytool, jarsigner, policy tool
 - Cryptography API enhancements
 - Java Foundation Classes (JFC) enhancements (UI): (note the horrible naming: _Java Foundation Classes_)
     - Swing:
     - Drag and Drop
     - Java 2D enhancements
 - JDBC enhancements
 - Java IDL - Corba
 - JavaBeans enhancements - irrelevant
 - Audio enhancements
 - Internationalization enhancements - java.text changed
 - Input Method Framework - entering Japanese and other Asian texts on UI
 - Remote Method Invocation (RMI) enhancements
 - Serialization enhancements
 - Collections enhancements (collection "framework")
 - Reference Objects (Soft, Weak, Fantom)
 - Reflection enhancements - call private methods
 - Java Native Interface (JNI) enhancements
 - Java Extensions Support - ext directory (obsoleted by Java 9)
 - Java ARchive (JAR) enhancements - programmatic api
 - Version Identification enhancements
 - Java VM Debugger Interface (Some C stuff)
 
 - Swing

First usage of Spi, though not separated into packages, classes in java.security

## Language changes:
`strictfp` keyword. To be IE754 compatible (not really true - [Borneo](http://www.sonic.net/~jddarcy/Borneo) language tried to fix it)

## Tools

new :
 - extcheck - used for checking the extensions (obsolete in Java 9), i.e. jars put into ext folder
 - jarsigner - signs jar files and verifies them
 - keytool - manipulates the keystores
 - oldjava - old Java
 - oldjavaw - old Javaw
 - policytool - graphical tool to create/edit policy files (.policy)
 - rmid - relates to RMI
 - tnameserv - something related to Corba

removed:
 - javakey
 - javaverify
 - jre
 - jrew

java -jar is now possible

## Packages:

PrintStream Constructors No Longer Deprecated


New packages:

java.lang.ref Phantom, Soft and WeakReference

java.security.cert - X509 certificates (PKI?)

java.security.spec - DSA, RSA public keys 

java.util.jar

javax.swing - Swing UI library
javax.accessibility - Allows people with disabilities to use the application (UI)

Updated to old packages:

java.lang:
 - Comparable
 - ThreadLocal
 
java.security - many changes here, namely PriviledgedAction, KeyStore

java.util - added Collection framework (which is actually a library), namely:
 - Comparator
 - Iterator and ConcurrentModificationException
 - List
   - ArrayList 
   - LinkedList
 - Set
   - TreeSet
   - HashSet
 - Map
   - TreeMap
   - HashMap

and some others. Note that there is no Iterable, Queue or Deque

    diff <(grep -zol -E 'public\s([^{]*)?(class|interface)' $(find sources/J2/src/java -type f) | cut -b11-) <(grep -zol -E 'public\s([^{]*)?(class|interface)' $(find sources/J1/src/java -type f) | cut -b11-) | grep '<'