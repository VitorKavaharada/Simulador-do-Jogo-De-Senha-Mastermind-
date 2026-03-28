# Simulador do Jogo de Senha (Mastermind) em Dart

Este projeto implementa uma versão em modo texto do clássico jogo de lógica **Mastermind**, desenvolvida em **Dart**.  
O objetivo é desafiar o jogador a adivinhar uma sequência secreta de 4 números, entre 1 e 6, gerada aleatoriamente pelo computador.

---

## Funcionalidades

- **Geração da senha secreta**: 4 dígitos aleatórios entre 1 e 6.
- **Interface de usuário**: interação via terminal, com até 10 tentativas.
- **Sistema de feedback**:
  - **Pinos Pretos** → números corretos na posição correta.
  - **Pinos Brancos** → números corretos, mas em posição diferente.
- **Condições de vitória/derrota**:
  - Vitória: acertar a senha em até 10 tentativas.
  - Derrota: esgotar as tentativas sem descobrir a sequência.
- **Validação de entrada**:
  - Apenas números entre 1 e 6.
  - Sequência obrigatória de 4 dígitos.
  - Impede letras ou entradas inválidas.

---

