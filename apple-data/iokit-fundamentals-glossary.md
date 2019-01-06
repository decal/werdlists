Glossary                             

/\* RSID: \*/ var s\_account="appleglobal,appleusdeveloper,dappdeveloperlib"

[Next](../Families_Ref/Families_Ref.html)[Previous](../Bibliography/Bibliography.html)

[](../index.html)

Glossary
========

*   **active driver**  
    
    A device driver that implements advanced power management tasks, such as determining device idleness and performing pre-shutdown tasks. See also [passive driver](#//apple_ref/doc/uid/TP30000744-SW2)
    
  
*   **base class**  
    
    In C++, the class from which another class (a subclass) inherits. It can also be used to specify a class from which all classes in a hierarchy ultimately derive (also known as a root class).
    
  
*   **BSD**  
    
    Berkeley Software Distribution. Formerly known as the Berkeley version of UNIX, BSD is now simply called the BSD operating system. The BSD portion of Darwin is based on 4.4BSD Lite 2 and FreeBSD, a flavor of 4.4BSD.
    
  
*   **bundle**  
    
    A directory in the file system that typically stores executable code and the software resources related to that code. (A bundle can store only resources.) Applications, plug-ins, frameworks, and kernel extensions are types of bundles. Except for frameworks, bundles are file packages, presented by the Finder as a single file instead of a folder. See also [kernel extension](#//apple_ref/doc/uid/TP30000744-BCIFCJEJ)
    
  
*   **bus**  
    
    A transmission path on which signals can be dropped off or picked up by devices attached to it. Only devices addressed by the signals pay attention to them; the others discard the signals. Buses both exist within the CPU and connect it to physical memory and peripheral devices. Examples of I/O buses on Darwin are PCI, SCSI, USB, and FireWire.
    
  
*   **bus master**  
    
    A program, usually in a separate I/O controller, that directs traffic on the computer bus or input/output paths. The bus master actually controls the bus paths on which the address and control signals flow. DMA is a simple form of bus mastering where the bus master controls I/O transfers between a device and system memory and then signals to the CPU when it has done so. See also [DMA](#//apple_ref/doc/uid/TP30000744-BCICHDCG)
    
  
*   **client**  
    
    A driver object that consumes services of some kind supplied by its provider. In a driver stack, the client in a provider/client relationship is farther away from the Platform Expert. See also [provider](#//apple_ref/doc/uid/TP30000744-BCIIAIAF)
    
  
*   **command gate**  
    
    A mechanism that controls access to the lock of a work loop, thereby serializing access to the data involved in I/O requests. A command gate does not require a thread context switch to ensure single-threaded access. IOCommandGate event-source objects represent command gates in the I/O Kit.
    
  
*   **Darwin**  
    
    Another name for the OS X core operating system, or kernel environment. The Darwin kernel environment is equivalent to the OS X kernel plus the BSD libraries and commands essential to the BSD Commands environment. Darwin is Open Source technology.
    
  
*   **DMA**  
    
    (Direct Memory Access) A capability of some bus architectures that enables a bus controller to transfer data directly between a device (such as a disk drive) and a device with physically addressable memory, such as that on a computer's motherboard. The microprocessor is freed from involvement with the data transfer, thus speeding up overall computer operation. See also [bus master](#//apple_ref/doc/uid/TP30000744-BCIEADFA)
    
  
*   **device**  
    
    Computer hardware, typically excluding the CPU and system memory, which can be controlled and can send and receive data. Examples of devices include monitors, disk drives, buses, and keyboards.
    
  
*   **device driver**  
    
    A component of an operating system that deals with getting data to and from a device, as well as the control of that device. A driver written with the I/O Kit is an object that implements the appropriate I/O Kit abstractions for controlling hardware.
    
  
*   **device file**  
    
    In BSD, a device file is a special file located in `/dev` that represents a block or character device such as a terminal, disk drive, or printer. If a program knows the name of a device file, it can use POSIX functions to access and control the associated device. The program can obtain the device name (which is not persistent across reboots or device removal) from the I/O Kit.
    
  
*   **device interface**  
    
    In the I/O Kit, a mechanism that uses a plug-in architecture to allow a program in user space to communicate with a nub in the kernel that is appropriate to the type of device the program wishes to control. Through the nub the program gains access to I/O Kit services and to the device itself. From the perspective of the kernel, the device interface appears as a driver object called a user client.
    
  
*   **device matching**  
    
    In the I/O Kit, a process by which an application finds an appropriate device interface to load. The application calls a special I/O Kit function that uses a “matching dictionary” to search the I/O Registry. The function returns one or more matching driver objects that the application can then use to load an appropriate device interface. Also referred to as device discovery.
    
  
*   **driver**  
    
    See [device driver](#//apple_ref/doc/uid/TP30000744-BCIEFBHH)
    
  
*   **driver matching**  
    
    In the I/O Kit, a process in which a nub, after discovering a specific hardware device, searches for the driver or drivers most suited to drive that device. Matching requires that a driver have one or more personalities that specify whether it is a candidate for a particular device. Driver matching is a subtractive process involving three phases: class matching, passive matching, and active matching. See also [personality](#//apple_ref/doc/uid/TP30000744-BCIHHGAE)
    
  
*   **driver stack**  
    
    In an I/O connection, the series of driver objects (drivers and nubs) in client/provider relationships with each other. A driver stack often refers to the entire collection of software between a device and its client application (or applications).
    
  
*   **event source**  
    
    An I/O object that corresponds to a type of event that a device driver can be expected to handle; there are currently event sources for hardware interrupts, timer events, and I/O commands. The I/O Kit defines a class for each of these event types, respectively IOInterruptEventSource, IOTimerEventSource, and IOCommandGate.
    
  
*   **family**  
    
    A collection of software abstractions that are common to all devices of a particular category. Families provide functionality and services to drivers. Examples of families include protocol families (such as SCSI, USB, and Firewire), storage families (disk drives), network families, and families that describe human interface devices (mouse and keyboard).
    
  
*   **fault**  
    
    In the virtual-memory system, faults are the mechanism for initiating page-in activity. They are interrupts that occur when code tries to access data at a virtual address that is not mapped to physical memory. See also [page](#//apple_ref/doc/uid/TP30000744-BCIHDGGC); [virtual memory](#//apple_ref/doc/uid/TP30000744-BCICIEGA)
    
  
*   **framework**  
    
    A type of bundle that packages a dynamic shared library with the resources that the library requires, including header files and reference documentation.
    
    Note that the Kernel framework (which contains the I/O Kit headers) contains no dynamic shared library. All library-type linking for the Kernel framework is done using the `mach_kernel` file itself and kernel extensions. This linking is actually static (with vtable patch-ups) in implementation
    
  
*   **idle sleep**  
    
    A sleep state that occurs when there has been no device or system activity for the period of time the user specifies in the Energy Saver pane of System Preferences. See also [system sleep](#//apple_ref/doc/uid/TP30000744-SW4)
    
  
*   **information property list**  
    
    A property list that contains essential configuration information for bundles such as kernel extensions. A file named `Info.plist` (or a platform-specific variant of that filename) contains the information property list and is packaged inside the bundle.
    
  
*   **interrupt**  
    
    An asynchronous event that suspends the currently scheduled process and temporarily diverts the flow of control through an interrupt handler routine. Interrupts can be caused by both hardware (I/O, timer, machine check) and software (supervisor, system call, or trap instruction).
    
  
*   **interrupt handler**  
    
    A routine executed when an interrupt occurs. Interrupt handlers typically deal with low-level events in the hardware of a computer system, such as a character arriving at a serial port or a tick of a real-time clock.
    
  
*   **I/O Catalog**  
    
    A dynamic database that maintains entries for all available drivers on a Darwin system. Driver matching searches the I/O Catalog to produce an initial list of candidate drivers.
    
  
*   **I/O Kit**  
    
    A kernel-resident, object-oriented environment in Darwin that provides a model of system hardware. Each type of service or device is represented by one or more C++ classes in a family; each available service or device is represented by an instance (object) of that class.
    
  
*   **I/O Kit framework**  
    
    The framework that includes IOKitLib and makes the I/O Registry, user client plug-ins, and other I/O Kit services available from user space. It lets applications and other user processes access common I/O Kit object types and services. See also [framework](#//apple_ref/doc/uid/TP30000744-BCIEHCHC)
    
  
*   **I/O Registry**  
    
    A dynamic database that describes a collection of driver objects, each of which represents an I/O Kit entity. As hardware is added to or removed from the system, the I/O Registry changes to accommodate the addition or removal.
    
  
*   **kernel**  
    
    The complete OS X core operating-system environment, which includes Mach, BSD, the I/O Kit, drivers, file systems, and networking components. The kernel resides in its own protected memory partition. The kernel includes all code executed in the kernel task, which consists of the file `mach_kernel` (at file-system root) and all loaded kernel extensions. Also called the kernel environment.
    
  
*   **kernel extension**  
    
    (KEXT) A dynamically loaded bundle that extends the functionality of the kernel. A KEXT can contain zero or one kernel modules as well as other (sub) KEXTs, each of which can contain zero or one kernel modules. The I/O Kit, file system, and networking components of Darwin can be extended by KEXTs. See also [kernel module](#//apple_ref/doc/uid/TP30000744-BCIIHCCB)
    
  
*   **kernel module**  
    
    (KMOD) A binary in Mach-O format that is packaged in a kernel extension. A KMOD is the minimum unit of code that can be loaded into the kernel. See also [kernel extension](#//apple_ref/doc/uid/TP30000744-BCIFCJEJ)
    
  
*   **lock**  
    
    A data structure used to synchronize access to a shared resource. The most common use for a lock is in multithreaded programs where multiple threads need access to global data. Only one thread can hold the lock at a time; by convention, this thread is the only one that can modify the data during this period. See also [mutex](#//apple_ref/doc/uid/TP30000744-BCIHEFCI)
    
  
*   **Mach**  
    
    A central component of the kernel that provides such basic services and abstractions as threads, tasks, ports, interprocess communication (IPC), scheduling, physical and virtual address space management, virtual memory, and timers.
    
  
*   **map**  
    
    To translate a range of memory in one address space (physical or virtual) to a range in another address space. The virtual-memory manager accomplishes this by adjusting its VM tables for the kernel and user processes.
    
  
*   **matching**  
    
    See [device matching](#//apple_ref/doc/uid/TP30000744-BCIBCFHA); [driver matching](#//apple_ref/doc/uid/TP30000744-BCICDFJJ)
    
  
*   **memory cursor**  
    
    An object that lays out the buffer ranges in a memory descriptor in physical memory, generating a scatter/gather list suitable for a particular device or DMA engine. The object is derived from the IOMemoryCursor class. See also [DMA](#//apple_ref/doc/uid/TP30000744-BCICHDCG); [memory descriptor](#//apple_ref/doc/uid/TP30000744-BCIJDDDD)
    
  
*   **memory descriptor**  
    
    An object that describes how a stream of data, depending on direction, should either be laid into memory or extracted from memory. It represents a segment of memory holding the data involved in an I/O transfer and is specified as one or more physical or virtual address ranges. The object is derived from the IOMemoryDescriptor class. See also [DMA](#//apple_ref/doc/uid/TP30000744-BCICHDCG); [memory cursor](#//apple_ref/doc/uid/TP30000744-BCIIJCIJ)
    
  
*   **memory protection**  
    
    A system of memory management in which programs are prevented from being able to modify or corrupt the memory partition of another program. Although OS X has memory protection, Mac OS 8 and 9 do not.
    
  
*   **mutex**  
    
    A mutual-exclusion locking object that allows multiple threads to synchronize access to shared resources. A mutex has two states: locked and unlocked. Once a mutex has been locked by a thread, other threads attempting to lock it will block. When the locking thread unlocks (releases) the mutex, one of the blocked threads (if any) acquires (locks) it and uses the resource. The thread that locks the mutex must be the one that unlocks it. The work-loop lock (which is used by a command gate) is based on a mutex. See also [lock](#//apple_ref/doc/uid/TP30000744-BCIHDDHH); [work loop](#//apple_ref/doc/uid/TP30000744-BCIIBAFC)
    
  
*   **notification**  
    
    A programmatic mechanism for alerting interested recipients (sometimes called observers) that an event has occurred.
    
  
*   **nub**  
    
    An I/O Kit object that represents a detected, controllable entity such as a device or logical service. A nub may represent a bus, disk, graphics adaptor, or any number of similar entities. A nub supports dynamic configuration by providing a bridge between two drivers (and, by extension, between two families). See also [device](#//apple_ref/doc/uid/TP30000744-BCIEFCIB); [driver](#//apple_ref/doc/uid/TP30000744-BCIEDJHG)
    
  
*   **page**  
    
    (1) The smallest unit (in bytes) of information that the virtual memory system can transfer between physical memory and backing store. In Darwin, a page is currently 4 kilobytes. (2) As a verb, page refers to the transfer of pages between physical memory and backing store. Refer to `Kernel.framework/Headers/mach/machine/vm_params.h` for specifics. See also [fault](#//apple_ref/doc/uid/TP30000744-BCIBAIIF); [virtual memory](#//apple_ref/doc/uid/TP30000744-BCICIEGA)
    
  
*   **passive driver**  
    
    A device driver that performs only basic power-management tasks, such as joining the power plane and changing the device’s power state. See also [active driver](#//apple_ref/doc/uid/TP30000744-SW1)
    
  
*   **personality**  
    
    A set of properties specifying the kinds of devices a driver can support. This information is stored in an XML matching dictionary defined in the information property list (`Info.plist`) file in the driver’s KEXT bundle. A single driver may present one or more personalities for matching; each personality specifies a class to instantiate. Such instances are passed a reference to the personality dictionary at initialization.
    
  
*   **physical memory**  
    
    Electronic circuitry contained in random-access memory (RAM) chips, used to temporarily hold information at execution time. Addresses in a process’s virtual memory are mapped to addresses in physical memory. See also [virtual memory](#//apple_ref/doc/uid/TP30000744-BCICIEGA)
    
  
*   **PIO**  
    
    (Programmed Input/Output) A way to move data between a device and system memory in which each byte is transferred under control of the host processor. See also [DMA](#//apple_ref/doc/uid/TP30000744-BCICHDCG)
    
  
*   **plane**  
    
    A subset of driver (or service) objects in the I/O Registry that have a certain type of provider/client relationship connecting them. The most general plane is the Service plane, which displays the objects in the same hierarchy in which they are attached during Registry construction. There are also the Audio, Power, Device Tree, FireWire, and USB planes.
    
  
*   **Platform Expert**  
    
    A driver object for a particular motherboard that knows the type of platform the system is running on. The Platform Expert serves as the root of the I/O Registry tree.
    
  
*   **plug-in**  
    
    A module that can be dynamically added to a running system or application. Core Foundation Plug-in Services uses the basic code-loading facility of Core Foundation Bundle Services to provide a standard plug-in architecture, known as the CFPlugIn architecture, for Mac apps. A kernel extension is a type of kernel plug-in.
    
  
*   **port**  
    
    A heavily overloaded term which in Darwin has two particular meanings: (1) In Mach, a secure unidirectional channel for communication between tasks running on a single system; (2) In IP transport protocols, an integer identifier used to select a receiver for an incoming packet or to specify the sender of an outgoing packet.
    
  
*   **POSIX**  
    
    The Portable Operating System Interface. An operating-system interface standardization effort supported by ISO/IEC, IEEE, and The Open Group.
    
  
*   **power child**  
    
    In the power plane, a driver for a device that relies on another object for its power. See also [power parent](#//apple_ref/doc/uid/TP30000744-SW6); [plane](#//apple_ref/doc/uid/TP30000744-SW7)
    
  
*   **power parent**  
    
    In the power plane, an object that provides power for a device. See also [power child](#//apple_ref/doc/uid/TP30000744-SW5); [plane](#//apple_ref/doc/uid/TP30000744-SW7)
    
  
*   **preemptive multitasking**  
    
    A type of multitasking in which the operating system can interrupt a currently running program in order to run another program, as needed.
    
  
*   **probe**  
    
    A phase of active matching in which a candidate driver communicates with a device and verifies whether it can drive it. The driver’s `probe` member function is invoked to kick off this phase. The driver returns a probe score that reflects its ability to drive the device. See also [driver matching](#//apple_ref/doc/uid/TP30000744-BCICDFJJ)
    
  
*   **process**  
    
    A BSD abstraction for a running program. A process’ resources include a virtual address space, threads, and file descriptors. In OS X, a process is based on one Mach task and one or more Mach threads.
    
  
*   **provider**  
    
    A driver object that provides services of some kind to its client. In a driver stack, the provider in a provider/client relationship is closer to the Platform Expert. See also [client](#//apple_ref/doc/uid/TP30000744-BCIJDDEF)
    
  
*   **release**  
    
    Decrementing the reference count of an object. When an object’s reference count reaches zero, it is freed. When your code no longer needs to reference a retained object, it should release it. Some APIs automatically execute a release on the caller’s behalf, particularly in cases where the object in question is being “handed off.” Retains and releases must be carefully balanced; too many releases can cause panics and other unexpected failures due to accesses of freed memory. See also [retain](#//apple_ref/doc/uid/TP30000744-BCIIEFEC)
    
  
*   **retain**  
    
    Incrementing the reference count of an object. An object with a positive reference count is not freed. (A newly created object has a reference count of one.) Drivers can ensure the persistence of an object beyond the present scope by retaining it. Many APIs automatically execute a retain on the caller’s behalf, particularly APIs used to create or gain access to objects. Retains and releases must be carefully balanced; too many retains will result in wired memory leak. See also [release](#//apple_ref/doc/uid/TP30000744-BCIJBFAE)
    
  
*   **scheduler**  
    
    That part of Mach that determines when each program (or program thread) runs, including assignment of start times. The priority of a program’s thread can affect its scheduling. See also [task](#//apple_ref/doc/uid/TP30000744-BCICGBAB); [thread](#//apple_ref/doc/uid/TP30000744-BCIGFIFE)
    
  
*   **service**  
    
    A service is an I/O Kit entity, based on a subclass of IOService, that has been published with the `registerService` method and provides certain capabilities to other I/O Kit objects. In the I/O Kit’s layered architecture, each layer is a client of the layer below it and a provider of services to the layer above it. A service type is identified by a matching dictionary that describes properties of the service. A nub or driver can provide services to other I/O Kit objects.
    
  
*   **socket**  
    
    In BSD-derived systems such as Darwin, a socket refers to different entities in user and kernel operations. For a user process, a socket is a file descriptor that has been allocated using `socket(2)`. For the kernel, a socket is the data structure that is allocated when the kernel’s implementation of the `socket(2)` call is made.
    
  
*   **system sleep**  
    
    A sleep state that occurs when the user chooses Sleep from the Apple menu or closes the lid of a laptop computer. See also [idle sleep](#//apple_ref/doc/uid/TP30000744-SW3)
    
  
*   **task**  
    
    A Mach abstraction consisting of a virtual address space and a port name space. A task itself performs no computation; rather, it is the context in which threads run. See also [process](#//apple_ref/doc/uid/TP30000744-BCIHBJJA); [thread](#//apple_ref/doc/uid/TP30000744-BCIGFIFE)
    
  
*   **thread**  
    
    In Mach, the unit of CPU utilization. A thread consists of a program counter, a set of registers, and a stack pointer. See also [task](#//apple_ref/doc/uid/TP30000744-BCICGBAB)
    
  
*   **timer**  
    
    A kernel resource that triggers an event at a specified interval. The event can occur only once or can be recurring. Timers are one of the event sources for work loops.
    
  
*   **user client**  
    
    An interface provided by an I/O Kit family, that enables a user process (which can’t call a kernel-resident driver or other service directly) to access hardware. In the kernel, this interface appears as a driver object called a user client; in user space, it is called a device interface and is implemented as a Core Foundation Plug-in Services (CFPlugin) object. See also [device interface](#//apple_ref/doc/uid/TP30000744-BCIHAEDE)
    
  
*   **user space**  
    
    Virtual memory outside the protected partition in which the kernel resides. Applications, plug-ins, and other types of modules typically run in user space.
    
  
*   **virtual address**  
    
    A memory address that is usable by software. Each task has its own range of virtual addresses, which begins at address zero. The Mach operating system makes the CPU hardware map these addresses onto physical memory only when necessary, using disk memory at other times.
    
  
*   **virtual memory**  
    
    The use of a disk partition or a file on disk to provide the same facilities usually provided by RAM. The virtual-memory manager in OS X provides 32-bit (minimum) protected address space for each task and facilitates efficient sharing of that address space.
    
  
*   **wired memory**  
    
    A range of memory that the virtual-memory system will not page out or move. The memory involved in an I/O transfer must be wired down to prevent the physical relocation of data being accessed by hardware. In the I/O Kit memory is wired when the memory descriptor describing the memory prepares the memory for I/O (which happens when its `prepare` method is invoked).
    
  
*   **work loop**  
    
    A gating mechanism that ensures single-threaded access to the data structures and hardware registers used by a driver. Specifically, it is a mutex lock associated with a thread. A work loop typically has several event sources attached to it; they use the work loop to ensure a protected, gated context for processing events. See also [event source](#//apple_ref/doc/uid/TP30000744-BCIGEBHF)
    
  

[Next](../Families_Ref/Families_Ref.html)[Previous](../Bibliography/Bibliography.html)

  

  

* * *

Copyright © 2001, 2014 Apple Inc. All Rights Reserved. [Terms of Use](http://www.apple.com/legal/internet-services/terms/site.html) | [Privacy Policy](http://www.apple.com/privacy/) | Updated: 2014-04-09

Sending feedback…
-----------------

We’re sorry, an error has occurred.
-----------------------------------

Please try submitting your feedback later.

Thank you for providing feedback!
---------------------------------

Your input helps improve our developer documentation.

How helpful is this document?
-----------------------------

\*

 Very helpful   Somewhat helpful  Not helpful 

How can we improve this document?
---------------------------------

 Fix typos or links   Fix incorrect information    Add or update code samples    Add or update illustrations  Add information about... 

\*

_\* Required information_

To submit a product bug or enhancement request, please visit the [Bug Reporter](https://developer.apple.com/bugreporter/) page.

Please read [Apple's Unsolicited Idea Submission Policy](http://www.apple.com/legal/policies/ideas.html) before you send us your feedback.
