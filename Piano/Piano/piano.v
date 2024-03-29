/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module DIG_Counter_Nbit
#(
    parameter Bits = 2
)
(
    output [(Bits-1):0] out,
    output ovf,
    input C,
    input en,
    input clr
);
    reg [(Bits-1):0] count;

    always @ (posedge C) begin
        if (clr)
          count <= 'h0;
        else if (en)
          count <= count + 1'b1;
    end

    assign out = count;
    assign ovf = en? &count : 1'b0;

    initial begin
        count = 'h0;
    end
endmodule

module selectorNotes(
    input [6:0] notas,
    input fq_DO,
    input fq_RE,
    input fq_MI,
    input fq_FA,
    input fq_SOL,
    input fq_LA,
    input fq_SI,
    input clk,
    output reg outFq
);


always @(posedge clk) begin
    if(notas[0]) begin
        outFq=fq_DO;
    end
    else if(notas[1])begin
        outFq=fq_RE;
    end
    else if(notas[2])begin
        outFq=fq_MI;
    end
    else if(notas[3])begin
        outFq=fq_FA;
    end
    else if(notas[4])begin
        outFq=fq_SOL;
    end
    else if(notas[5])begin
        outFq=fq_LA;
    end
    else if(notas[6])begin
        outFq=fq_SI;
    end
    else begin
        outFq=outFq;
    end
end
endmodule

module CompUnsigned #(
    parameter Bits = 1
)
(
    input [(Bits -1):0] a,
    input [(Bits -1):0] b,
    output \> ,
    output \= ,
    output \<
);
    assign \> = a > b;
    assign \= = a == b;
    assign \< = a < b;
endmodule

