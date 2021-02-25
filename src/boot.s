// SPDX-License-Identifier: MIT OR Apache-2.0
//
// Copyright (c) 2018-2021 Andre Richter <andre.o.richter@gmail.com>

.section ".boot"

.global _start

_start:
1:  wfe         // Wait for event
    b       1b  // In case an event happened, jump back to 1