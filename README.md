# RISC-V-Kernel
Multithreaded Operating System Kernel
Operating Systems 1 – Semester Project

This project implements a compact yet fully functional operating system kernel with support for multithreading and time-sharing, designed for educational purposes and targeting the RISC-V architecture. The system runs in a virtualized environment (RISC-V emulator) and demonstrates core OS concepts through a unified, statically linked application.

Key Features
Thread Management
Supports lightweight processes (threads) within a single user-space application.

Memory Allocation
Includes a built-in dynamic memory allocator for managing heap memory.

Thread Synchronization
Implements basic synchronization primitives, including semaphores, for inter-thread coordination.

Preemptive Scheduling
Enables asynchronous context switching triggered by timer and keyboard interrupts, supporting time-sharing between threads.

Embedded System Design
The kernel and user application share the same address space, forming a monolithic statically linked binary.

RISC-V Compatibility
Fully designed for RISC-V processors, with implementation in C/C++ and RISC-V assembly. Runs in a RISC-V emulator for testing and development.

System Call Interface
The kernel provides a simple but robust Application Binary Interface (ABI) for system calls, allowing user programs to interact with kernel services:
System calls are invoked using software interrupts (ecall instruction in RISC-V).
Arguments are passed through processor registers.
The ABI handles privilege level switching, control transfer, and returning results.
Exception and interrupt handling is implemented via direct-mode processing.

API Layers
To ease integration and usage, the kernel exposes two levels of APIs:

C API
A procedural interface implemented as a collection of system call wrappers.
These functions may directly invoke system calls or provide higher-level logic.

C++ API
An object-oriented abstraction over the C API.
Designed as lightweight wrappers around the procedural interface, offering a more structured and modular programming style.
