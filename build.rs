// build.rs

use std::{fs, path::PathBuf, str::FromStr};

fn main() {
    // Somente faz as copias em modo de release
    if !cfg!(debug_assertions) {
        let libraries = ["asmjit.dll", "c10.dll", "fbgemm.dll", "fbjni.dll", "libiomp5md.dll", "torch_cpu.dll"];

        let mut origem = PathBuf::from_str(&(std::env::var("OUT_DIR").unwrap())).unwrap();
        origem.pop();
        origem.pop();
        origem.pop();
        origem.pop();
        origem.push("debug");
        origem.push("build");
        origem.push("torch-sys-4cff02744dc1898e");
        origem.push("out");
        origem.push("libtorch");
        origem.push("libtorch");
        origem.push("lib");
    
        let mut destino = PathBuf::from_str(&std::env::var("OUT_DIR").unwrap()).unwrap();
        destino.pop();
        destino.pop();
        destino.pop();
    
        for lib in libraries{
            origem.push(lib);
            destino.push(lib);
            println!("copiando {:?} >> {:?}",origem,destino);
            fs::copy(&origem, &destino).unwrap();
            println!("copiado");
            origem.pop();
            destino.pop();
        }
    }
}
