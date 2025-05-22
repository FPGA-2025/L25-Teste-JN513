# Contador de LEDs  

Na atividade anterior, construímos um simples **Blink**, que fazia um LED do kit FPGA piscar. Agora, vamos dar um passo adiante: nesta atividade, você trabalhará com **múltiplos LEDs**.  

## Atividade  

Seu objetivo é escrever um módulo Verilog chamado **LedCounter**, que deve:  

- Ter um **parâmetro** chamado `CLK_FREQ`, que representa a frequência do clock.  
- Ter como **entradas** os sinais `clk` (clock) e `rst_n` (reset ativo em nível baixo).  
- Ter como **saída** um sinal de 8 bits chamado `leds`.  

O comportamento esperado do módulo é simples: ele deve implementar um **contador de 8 bits**, exibindo seu valor nos LEDs. Esse contador deve:  

- **Incrementar a cada 1 segundo**, utilizando `CLK_FREQ` como referência.  
- **Iniciar com valor 0** quando `rst_n` estiver acionado.  

### Código inicial  

Como ponto de partida, utilize o esqueleto de código abaixo:  

```verilog
module LedCounter #(
    parameter CLK_FREQ = 25_000_000
) (
    input  wire clk,
    input  wire rst_n,
    output wire [7:0] leds
);

endmodule
```

## Entrega

Realize um *commit* no repositório do **GitHub Classroom**. O sistema de correção automática irá validar sua implementação e atribuir uma nota com base nos testes.

> **Dica:**  
Não altere os arquivos de correção! Para entender como os testes funcionam, consulte o script `run.sh` disponível no repositório.
