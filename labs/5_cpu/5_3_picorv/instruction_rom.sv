//
//  schoolRISCV - small RISC-V CPU
//
//  Originally based on Sarah L. Harris MIPS CPU
//  & schoolMIPS project.
//
//  Copyright (c) 2017-2020 Stanislav Zhelnio & Aleksandr Romanov.
//
//  Modified in 2024 by Yuri Panchul & Mike Kuskov
//  for systemverilog-homework project.
//

module instruction_rom
#(
    parameter SIZE = 64
)
(
    input  [31:0] mem_addr,
    output [31:0] mem_rdata
);
    logic [31:0] rom [0:SIZE - 1];
    assign mem_rdata = rom [mem_addr >> 2];

    initial $readmemh ("program.hex", rom);

endmodule
