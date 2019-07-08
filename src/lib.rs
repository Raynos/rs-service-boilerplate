//! Boilerplate rust app

#![forbid(future_incompatible, rust_2018_idioms)]
#![deny(
    missing_debug_implementations,
    nonstandard_style,
    trivial_casts,
    unused_allocation
)]
#![warn(missing_docs, missing_doc_code_examples)]
#![cfg_attr(test, deny(warnings))]

pub mod server;
pub mod turbo_http_service;
