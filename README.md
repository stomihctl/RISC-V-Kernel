# RISC-V Kernel

A lightweight, multithreaded operating system kernel designed for the RISC-V architecture, developed as a semester project for Operating Systems 1. The kernel supports thread management, preemptive scheduling, memory allocation, and synchronization, running in a RISC-V emulator as a statically linked monolithic binary.

## Key Features
- **Thread Management**: Supports lightweight user-space threads within a single application.
- **Preemptive Scheduling**: Enables time-sharing via asynchronous context switching triggered by timer and keyboard interrupts.
- **Synchronization**: Implements semaphores for efficient inter-thread coordination.
- **Dynamic Memory Allocation**: Provides a heap-based memory allocator for resource management.
- **Embedded System Design**: Kernel and user application share a single address space, forming a statically linked binary.
- **RISC-V Compatibility**: Fully implemented for RISC-V processors using C, C++, and RISC-V assembly.
- **System Call Interface**:
  - Robust Application Binary Interface (ABI) using RISC-V `ecall` instructions for system calls.
  - Argument passing via processor registers with privilege level switching.
  - Direct-mode processing for exception and interrupt handling.
- **API Layers**:
  - **C API**: Procedural wrappers for system calls, supporting direct kernel interaction.
  - **C++ API**: Object-oriented abstractions over the C API, offering modular and structured programming.
