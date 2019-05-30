# Virtual Machines




## What is it
* A computer is an electronic device that gets stuff done, and they're made of **hardware** (physical components), and they run **software**
* **Operating Systems** are software that can control hardware
  - e.g. windows, mac osx, linux
* A **virtual machine** is just a computer file - typically called an **image** - that behaves like a computer - that is, an **emulation of a computer system**
  - a typical use case is emulating an operating system - a **system virtual machine**
  - can also get **application virtual machines** (or managed runtime environments, MREs) that allow you to run a single process in a platform-independent programming environment: a good example of this is the **Java virtual machine (JVM)**
  - The **image** is, I guess, the binary representation of the system/process that's being run in its current state?
* A **virtual machine manager** or hypervisor is a type of software that allows us to **run and manage** virtual machines
  - e.g. virtualbox, vmware




## Features
* Virtual machines get their own IP address and everything
* They can run all the sorts of programs that your normal OS could
* They are sandboxed from the rest of the system, so the software can't escape or do anything to the computer itself
* Each virtual machine provides its own 'virtual hardware', including CPUs, memory, hard drives, network interfaces --> this maps onto the real hardware of the physical machine, saving costs.
