/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Oct  8 02:43:46 2023
/////////////////////////////////////////////////////////////


module MustangTLC ( clk, rst_n, brake, turn_right, turn_left, 
        right_tail_light_control, left_tail_light_control );
  output [0:2] right_tail_light_control;
  output [0:2] left_tail_light_control;
  input clk, rst_n, brake, turn_right, turn_left;
  wire   n106, n107, n108, n109, N24, N25, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n27, n28, n29, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n70, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n93, n95, n97, n99, n100, n101,
         n102, n103, n104, n105;

  DFFR_E \left_tail_light_control_reg[0]  ( .D(n47), .CLK(clk), .RN(n62), .Q(
        n108), .QBAR(n41) );
  DFFR_E \left_tail_light_control_reg[1]  ( .D(n75), .CLK(clk), .RN(n62), .Q(
        n109), .QBAR(n37) );
  DFFR_E \left_tail_light_control_reg[2]  ( .D(n45), .CLK(clk), .RN(n62), 
        .QBAR(n49) );
  DFFR_E \right_tail_light_control_reg[0]  ( .D(n44), .CLK(clk), .RN(n62), .Q(
        n106), .QBAR(n36) );
  DFFR_E \right_tail_light_control_reg[1]  ( .D(n43), .CLK(clk), .RN(n62), .Q(
        n107), .QBAR(n35) );
  DFFR_E \right_tail_light_control_reg[2]  ( .D(n42), .CLK(clk), .RN(n62), 
        .QBAR(n48) );
  DFFR_E \count_reg[0]  ( .D(n88), .CLK(clk), .RN(n62), .Q(n53), .QBAR(n39) );
  DFFR_E \count_reg[1]  ( .D(N25), .CLK(clk), .RN(n62), .Q(n105), .QBAR(n40)
         );
  DFFR_E \count_reg[2]  ( .D(n52), .CLK(clk), .RN(n62), .QBAR(n38) );
  INVERT_H U46 ( .A(turn_left), .Z(n54) );
  INVERT_H U47 ( .A(n39), .Z(n101) );
  NAND2_D U48 ( .A(n72), .B(n28), .Z(n47) );
  AO21_F U49 ( .A1(n32), .A2(n60), .B(n17), .Z(n50) );
  AO21_F U50 ( .A1(n16), .A2(n58), .B(n17), .Z(n51) );
  NAND3_D U51 ( .A(n11), .B(n86), .C(n102), .Z(n27) );
  OAI22_B U52 ( .A1(n14), .A2(n22), .B1(n90), .B2(n33), .Z(n52) );
  INVERT_J U53 ( .A(n103), .Z(n68) );
  INVERT_I U54 ( .A(n49), .Z(n103) );
  INVERT_J U55 ( .A(n104), .Z(n70) );
  INVERT_I U56 ( .A(n48), .Z(n104) );
  INVERT_L U57 ( .A(n101), .Z(n102) );
  INVERT_K U58 ( .A(n57), .Z(n11) );
  INVERT_F U59 ( .A(n56), .Z(n58) );
  INVERT_I U60 ( .A(n54), .Z(n55) );
  INVERT_H U61 ( .A(brake), .Z(n56) );
  INVERT_H U62 ( .A(n56), .Z(n57) );
  INVERT_H U63 ( .A(turn_right), .Z(n59) );
  INVERT_L U64 ( .A(n59), .Z(n60) );
  INVERT_I U65 ( .A(rst_n), .Z(n61) );
  INVERT_N U66 ( .A(n61), .Z(n62) );
  XNOR2_B U67 ( .A(n13), .B(n100), .Z(N25) );
  INVERT_H U68 ( .A(n23), .Z(n73) );
  NOR2_C U69 ( .A(n18), .B(n13), .Z(n29) );
  INVERTBAL_J U70 ( .A(n23), .Z(n18) );
  INVERT_H U71 ( .A(n7), .Z(n63) );
  INVERT_H U72 ( .A(n63), .Z(n64) );
  INVERT_F U73 ( .A(n81), .Z(n79) );
  BUFFER_H U74 ( .A(n3), .Z(n81) );
  OAI21_C U75 ( .A1(n4), .A2(n35), .B(n5), .Z(n43) );
  AOI21_B U76 ( .A1(n6), .A2(n4), .B(n64), .Z(n5) );
  AOI21_B U77 ( .A1(n80), .A2(n60), .B(n1), .Z(n2) );
  AOI21_B U78 ( .A1(n100), .A2(n34), .B(n88), .Z(n33) );
  NAND2_F U79 ( .A(n13), .B(n86), .Z(n22) );
  INVERT_J U80 ( .A(n102), .Z(n13) );
  INVERT_H U81 ( .A(n50), .Z(n65) );
  INVERT_H U82 ( .A(n51), .Z(n66) );
  AO21_E U83 ( .A1(n23), .A2(n6), .B(n25), .Z(n24) );
  INVERT_D U84 ( .A(n24), .Z(n67) );
  INVERT_K U85 ( .A(n99), .Z(n100) );
  INVERT_I U86 ( .A(n40), .Z(n99) );
  AO21_D U87 ( .A1(n18), .A2(n103), .B(n19), .Z(n45) );
  INVERT_O U88 ( .A(n68), .Z(left_tail_light_control[2]) );
  AOI21_B U89 ( .A1(n80), .A2(n20), .B(n18), .Z(n19) );
  INVERT_D U90 ( .A(n21), .Z(n20) );
  INVERT_O U91 ( .A(n70), .Z(right_tail_light_control[2]) );
  INVERT_H U92 ( .A(n41), .Z(n74) );
  NAND2BAL_E U93 ( .A(n73), .B(n74), .Z(n72) );
  OAI21_H U94 ( .A1(n14), .A2(n21), .B(n65), .Z(n23) );
  AOI21_B U95 ( .A1(n29), .A2(n30), .B(n25), .Z(n28) );
  OA21_F U96 ( .A1(n37), .A2(n23), .B(n67), .Z(n46) );
  INVERT_D U97 ( .A(n46), .Z(n75) );
  NAND2_D U98 ( .A(n76), .B(n8), .Z(n44) );
  INVERT_H U99 ( .A(n36), .Z(n77) );
  INVERT_E U100 ( .A(n4), .Z(n78) );
  NAND2BAL_E U101 ( .A(n77), .B(n78), .Z(n76) );
  AOI21_B U102 ( .A1(n9), .A2(n10), .B(n64), .Z(n8) );
  OAI21_H U103 ( .A1(n14), .A2(n12), .B(n66), .Z(n4) );
  NOR2_D U104 ( .A(n90), .B(n11), .Z(n32) );
  NOR2_D U105 ( .A(n60), .B(n90), .Z(n16) );
  INVERT_F U106 ( .A(n79), .Z(n80) );
  NOR2_C U107 ( .A(n82), .B(n83), .Z(n3) );
  NOR2_C U108 ( .A(n99), .B(n53), .Z(n82) );
  INVERT_D U109 ( .A(n22), .Z(n84) );
  NOR2_C U110 ( .A(n58), .B(n84), .Z(n83) );
  OAI21_D U111 ( .A1(n102), .A2(n86), .B(n27), .Z(n6) );
  NOR3_C U112 ( .A(n30), .B(n18), .C(n11), .Z(n25) );
  NOR2_F U113 ( .A(n21), .B(n100), .Z(n30) );
  INVERT_H U114 ( .A(n105), .Z(n85) );
  INVERT_I U115 ( .A(n85), .Z(n86) );
  INVERT_H U116 ( .A(N24), .Z(n87) );
  INVERT_F U117 ( .A(n87), .Z(n88) );
  AND2_I U118 ( .A(n102), .B(n34), .Z(N24) );
  NOR2_F U119 ( .A(n12), .B(n100), .Z(n10) );
  NAND2BAL_J U120 ( .A(n55), .B(n12), .Z(n21) );
  INVERT_K U121 ( .A(n60), .Z(n12) );
  INVERT_H U122 ( .A(n38), .Z(n89) );
  INVERT_K U123 ( .A(n89), .Z(n90) );
  AO21_D U124 ( .A1(n104), .A2(n1), .B(n2), .Z(n42) );
  NOR3_C U125 ( .A(n10), .B(n1), .C(n11), .Z(n7) );
  NOR2_D U126 ( .A(n1), .B(n13), .Z(n9) );
  INVERTBAL_J U127 ( .A(n4), .Z(n1) );
  NAND3_E U128 ( .A(n100), .B(n14), .C(n102), .Z(n34) );
  INVERT_K U129 ( .A(n90), .Z(n14) );
  INVERT_J U130 ( .A(n107), .Z(n91) );
  INVERT_O U131 ( .A(n91), .Z(right_tail_light_control[1]) );
  INVERT_J U132 ( .A(n106), .Z(n93) );
  INVERT_O U133 ( .A(n93), .Z(right_tail_light_control[0]) );
  INVERT_J U134 ( .A(n109), .Z(n95) );
  INVERT_O U135 ( .A(n95), .Z(left_tail_light_control[1]) );
  INVERT_J U136 ( .A(n108), .Z(n97) );
  INVERT_O U137 ( .A(n97), .Z(left_tail_light_control[0]) );
  NOR3_D U138 ( .A(n55), .B(n60), .C(n11), .Z(n17) );
endmodule

