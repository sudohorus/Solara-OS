<div align="center">
  <!--
  ```
    ██████  ▒█████   ██▓    ▄▄▄       ██▀███   ▄▄▄          ▒█████    ██████ 
  ▒██    ▒ ▒██▒  ██▒▓██▒   ▒████▄    ▓██ ▒ ██▒▒████▄       ▒██▒  ██▒▒██    ▒ 
  ░ ▓██▄   ▒██░  ██▒▒██░   ▒██  ▀█▄  ▓██ ░▄█ ▒▒██  ▀█▄     ▒██░  ██▒░ ▓██▄   
    ▒   ██▒▒██   ██░▒██░   ░██▄▄▄▄██ ▒██▀▀█▄  ░██▄▄▄▄██    ▒██   ██░  ▒   ██▒
  ▒██████▒▒░ ████▓▒░░██████▒▓█   ▓██▒░██▓ ▒██▒ ▓█   ▓██▒   ░ ████▓▒░▒██████▒▒
  ▒ ▒▓▒ ▒ ░░ ▒░▒░▒░ ░ ▒░▓  ░▒▒   ▓▒█░░ ▒▓ ░▒▓░ ▒▒   ▓▒█░   ░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░
  ░ ░▒  ░ ░  ░ ▒ ▒░ ░ ░ ▒  ░ ▒   ▒▒ ░  ░▒ ░ ▒░  ▒   ▒▒ ░     ░ ▒ ▒░ ░ ░▒  ░ ░
  ░  ░  ░  ░ ░ ░ ▒    ░ ░    ░   ▒     ░░   ░   ░   ▒      ░ ░ ░ ▒  ░  ░  ░  
        ░      ░ ░      ░  ░     ░  ░   ░           ░  ░       ░ ░        ░  
  ```
  -->
  
  <p><em>Chasing the Sun, Shaping the Future.</em></p>

  [![GitHub stars](https://img.shields.io/github/stars/sudohorus/Solara-OS)](https://github.com/sudohorus/Solara-OS/stargazers)
  [![GitHub forks](https://img.shields.io/github/forks/sudohorus/Solara-OS)](https://github.com/sudohorus/Solara-OS/network)
  <br>
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
  [![GitHub issues](https://img.shields.io/github/issues/sudohorus/Solara-OS)](https://github.com/sudohorus/Solara-OS/issues)
  [![Build Status](https://img.shields.io/badge/build-passing-brightgreen)](https://github.com/sudohorus/Solara-OS)
</div>

## 🌍 Languages/Idiomas
- [English](#english)
- [Português](#português)

---

<a name="english"></a>
# English

## Overview
Solara OS is a custom operating system developed from scratch. This project aims to provide a hands-on learning experience for operating system development and computer architecture fundamentals.

## Status
This project is currently in early development (pre-alpha). Core functionality is being implemented, and the system is not yet ready for practical use.

## Features
- **Minimalist bootloader** - Custom 16-bit bootloader
- **Assembly-based** - Written in NASM assembly language
- **Educational** - Designed to be a learning resource for OS development
- **BIOS compatible** - Designed to work with legacy BIOS systems

## Requirements
- Linux-based operating system (Debian, Ubuntu, Fedora, etc.)
- NASM (Netwide Assembler)
- QEMU (for system emulation)
- Make

## Installation

### For Debian-based systems (Ubuntu, Mint, etc.)
```bash
sudo apt install make qemu-system nasm
```

### For Fedora-based systems
```bash
sudo dnf install make qemu-system-x86 nasm
```

### For Arch-based systems
```bash
sudo pacman -S make qemu nasm
```

## Building and Running

Clone the repository:
```bash
git clone https://github.com/sudohorus/Solara-OS.git
cd Solara-OS
```

Build the operating system:
```bash
make
```

Run the operating system in QEMU:
```bash
qemu-system-i386 -fda build/main_floppy.img
```

## Project Structure
- `src/` - Source code directory
  - `main.asm` - Main assembly code for the bootloader and kernel
- `build/` - Build output directory
- `Makefile` - Build configuration.

## Roadmap
- ✅ Basic bootloader
- ✅ "Hello World" display
- 🔄 Memory management
- 🔄 Disk I/O routines
- 🔜 Simple file system
- 🔜 Command-line interface
- 🔜 Basic drivers
- 🔜 User space programs

---

<a name="português"></a>
# Português

## Visão Geral
Solara OS é um sistema operacional personalizado desenvolvido do zero. Este projeto visa proporcionar uma experiência prática de aprendizado sobre desenvolvimento de sistemas operacionais e fundamentos de arquitetura de computadores.

## Status
Este projeto está atualmente em desenvolvimento inicial (pré-alfa). A funcionalidade principal está sendo implementada, e o sistema ainda não está pronto para uso prático.

## Recursos
- **Bootloader minimalista** - Bootloader personalizado de 16 bits
- **Baseado em Assembly** - Escrito em linguagem assembly NASM
- **Educacional** - Projetado para ser um recurso de aprendizado para desenvolvimento de SO
- **Compatível com BIOS** - Projetado para funcionar com sistemas BIOS legados

## Requisitos
- Sistema operacional baseado em Linux (Debian, Ubuntu, Fedora, etc.)
- NASM (Netwide Assembler)
- QEMU (para emulação do sistema)
- Make

## Instalação

### Para sistemas baseados em Debian (Ubuntu, Mint, etc.)
```bash
sudo apt install make qemu-system nasm
```

### Para sistemas baseados em Fedora
```bash
sudo dnf install make qemu-system-x86 nasm
```

### Para sistemas baseados em Arch
```bash
sudo pacman -S make qemu nasm
```

## Compilação e Execução

Clone o repositório:
```bash
git clone https://github.com/sudohorus/Solara-OS.git
cd Solara-OS
```

Compile o sistema operacional:
```bash
make
```

Execute o sistema operacional no QEMU:
```bash
qemu-system-i386 -fda build/main_floppy.img
```

## Estrutura do Projeto
- `src/` - Diretório de código-fonte
  - `main.asm` - Código assembly principal para o bootloader e kernel
- `build/` - Diretório de saída da compilação
- `Makefile` - Configuração de compilação

## Roadmap
- ✅ Bootloader básico
- ✅ Exibição de "Hello World"
- 🔄 Gerenciamento de memória
- 🔄 Rotinas de E/S de disco
- 🔜 Sistema de arquivos simples
- 🔜 Interface de linha de comando
- 🔜 Drivers básicos
- 🔜 Programas de espaço do usuário


