# snap7

Overview
 
Snap7 is an open source, 32/64 bit, multi-platform Ethernet communication suite for interfacing natively with Siemens S7 PLCs. The new CPUs 1200/1500, the old S7200, the small LOGO 0BA7/0BA8 and SINAMICS Drives are also partially supported.
Although it has been designed to overcome the limitations of OPC servers when transferring large amounts of high speed data in industrial facilities, it scales well down to small Linux based arm or mips boards such as Raspberry PI (1 and 2) , BeagleBone Black, pcDuino, CubieBoard, UDOO and ARDUINO YUN.
Three specialized components, Client, Server and Partner, allow you to definitively integrate your PC based systems into a PLC automation chain.

Main features 
·         Native multi-architecture design (32/64 bit).
·         Multi CPU support : Intel and AMD i386/x86_64, ARM, Sun Sparc, Mips.
·         Platform independent, currently are supported Windows (from NT 4.0 up to Windows 8), Linux, BSD, Oracle Solaris 11, Apple OSX.
·         Fully scalable, starting from blade servers down to Raspberry PI board.
·         No dependence on any third-party libraries, no installation needed, zero configuration.
·         Three Different native thread models for performance optimization: Win32 threads/ Posix threads / Solaris 11 threads.
·         Two data transfer models: classic synchronous and asynchronous.
·         Two data flow models: polling and unsolicited (PLC transfers data when it wants to).
·         Two specialized ports : Settimino and Moka7 allow you to communicate with S7 PLC with Arduino or Android phones.

Additional benefits
·         LGPL3 - you can distribute your commercial software linked with Snap7 without the requirement to distribute the source code of your application and without the requirement that your application be itself distributed under LGPL.
·         Very easy to use, a full working server example is not bigger than the “Hello world”.
·         Hi level object oriented wrappers are provided, currently C/C++, .NET/Mono, Pascal, LabVIEW, Python, Node.js with many source code examples.
·         Multi-platform rich demos provided.
·         Very detailed documentation provided.
·         Many projects/makefiles are ready to run to easily rebuild Snap7 in any platform without the need of be a C++ guru.
