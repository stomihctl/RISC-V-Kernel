# RISC-V Kernel

A compact, multithreaded operating system kernel designed for the RISC-V architecture, built for educational purposes as part of the Operating Systems 1 semester project. The kernel supports lightweight threading, preemptive scheduling, and memory management, running in a virtualized RISC-V emulator environment.

## Features
- **Thread Management**: Supports lightweight user-space threads within a single application.
- **Preemptive Scheduling**: Implements time-sharing with asynchronous context switching triggered by timer and keyboard interrupts.
- **Thread Synchronization**: Provides semaphores for inter-thread coordination.
- **Dynamic Memory Allocation**: Includes a heap-based memory allocator for efficient resource management.
- **System Call Interface**: Offers a robust Application Binary Interface (ABI) using RISC-V `ecall` instructions for system calls, with register-based argument passing and privilege switching.
- **API Layers**:
  - **C API**: Procedural system call wrappers for direct kernel interaction.
  - **Python API**: Object-oriented abstractions over the C API for modular programming.
- **Monolithic Design**: Kernel and user application share a single address space, forming a statically linked binary.
- **RISC-V Compatibility**: Written in C, C++, and RISC-V assembly, fully compatible with RISC-V processors.
- **Exception Handling**: Direct-mode processing for interrupts and exceptions.
