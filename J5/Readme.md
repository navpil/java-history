# Java 1.5:
 
est. 2004, 2941 classes, 120 Mb

## List of changes

Scanner class
Instrumentation
MXBeans

## Language changes

https://docs.oracle.com/javase/1.5.0/docs/relnotes/features.html

 - Generics
 - Annotations
   - Cannot implement an interface, cannot extend each other and as of Java 1.5 there can't be multiple annotations
   - [Processing](http://hannesdorfmann.com/annotation-processing/annotationprocessing101) - processing not yet possible through standard api, though accessible through com.sun.mirror
 - Autoboxing
 - Enums
 - Varargs
 - for-each loop
 - static imports
 - covariant return types
 - String.format
 
## Tools

new :

 - apt - Annotation Processor Tool (will be deprecated later and removed in Java 1.8 in favor of javac)
 - javaws - Java Web Start
 - jconsole - Tool for connecting to processes and check stuff (like memory, MXBeans etc)
 
 - pack200 - packages jar for web deployment
 - unpack200 - unpacks the jar file
 
Currently experimental and unsupported tools:
 - jps - Lists the instrumented Java Virtual Machines (JVMs) on the target system.
 - jstat - Monitors Java Virtual Machine (JVM) statistics.
 - jstatd - Monitors Java Virtual Machines (JVMs) and enables remote monitoring tools to attach to JVMs.

## Packages:

New packages:

 - java.lang.annotation
 - java.util.concurrent
 
Updates to old packages:
  
  - java.io (Closeable, Flushable)
  - java.lang:
    - Appendable (used with Formatter)
    - Readable
    - Enum
    - Iterable (used in for-each)
    - ProcessBuilder (richer than Runtime.exec)
    - StringBuilder
    - Deprecated, Override, SuppressWarnings