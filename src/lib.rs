pub mod arvore;
pub mod avaliacao;
pub mod conexao;
pub mod csv_helper;
pub mod dado_papete;
pub mod movimento;
pub mod neural;
pub mod papete;
pub mod previsor;

extern crate tensorflow;

use std::ffi::CStr;
use std::os::raw::c_char;

use conexao::Conexao;
use movimento::Movimento;
use papete::Papete;

#[no_mangle]
pub unsafe extern "C" fn alocar_papete() -> *mut Papete {
    let s = Box::new(Papete::new());
    Box::into_raw(s)
}

#[no_mangle]
pub unsafe extern "C" fn liberar_papete(s: *mut Papete) {
    drop(Box::from_raw(s));
}

#[no_mangle]
pub unsafe extern "C" fn iniciar_sessao(s: *mut Papete) {
    (*s).iniciar_sessao(0);
}

#[no_mangle]
pub unsafe extern "C" fn listar_conexoes_disponiveis(array_ptr: *mut u8) -> i32 {
    let mut preenchidos = 0;
    let mut contador = 0;
    for c in Papete::listar_conexoes_disponiveis() {
        if let Conexao::USB(str) = c {
            for byte in str.as_bytes() {
                *(array_ptr.offset(preenchidos)) = *byte;
                preenchidos += 1;
            }
            *(array_ptr.offset(preenchidos)) = b',';
            preenchidos += 1;
            contador += 1;
        }
    }
    //null-terminator
    *(array_ptr.offset(preenchidos - 1)) = 0;
    contador
}

#[no_mangle]
pub unsafe extern "C" fn listar_conexoes_atuais(s: *mut Papete, array_ptr: *mut u8) -> i32 {
    let mut preenchidos = 0;
    let mut contador = 0;
    for c in (*s).obter_conexoes() {
        if let Conexao::USB(str) = c {
            for byte in str.as_bytes() {
                *(array_ptr.offset(preenchidos)) = *byte;
                preenchidos += 1;
            }
            *(array_ptr.offset(preenchidos)) = b',';
            preenchidos += 1;
            contador += 1;
        }
    }
    //null-terminator
    *(array_ptr.offset(preenchidos - 1)) = 0;
    contador
}

#[no_mangle]
pub unsafe extern "C" fn conectar(s: *mut Papete, porta_chars: *const c_char) -> bool {
    let c_str = unsafe {
        assert!(!s.is_null());
        CStr::from_ptr(porta_chars)
    };

    let r_str = String::from(c_str.to_str().unwrap());

    let porta = Conexao::USB(r_str);
    (*s).conectar(porta)
}

#[no_mangle]
pub unsafe extern "C" fn obter_movimento(s: *mut Papete) -> Movimento {
    (*s).obter_movimento()
}

#[no_mangle]
pub unsafe extern "C" fn ativar_modo_conexao_imediata(s: *mut Papete) {
    (*s).ativar_modo_conexao_imediata(1);
}

#[no_mangle]
pub unsafe extern "C" fn desativar_modo_conexao_imediata(s: *mut Papete) {
    (*s).desativar_modo_conexao_imediata();
}
