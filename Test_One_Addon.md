##Define the following and give examples of each.
###1.	Multi-tasking
Multi-tasking is similar to multi programming as both are time sharing systems. The processor is kept busy by the context switching among threads, instead of the programs which is seen in multi-programming. A thread can be described as sub-tasks of an application or program. These threads of the program share the resources in common such as CPU and memory. The context switching takes place among the threads of the same single program or application. This makes the CPU time to be used more efficiently and also achieve the illusion of parallelism.For example, if one process crashes, it will not affect the other running programs, since the computer handles each process separately. In other words, if you are in the middle of writing a paper in a word processing program and your Web browser unexpectedly quits, you won't lose your work.
###2.	Multi-programming
In order to reduce the processor idle time and increase the efficiency multi-tasking was introduced. In multitasking approach, the OS along with two or more user programs can reside in the memory provided there is enough space. When one job needs to wait for I/O, the processor can switch to the other job, which makes processor not to wait for the for I/O. Instead, the processor can to other programs which is along with the OS in the memory. The context switching between one program to another program takes place, which makes the processor more efficiently used. This method is known as multitasking.A computer running excel and firefox browser simultaneously is an example of multiprogramming.
###3.	Multi-processing
Two or more similar processors of comparable capability coordinate together to execute programs. A single program is divided into sub tasks and distributed among the processors, which share the same main memory and I/O facilities and are interconnected by a bus or other internal connection scheme, such that memory access time is approximately the same for each processor. The system is controlled by an integrated operating system that provides interaction between processors and their programs at the job, task, file, and data element levels.
###4.	Multi-threaded
Multi-threaded is a technique in which a process, executing an application, is divided into threads that can run concurrently. A thread is a dispatch-able unit of work. It includes a processor context (which includes the program counter and stack pointer) and its own data area for a stack (to enable subroutine branching). A thread executes sequentially and is interrupt able so that the processor can turn to another thread.
#Review Questions from Chapters 3
##1.	What is an instruction trace?
We can characterize the behavior of an individual process by listing the sequence of instructions that execute for that process. Such a listing is referred to as an instruction trace of the process.
##2.	What common events lead to the creation of a process?
a)	New batch job: The OS is provided with a batch job control stream, usually on tape or disk. When the OS is prepared to take on new work, it will read the next sequence of job control commands.
b)	Interactive log-on: A user at a terminal logs on to the system.
c)	Created by OS to provide a service: The OS can create a process to perform a function on behalf of a user program, without the user having to wait (e.g., a process to control printing).
d)	Spawned by existing process: For purposes of modularity or to exploit parallelism, a user program can dictate the creation of a number of processes.
##3.	What does it mean to preempt a process?
Preemption is nothing but regaining of a resource from a process before the process has finished using it at certain clock intervals. In this case, the resource is the processor itself. The process is executing and could continue to execute, but is preempted so that another process can be executed.
##4.	What is swapping and what is its purpose?
The process of moving a part or all processes from main memory to disk is called as swapping. Swapping is used to enhance performance of system by managing the memory efficiently. 
##5.	Why does Figure 3.9b have two blocked states?
All of the processes that have been suspended were in the Blocked state at the time of suspension. A blocked process, when back into main memory, is still not ready for execution. However, that each process in the Suspend state was originally blocked on a particular event. When that event occurs, the process is not blocked and is potentially available for execution. 
There are two independent concepts here: whether a process is waiting on an event (blocked or not) and whether a process has been swapped out of main memory (suspended or not). Therefore, we need two states called 
•	Blocked: The process is in main memory and awaiting an event.
•	Blocked/Suspend: The process is in secondary memory and awaiting an event.
##6.	List four characteristics of a suspended process.
1. The process is not immediately available for execution. 
2. The process may or may not be waiting on an event. If it is, this blocked condition is independent of the suspend condition, and occurrence of the blocking event does not enable the process to be executed immediately.
3. The process was placed in a suspended state by an agent: either itself, a parent process, or the OS, for the purpose of preventing its execution. 
4. The process may not be removed from this state until the agent explicitly orders the removal.

##7.	List three general categories of information in a process control block.
a.	Process Identification
b.	Processor State Information
c.	Process Control Information
##8.	Why are two modes (user and kernel) needed?
•	In order to provide the protection for memory and privileged instruction which might contain the code related to monitor or system to drive hardware, vendors came up with user mode and kernel mode.
•	A user program executes in a user mode, in which certain areas of memory are protected from the user’s use and in which certain instructions may not be executed.
•	The monitor executes in a system mode, or what has come to be called kernel mode, in which privileged instructions may be executed and in which protected areas of memory may be accessed.
##9.	What is the difference between an interrupt and a trap?
Generally, a computer, provides a mechanism to halt CPU temporarily during its normal execution of a program, mostly through events. These events are called interrupts.
An Interrupt is said to be occurred due to some sort of event that is external to and independent of the currently running process, such as the completion of an I/O operation.
Trap is also a kind interruption which halts the CPU temporarily which is not because of external or hardware factors but is dependent on the currently running process. There might be an error or exception condition generated within the currently running process, such as an illegal file access attempt.

##10.	Give three examples of an interrupt.
•	Interrupt due to program: Generated by some condition that occurs as a result of an instruction execution, such as arithmetic overflow, division by zero, attempt to execute an illegal machine instruction, and reference outside a user’s allowed memory space.
•	Timer Interrupt: Generated by a timer within the processor. This allows the operating system to perform certain functions on a regular basis.
•	Interrupt by hardware failure: Generated by a failure, such as power failure or memory parity error.
##11.	What is the difference between a mode switch and a process switch?
Mode Switch: A hardware operation that occurs that causes the processor to execute in a different mode (kernel or process). When the mode switches from process to kernel, the program counter, processor status word, and other registers are saved. When the mode switches from kernel to process, this information is restored.
process switch: An operation that switches the processor from one process to another, by saving all the process control block, registers, and other information for the first and replacing them with the process information for the second.