module DIG_ROM_256X8_ROM (
    input [7:0] A,
    input sel,
    output reg [7:0] D
);
    reg [7:0] my_rom [0:255];

    always @ (*) begin
        if (~sel)
            D = 8'hz;
        else
            D = my_rom[A];
    end

    initial begin
        my_rom[0] = 8'h80;
        my_rom[1] = 8'h83;
        my_rom[2] = 8'h86;
        my_rom[3] = 8'h89;
        my_rom[4] = 8'h8c;
        my_rom[5] = 8'h8f;
        my_rom[6] = 8'h92;
        my_rom[7] = 8'h95;
        my_rom[8] = 8'h98;
        my_rom[9] = 8'h9c;
        my_rom[10] = 8'h9f;
        my_rom[11] = 8'ha2;
        my_rom[12] = 8'ha5;
        my_rom[13] = 8'ha8;
        my_rom[14] = 8'hab;
        my_rom[15] = 8'hae;
        my_rom[16] = 8'hb0;
        my_rom[17] = 8'hb3;
        my_rom[18] = 8'hb6;
        my_rom[19] = 8'hb9;
        my_rom[20] = 8'hbc;
        my_rom[21] = 8'hbf;
        my_rom[22] = 8'hc1;
        my_rom[23] = 8'hc4;
        my_rom[24] = 8'hc7;
        my_rom[25] = 8'hc9;
        my_rom[26] = 8'hcc;
        my_rom[27] = 8'hce;
        my_rom[28] = 8'hd1;
        my_rom[29] = 8'hd3;
        my_rom[30] = 8'hd5;
        my_rom[31] = 8'hd8;
        my_rom[32] = 8'hda;
        my_rom[33] = 8'hdc;
        my_rom[34] = 8'hde;
        my_rom[35] = 8'he0;
        my_rom[36] = 8'he2;
        my_rom[37] = 8'he4;
        my_rom[38] = 8'he6;
        my_rom[39] = 8'he8;
        my_rom[40] = 8'hea;
        my_rom[41] = 8'heb;
        my_rom[42] = 8'hed;
        my_rom[43] = 8'hef;
        my_rom[44] = 8'hf0;
        my_rom[45] = 8'hf2;
        my_rom[46] = 8'hf3;
        my_rom[47] = 8'hf4;
        my_rom[48] = 8'hf6;
        my_rom[49] = 8'hf7;
        my_rom[50] = 8'hf8;
        my_rom[51] = 8'hf9;
        my_rom[52] = 8'hfa;
        my_rom[53] = 8'hfb;
        my_rom[54] = 8'hfb;
        my_rom[55] = 8'hfc;
        my_rom[56] = 8'hfd;
        my_rom[57] = 8'hfd;
        my_rom[58] = 8'hfe;
        my_rom[59] = 8'hfe;
        my_rom[60] = 8'hfe;
        my_rom[61] = 8'hff;
        my_rom[62] = 8'hff;
        my_rom[63] = 8'hff;
        my_rom[64] = 8'hff;
        my_rom[65] = 8'hff;
        my_rom[66] = 8'hff;
        my_rom[67] = 8'hff;
        my_rom[68] = 8'hfe;
        my_rom[69] = 8'hfe;
        my_rom[70] = 8'hfd;
        my_rom[71] = 8'hfd;
        my_rom[72] = 8'hfc;
        my_rom[73] = 8'hfc;
        my_rom[74] = 8'hfb;
        my_rom[75] = 8'hfa;
        my_rom[76] = 8'hf9;
        my_rom[77] = 8'hf8;
        my_rom[78] = 8'hf7;
        my_rom[79] = 8'hf6;
        my_rom[80] = 8'hf5;
        my_rom[81] = 8'hf4;
        my_rom[82] = 8'hf2;
        my_rom[83] = 8'hf1;
        my_rom[84] = 8'hef;
        my_rom[85] = 8'hee;
        my_rom[86] = 8'hec;
        my_rom[87] = 8'heb;
        my_rom[88] = 8'he9;
        my_rom[89] = 8'he7;
        my_rom[90] = 8'he5;
        my_rom[91] = 8'he3;
        my_rom[92] = 8'he1;
        my_rom[93] = 8'hdf;
        my_rom[94] = 8'hdd;
        my_rom[95] = 8'hdb;
        my_rom[96] = 8'hd9;
        my_rom[97] = 8'hd7;
        my_rom[98] = 8'hd4;
        my_rom[99] = 8'hd2;
        my_rom[100] = 8'hcf;
        my_rom[101] = 8'hcd;
        my_rom[102] = 8'hca;
        my_rom[103] = 8'hc8;
        my_rom[104] = 8'hc5;
        my_rom[105] = 8'hc3;
        my_rom[106] = 8'hc0;
        my_rom[107] = 8'hbd;
        my_rom[108] = 8'hba;
        my_rom[109] = 8'hb8;
        my_rom[110] = 8'hb5;
        my_rom[111] = 8'hb2;
        my_rom[112] = 8'haf;
        my_rom[113] = 8'hac;
        my_rom[114] = 8'ha9;
        my_rom[115] = 8'ha6;
        my_rom[116] = 8'ha3;
        my_rom[117] = 8'ha0;
        my_rom[118] = 8'h9d;
        my_rom[119] = 8'h9a;
        my_rom[120] = 8'h97;
        my_rom[121] = 8'h94;
        my_rom[122] = 8'h91;
        my_rom[123] = 8'h8e;
        my_rom[124] = 8'h8a;
        my_rom[125] = 8'h87;
        my_rom[126] = 8'h84;
        my_rom[127] = 8'h81;
        my_rom[128] = 8'h7e;
        my_rom[129] = 8'h7b;
        my_rom[130] = 8'h78;
        my_rom[131] = 8'h75;
        my_rom[132] = 8'h71;
        my_rom[133] = 8'h6e;
        my_rom[134] = 8'h6b;
        my_rom[135] = 8'h68;
        my_rom[136] = 8'h65;
        my_rom[137] = 8'h62;
        my_rom[138] = 8'h5f;
        my_rom[139] = 8'h5c;
        my_rom[140] = 8'h59;
        my_rom[141] = 8'h56;
        my_rom[142] = 8'h53;
        my_rom[143] = 8'h50;
        my_rom[144] = 8'h4d;
        my_rom[145] = 8'h4a;
        my_rom[146] = 8'h47;
        my_rom[147] = 8'h45;
        my_rom[148] = 8'h42;
        my_rom[149] = 8'h3f;
        my_rom[150] = 8'h3c;
        my_rom[151] = 8'h3a;
        my_rom[152] = 8'h37;
        my_rom[153] = 8'h35;
        my_rom[154] = 8'h32;
        my_rom[155] = 8'h30;
        my_rom[156] = 8'h2d;
        my_rom[157] = 8'h2b;
        my_rom[158] = 8'h28;
        my_rom[159] = 8'h26;
        my_rom[160] = 8'h24;
        my_rom[161] = 8'h22;
        my_rom[162] = 8'h20;
        my_rom[163] = 8'h1e;
        my_rom[164] = 8'h1c;
        my_rom[165] = 8'h1a;
        my_rom[166] = 8'h18;
        my_rom[167] = 8'h16;
        my_rom[168] = 8'h14;
        my_rom[169] = 8'h13;
        my_rom[170] = 8'h11;
        my_rom[171] = 8'h10;
        my_rom[172] = 8'he;
        my_rom[173] = 8'hd;
        my_rom[174] = 8'hb;
        my_rom[175] = 8'ha;
        my_rom[176] = 8'h9;
        my_rom[177] = 8'h8;
        my_rom[178] = 8'h7;
        my_rom[179] = 8'h6;
        my_rom[180] = 8'h5;
        my_rom[181] = 8'h4;
        my_rom[182] = 8'h3;
        my_rom[183] = 8'h3;
        my_rom[184] = 8'h2;
        my_rom[185] = 8'h2;
        my_rom[186] = 8'h1;
        my_rom[187] = 8'h1;
        my_rom[188] = 8'h0;
        my_rom[189] = 8'h0;
        my_rom[190] = 8'h0;
        my_rom[191] = 8'h0;
        my_rom[192] = 8'h0;
        my_rom[193] = 8'h0;
        my_rom[194] = 8'h0;
        my_rom[195] = 8'h1;
        my_rom[196] = 8'h1;
        my_rom[197] = 8'h1;
        my_rom[198] = 8'h2;
        my_rom[199] = 8'h2;
        my_rom[200] = 8'h3;
        my_rom[201] = 8'h4;
        my_rom[202] = 8'h4;
        my_rom[203] = 8'h5;
        my_rom[204] = 8'h6;
        my_rom[205] = 8'h7;
        my_rom[206] = 8'h8;
        my_rom[207] = 8'h9;
        my_rom[208] = 8'hb;
        my_rom[209] = 8'hc;
        my_rom[210] = 8'hd;
        my_rom[211] = 8'hf;
        my_rom[212] = 8'h10;
        my_rom[213] = 8'h12;
        my_rom[214] = 8'h14;
        my_rom[215] = 8'h15;
        my_rom[216] = 8'h17;
        my_rom[217] = 8'h19;
        my_rom[218] = 8'h1b;
        my_rom[219] = 8'h1d;
        my_rom[220] = 8'h1f;
        my_rom[221] = 8'h21;
        my_rom[222] = 8'h23;
        my_rom[223] = 8'h25;
        my_rom[224] = 8'h27;
        my_rom[225] = 8'h2a;
        my_rom[226] = 8'h2c;
        my_rom[227] = 8'h2e;
        my_rom[228] = 8'h31;
        my_rom[229] = 8'h33;
        my_rom[230] = 8'h36;
        my_rom[231] = 8'h38;
        my_rom[232] = 8'h3b;
        my_rom[233] = 8'h3e;
        my_rom[234] = 8'h40;
        my_rom[235] = 8'h43;
        my_rom[236] = 8'h46;
        my_rom[237] = 8'h49;
        my_rom[238] = 8'h4c;
        my_rom[239] = 8'h4f;
        my_rom[240] = 8'h51;
        my_rom[241] = 8'h54;
        my_rom[242] = 8'h57;
        my_rom[243] = 8'h5a;
        my_rom[244] = 8'h5d;
        my_rom[245] = 8'h60;
        my_rom[246] = 8'h63;
        my_rom[247] = 8'h67;
        my_rom[248] = 8'h6a;
        my_rom[249] = 8'h6d;
        my_rom[250] = 8'h70;
        my_rom[251] = 8'h73;
        my_rom[252] = 8'h76;
        my_rom[253] = 8'h79;
        my_rom[254] = 8'h7c;
        my_rom[255] = 8'h7f;
    end
