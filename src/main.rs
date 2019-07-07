//! Boilerplate rust app

#![deny(
    missing_docs,
    missing_debug_implementations,
    missing_copy_implementations,
    nonstandard_style,
    trivial_casts,
    unused_import_braces,
    unused_allocation
)]
#![forbid(future_incompatible, rust_2018_idioms)]
#![warn(missing_docs, missing_doc_code_examples)]
#![cfg_attr(test, deny(warnings))]
#![feature(async_await)]

fn main() {
    println!("Hello, world!");
}
