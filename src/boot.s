// SPDX-License-Identifier: MIT OR Apache-2.0
//
// Copyright (c) 2018-2021 Andre Richter <andre.o.richter@gmail.com>

.section ".text._start"

.global _start

_start:
1:  mrs     x1, mpidr_el1   // Read Multiprocessor Affinity Register
    and     x1, x1, #3      // Clear all bits except [1:0], which hold core id
    cbz     x1, 2f          // Jump to label 2 if we are core 0
    b       1b              // In case an event happened, jump back to 1
2:  b       1b