endmodule


module piano (
  input bntDo,
  input btnRe,
  input btnMi,
  input btnFa,
  input bntSol,
  input btnLa,
  input btnSi,
  input CLK,
  output [7:0] Sonido
);
  wire HzDo;
  wire [26:0] s0;
  wire HzRe;
  wire [26:0] s1;
  wire HzMi;
  wire [26:0] s2;
  wire HzFa;
  wire [26:0] s3;
  wire s4;
  wire [7:0] s5;
  wire HzSol;
  wire [26:0] s6;
  wire HzLa;
  wire [26:0] s7;
  wire HzSi;
  wire [26:0] s8;
  wire [6:0] notas;
  assign notas[0] = ~ bntDo;
  assign notas[1] = ~ btnRe;
  assign notas[2] = ~ btnMi;
  assign notas[3] = ~ btnFa;
  assign notas[4] = ~ bntSol;
  assign notas[5] = ~ btnLa;
  assign notas[6] = ~ btnSi;
  DIG_Counter_Nbit #(
    .Bits(27)
  )
  DIG_Counter_Nbit_i0 (
    .en( 1'b1 ),
    .C( CLK ),
    .clr( HzDo ),
    .out( s0 )
  );
  DIG_Counter_Nbit #(
    .Bits(27)
  )
  DIG_Counter_Nbit_i1 (
    .en( 1'b1 ),
    .C( CLK ),
    .clr( HzRe ),
    .out( s1 )
  );
  DIG_Counter_Nbit #(
    .Bits(27)
  )
  DIG_Counter_Nbit_i2 (
    .en( 1'b1 ),
    .C( CLK ),
    .clr( HzMi ),
    .out( s2 )
  );
  DIG_Counter_Nbit #(
    .Bits(27)
  )
  DIG_Counter_Nbit_i3 (
    .en( 1'b1 ),
    .C( CLK ),
    .clr( HzFa ),
    .out( s3 )
  );
  DIG_Counter_Nbit #(
    .Bits(27)
  )
  DIG_Counter_Nbit_i4 (
    .en( 1'b1 ),
    .C( CLK ),
    .clr( HzSol ),
    .out( s6 )
  );
  DIG_Counter_Nbit #(
    .Bits(27)
  )
  DIG_Counter_Nbit_i5 (
    .en( 1'b1 ),
    .C( CLK ),
    .clr( HzLa ),
    .out( s7 )
  );
  DIG_Counter_Nbit #(
    .Bits(27)
  )
  DIG_Counter_Nbit_i6 (
    .en( 1'b1 ),
    .C( CLK ),
    .clr( HzSi ),
    .out( s8 )
  );
  // selectorNotes
  selectorNotes selectorNotes_i7 (
    .notas( notas ),
    .fq_DO( HzDo ),
    .fq_RE( HzRe ),
    .fq_MI( HzMi ),
    .fq_FA( HzFa ),
    .fq_SOL( HzSol ),
    .fq_LA( HzLa ),
    .fq_SI( HzSi ),
    .clk( CLK ),
    .outFq( s4 )
  );
  CompUnsigned #(
    .Bits(27)
  )
  CompUnsigned_i8 (
    .a( 27'b1011101010 ),
    .b( s0 ),
    .\= ( HzDo )
  );
  CompUnsigned #(
    .Bits(27)
  )
  CompUnsigned_i9 (
    .a( 27'b1010011000 ),
    .b( s1 ),
    .\= ( HzRe )
  );
  CompUnsigned #(
    .Bits(27)
  )
  CompUnsigned_i10 (
    .a( 27'b1001010000 ),
    .b( s2 ),
    .\= ( HzMi )
  );
  CompUnsigned #(
    .Bits(27)
  )
  CompUnsigned_i11 (
    .a( 27'b1000101110 ),
    .b( s3 ),
    .\= ( HzFa )
  );
  DIG_Counter_Nbit #(
    .Bits(8)
  )
  DIG_Counter_Nbit_i12 (
    .en( 1'b1 ),
    .C( s4 ),
    .clr( 1'b0 ),
    .out( s5 )
  );
  CompUnsigned #(
    .Bits(27)
  )
  CompUnsigned_i13 (
    .a( 27'b111110001 ),
    .b( s6 ),
    .\= ( HzSol )
  );
  CompUnsigned #(
    .Bits(27)
  )
  CompUnsigned_i14 (
    .a( 27'b110111011 ),
    .b( s7 ),
    .\= ( HzLa )
  );
  CompUnsigned #(
    .Bits(27)
  )
  CompUnsigned_i15 (
    .a( 27'b110001010 ),
    .b( s8 ),
    .\= ( HzSi )
  );
  // ROM
  DIG_ROM_256X8_ROM DIG_ROM_256X8_ROM_i16 (
    .A( s5 ),
    .sel( 1'b1 ),
    .D( Sonido )
  );
endmodule
