#![feature(asm)]
#![feature(global_asm)]
#![no_main]
#![no_std]

global_asm!(include_str!("boot.S"));

use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    unimplemented!()
}