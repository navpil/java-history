# Java 1.3:
 
est. 2000, 1618 classes (+javax.sound ~60 which is not included in the sources for some reason), 58Mb

## List of changes

Mostly minor improvements

 - HotSpot JVM
 - Synthetic proxy classes
 - TimerTask
 - StrictMath
 - Runtime.addShutdownHook()
 - JNDI
 - Sound
 - jar indexing
 
First time the spi are used (in awt.im.spi and javax.naming.spi), 
it looks like it only cares about ones installed in /ext/ dir but I could not find any way to find it out exactly

 

## Language changes

-none-

## Tools

### new 

 - idlj - Java bindings for IDL (Interface definition language) file. RMI stuff
 - unregbean - This tool only exists in this java version
 
### removed
-none-
## Packages

### New packages:

javax.naming (JNDI)
 
javax.sound
 
### Updates to old packages:
java.lang.StrictMath

java.lang.reflect.Proxy & InvocationHandler

java.util.Timer - prefer ExecutorService available since Java 5. Anyway - prefer

    new Timer("ThreadName", /*isDaemon=*/true)

   
