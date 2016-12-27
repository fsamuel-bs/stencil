	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) MIC Architecture, Version 16.0.0.109 Bu";
# mark_description "ild 20150815";
# mark_description "-I/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016.0.109/linux/mpi/mic/include -qopt-prefetch=";
# mark_description "3 -openmp -O3 -mmic -qopt-report=5 -qopt-report-phase=vec,loop -S";
	.file "dependency_alterned_2.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl main
# --- main()
main:
..B1.1:                         # Preds ..B1.0 Latency 9
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #88.12
..LN0:
	.file   1 "dependency_alterned_2.c"
	.loc    1  88  is_stmt 1
        pushq     %rbp                                          #88.12
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbp                                    #88.12
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        andq      $-128, %rsp                                   #88.12
..LN3:
        subq      $1408, %rsp                                   #88.12 c1
..LN4:
        xorl      %esi, %esi                                    #88.12 c1
..LN5:
        movl      $3, %edi                                      #88.12 c5
..LN6:
        call      __intel_new_feature_proc_init                 #88.12 c9
..LN7:
                                # LOE rbx r12 r13 r14 r15
..B1.41:                        # Preds ..B1.1 Latency 11
..LN8:
        stmxcsr   (%rsp)                                        #88.12 c1
..LN9:
        movl      $.2.7_2_kmpc_loc_struct_pack.1, %edi          #88.12 c2
..LN10:
        xorl      %esi, %esi                                    #88.12 c2
..LN11:
        orl       $32832, (%rsp)                                #88.12 c6
..LN12:
        xorl      %eax, %eax                                    #88.12 c6
..LN13:
        ldmxcsr   (%rsp)                                        #88.12 c10
..___tag_value_main.6:
..LN14:
        call      __kmpc_begin                                  #88.12
..___tag_value_main.7:
..LN15:
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.41 Latency 9
..LN16:
	.loc    1  89  is_stmt 1
        vmovaps   a.401.0.0.3(%rip), %zmm0                      #89.16 c1
..LN17:
        nop                                                     #89.16 c5
..LN18:
        vmovaps   %zmm0, (%rsp)                                 #89.16 c9
..LN19:
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2 Latency 9
..LN20:
	.loc    1  90  is_stmt 1
        vmovaps   b.401.0.0.3(%rip), %zmm0                      #90.16 c1
..LN21:
        nop                                                     #90.16 c5
..LN22:
        vmovaps   %zmm0, 64(%rsp)                               #90.16 c9
..LN23:
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3 Latency 9
..LN24:
	.loc    1  91  is_stmt 1
        vmovaps   c.401.0.0.3(%rip), %zmm0                      #91.16 c1
..LN25:
        nop                                                     #91.16 c5
..LN26:
        vmovaps   %zmm0, 128(%rsp)                              #91.16 c9
..LN27:
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4 Latency 9
..LN28:
	.loc    1  93  is_stmt 1
        vmovaps   d.401.0.0.3(%rip), %zmm0                      #93.16 c1
..LN29:
        nop                                                     #93.16 c5
..LN30:
        vmovaps   %zmm0, 192(%rsp)                              #93.16 c9
..LN31:
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5 Latency 9
..LN32:
	.loc    1  94  is_stmt 1
        vmovaps   e.401.0.0.3(%rip), %zmm0                      #94.16 c1
..LN33:
        nop                                                     #94.16 c5
..LN34:
        vmovaps   %zmm0, 256(%rsp)                              #94.16 c9
..LN35:
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6 Latency 9
..LN36:
	.loc    1  95  is_stmt 1
        vmovaps   f.401.0.0.3(%rip), %zmm0                      #95.16 c1
..LN37:
        nop                                                     #95.16 c5
..LN38:
        vmovaps   %zmm0, 320(%rsp)                              #95.16 c9
..LN39:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7 Latency 9
..LN40:
	.loc    1  97  is_stmt 1
        vmovaps   g.401.0.0.3(%rip), %zmm0                      #97.16 c1
..LN41:
        nop                                                     #97.16 c5
..LN42:
        vmovaps   %zmm0, 384(%rsp)                              #97.16 c9
..LN43:
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8 Latency 9
..LN44:
	.loc    1  98  is_stmt 1
        vmovaps   h.401.0.0.3(%rip), %zmm0                      #98.16 c1
..LN45:
        nop                                                     #98.16 c5
..LN46:
        vmovaps   %zmm0, 448(%rsp)                              #98.16 c9
..LN47:
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9 Latency 9
..LN48:
	.loc    1  99  is_stmt 1
        vmovaps   i.401.0.0.3(%rip), %zmm0                      #99.16 c1
..LN49:
        nop                                                     #99.16 c5
..LN50:
        vmovaps   %zmm0, 512(%rsp)                              #99.16 c9
..LN51:
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10 Latency 9
..LN52:
	.loc    1  101  is_stmt 1
        vmovaps   j.401.0.0.3(%rip), %zmm0                      #101.16 c1
..LN53:
        nop                                                     #101.16 c5
..LN54:
        vmovaps   %zmm0, 576(%rsp)                              #101.16 c9
..LN55:
                                # LOE rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11 Latency 9
..LN56:
	.loc    1  102  is_stmt 1
        vmovaps   k.401.0.0.3(%rip), %zmm0                      #102.16 c1
..LN57:
        nop                                                     #102.16 c5
..LN58:
        vmovaps   %zmm0, 640(%rsp)                              #102.16 c9
..LN59:
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12 Latency 9
..LN60:
	.loc    1  103  is_stmt 1
        vmovaps   l.401.0.0.3(%rip), %zmm0                      #103.16 c1
..LN61:
        nop                                                     #103.16 c5
..LN62:
        vmovaps   %zmm0, 704(%rsp)                              #103.16 c9
..LN63:
                                # LOE rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13 Latency 9
..LN64:
	.loc    1  105  is_stmt 1
        vmovaps   m.401.0.0.3(%rip), %zmm0                      #105.16 c1
..LN65:
        nop                                                     #105.16 c5
..LN66:
        vmovaps   %zmm0, 768(%rsp)                              #105.16 c9
..LN67:
                                # LOE rbx r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14 Latency 9
..LN68:
	.loc    1  106  is_stmt 1
        vmovaps   n.401.0.0.3(%rip), %zmm0                      #106.16 c1
..LN69:
        nop                                                     #106.16 c5
..LN70:
        vmovaps   %zmm0, 832(%rsp)                              #106.16 c9
..LN71:
                                # LOE rbx r12 r13 r14 r15
..B1.16:                        # Preds ..B1.15 Latency 9
..LN72:
	.loc    1  107  is_stmt 1
        vmovaps   o.401.0.0.3(%rip), %zmm0                      #107.16 c1
..LN73:
        nop                                                     #107.16 c5
..LN74:
        vmovaps   %zmm0, 896(%rsp)                              #107.16 c9
..LN75:
                                # LOE rbx r12 r13 r14 r15
..B1.17:                        # Preds ..B1.16 Latency 5
..LN76:
	.loc    1  13  is_stmt 1
        lea       1280(%rsp), %rdi                              #13.5 c1
..LN77:
        lea       1328(%rsp), %rsi                              #13.5 c1
..LN78:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #13.5 c5
..LN79:
                                # LOE rbx r12 r13 r14 r15
..B1.18:                        # Preds ..B1.17 Latency 249
..LN80:
	.loc    1  14  is_stmt 1
        vbroadcasti32x4 .L_2il0floatpacket.5(%rip), %zmm16      #14.36 c1
..LN81:
        vbroadcasti64x4 .L_2il0floatpacket.3(%rip), %zmm22      #14.36 c5
..LN82:
        vpxorq    %zmm6, %zmm6, %zmm6                           #14.36 c9
..LN83:
        movl      $1, %eax                                      #14.36 c9
..LN84:
        vpbroadcastd .L_2il0floatpacket.6(%rip), %zmm7          #14.36 c13
..LN85:
        vmovapd   %zmm22{bbbb}, %zmm10                          #14.36 c17
..LN86:
        kmov      %eax, %k3                                     #14.36 c17
..LN87:
        vcvtudq2pd 1288(%rsp){1to8}, %zmm4{%k3}                 #14.25 c21
..LN88:
        vcvtdq2pd 1292(%rsp){1to8}, %zmm5{%k3}                  #14.25 c25
..LN89:
        vbroadcastsd .L_2il0floatpacket.0(%rip), %zmm0{%k3}     #14.36 c29
..LN90:
        vfmadd132pd .L_2il0floatpacket.2(%rip){1to8}, %zmm4, %zmm5{%k3} #14.25 c33
..LN91:
        vgetexppd %zmm0, %zmm13{%k3}                            #14.36 c37
..LN92:
        vmovaps   %zmm10, 1024(%rsp)                            #14.36 c37
..LN93:
        vgetexppd %zmm5, %zmm12{%k3}                            #14.36 c41
..LN94:
        vgetmantpd $0, %zmm0, %zmm11{%k3}                       #14.36 c45
..LN95:
        vsubpd    %zmm13, %zmm12, %zmm14{%k3}                   #14.36 c49
..LN96:
        vpminsd   %zmm16{aaaa}, %zmm14, %zmm15                  #14.36 c53
..LN97:
        vcvtpd2ps {rz-sae}, %zmm11, %zmm8{%k3}                  #14.36 c57
..LN98:
        vpminud   %zmm16{bbbb}, %zmm15, %zmm17                  #14.36 c61
..LN99:
        vrcp23ps  %zmm8, %zmm9{%k3}                             #14.36 c65
..LN100:
        vfixupnanpd %zmm7, %zmm0, %zmm6{%k3}                    #14.36 c69
..LN101:
        vaddpd    %zmm22{cccc}, %zmm17, %zmm17{%k3}             #14.36 c73
..LN102:
        vcvtps2pd %zmm9, %zmm24{%k3}                            #14.36 c77
..LN103:
        vmovaps   %zmm6, 1152(%rsp)                             #14.36 c77
..LN104:
        vpslld    $20, %zmm17, %zmm19                           #14.36 c81
..LN105:
        vbroadcasti64x4 .L_2il0floatpacket.4(%rip), %zmm18      #14.36 c85
..LN106:
        vfixupnanpd %zmm7, %zmm5, %zmm6{%k3}                    #14.36 c89
..LN107:
        vfnmadd213pd {rn-sae}, %zmm10, %zmm24, %zmm11{%k3}      #14.36 c93
..LN108:
        vpsrad    $1, %zmm19, %zmm27                            #14.36 c97
..LN109:
        vcmpeqpd  %zmm6, %zmm6, %k2{%k3}                        #14.36 c101
..LN110:
        vfmadd231pd {rn-sae}, %zmm11, %zmm11, %zmm11{%k3}       #14.36 c105
..LN111:
        vpandq    %zmm18{aaaa}, %zmm27, %zmm27{%k3}             #14.36 c109
..LN112:
        kmov      %k2, %k1                                      #14.36 c109
..LN113:
        vpbroadcastd .L_2il0floatpacket.7(%rip), %zmm25         #14.36 c113
..LN114:
        vmovaps   %zmm0, %zmm26                                 #14.36 c117
..LN115:
        kandn     %k3, %k1                                      #14.36 c117
..LN116:
        vfmadd231pd {rn-sae}, %zmm24, %zmm11, %zmm24{%k3}       #14.36 c121
..LN117:
        vgetmantpd $0, %zmm5, %zmm23{%k3}                       #14.36 c125
..LN118:
        vpsubd    %zmm27, %zmm19, %zmm20                        #14.36 c129
..LN119:
        vmovdqa64 %zmm22{bbbb}, %zmm21                          #14.36 c133
..LN120:
        vfixupnanpd %zmm25, %zmm0, %zmm26{%k3}                  #14.36 c137
..LN121:
        vmulpd    {rn-sae}, %zmm24, %zmm23, %zmm30{%k2}         #14.36 c141
..LN122:
        vmovaps   %zmm21, 960(%rsp)                             #14.36 c141
..LN123:
        vpaddd    %zmm21, %zmm20, %zmm29                        #14.36 c145
..LN124:
        vmovaps   %zmm26, 1088(%rsp)                            #14.36 c145
..LN125:
        vmulpd    {rn-sae}, %zmm26, %zmm5, %zmm30{%k1}          #14.36 c149
..LN126:
        kmov      %k3, %k1                                      #14.36 c149
..LN127:
        vpandq    %zmm22{aaaa}, %zmm29, %zmm29{%k3}             #14.36 c153
..LN128:
        vpaddd    %zmm27, %zmm30, %zmm28                        #14.36 c157
..LN129:
        vcvtudq2pd 1280(%rsp){1to8}, %zmm3{%k3}                 #14.13 c161
..LN130:
        vcvtdq2pd 1284(%rsp){1to8}, %zmm2{%k3}                  #14.13 c165
..LN131:
        vmulpd    {rn}, %zmm29, %zmm28, %zmm30{%k2}             #14.36 c169
..LN132:
        vfmadd132pd .L_2il0floatpacket.2(%rip){1to8}, %zmm3, %zmm2{%k3} #14.13 c173
..LN133:
        vmovapd   %zmm30, %zmm1{%k3}                            #14.36 c177
..LN134:
        vaddpd    %zmm1, %zmm2, %zmm31{%k3}                     #14.36 c181
..LN135:
        nop                                                     #14.36 c185
..LN136:
        vpackstorelpd %zmm31, 1312(%rsp){%k1}                   #14.36 c189
..LN137:
	.loc    1  110  is_stmt 1
        addq      $-80, %rsp                                    #110.5 c193
..LN138:
        lea       464(%rsp), %rcx                               #110.5 c197
..LN139:
        lea       528(%rsp), %rsi                               #110.5 c197
..LN140:
        lea       592(%rsp), %rdi                               #110.5 c201
..LN141:
        lea       656(%rsp), %r8                                #110.5 c201
..LN142:
        lea       720(%rsp), %r9                                #110.5 c205
..LN143:
        movq      %rcx, (%rsp)                                  #110.5 c205
..LN144:
        lea       784(%rsp), %r10                               #110.5 c209
..LN145:
        movq      %rsi, 8(%rsp)                                 #110.5 c209
..LN146:
        lea       848(%rsp), %r11                               #110.5 c213
..LN147:
        movq      %rdi, 16(%rsp)                                #110.5 c213
..LN148:
        lea       912(%rsp), %rax                               #110.5 c217
..LN149:
        movq      %r8, 24(%rsp)                                 #110.5 c217
..LN150:
        lea       976(%rsp), %rdx                               #110.5 c221
..LN151:
        movq      %r9, 32(%rsp)                                 #110.5 c221
..LN152:
        movq      %r10, 40(%rsp)                                #110.5 c225
..LN153:
        lea       80(%rsp), %rdi                                #110.5 c225
..LN154:
        movq      %r11, 48(%rsp)                                #110.5 c229
..LN155:
        lea       144(%rsp), %rsi                               #110.5 c229
..LN156:
        movq      %rax, 56(%rsp)                                #110.5 c233
..LN157:
        lea       272(%rsp), %rcx                               #110.5 c233
..LN158:
        movq      %rdx, 64(%rsp)                                #110.5 c237
..LN159:
        lea       208(%rsp), %rdx                               #110.5 c237
..LN160:
        vmovaps   %zmm0, 384(%rax)                              #110.5 c241
..LN161:
        lea       336(%rsp), %r8                                #110.5 c241
..LN162:
        lea       400(%rsp), %r9                                #110.5 c245
..___tag_value_main.8:
..LN163:
#       fastest(double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *)
        call      fastest                                       #110.5
..___tag_value_main.9:
..LN164:
                                # LOE rbx r12 r13 r14 r15
..B1.42:                        # Preds ..B1.18 Latency 9
..LN165:
        vmovaps   1296(%rsp), %zmm0                             # c1
..LN166:
        movl      $1, %eax                                      # c5
..LN167:
        addq      $80, %rsp                                     #110.5 c5
..LN168:
        kmov      %eax, %k3                                     # c9
..LN169:
                                # LOE rbx r12 r13 r14 r15 zmm0 k3
..B1.19:                        # Preds ..B1.42 Latency 9
..LN170:
	.loc    1  13  is_stmt 1
        vmovaps   %zmm0, 1216(%rsp)                             #13.5 c1
..LN171:
        lea       1296(%rsp), %rdi                              #13.5 c1
..LN172:
        lea       1336(%rsp), %rsi                              #13.5 c5
..LN173:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #13.5 c9
..LN174:
                                # LOE rbx r12 r13 r14 r15
..B1.20:                        # Preds ..B1.19 Latency 177
..LN175:
        vmovaps   1216(%rsp), %zmm0                             # c1
..LN176:
        movl      $1, %eax                                      # c1
..LN177:
	.loc    1  14  is_stmt 1
        vbroadcasti32x4 .L_2il0floatpacket.5(%rip), %zmm13      #14.36 c5
..LN178:
        vbroadcasti64x4 .L_2il0floatpacket.3(%rip), %zmm18      #14.36 c9
..LN179:
        vpbroadcastd .L_2il0floatpacket.6(%rip), %zmm4          #14.36 c13
..LN180:
        vmovaps   1152(%rsp), %zmm5                             #14.36 c17
..LN181:
        kmov      %eax, %k3                                     # c17
..LN182:
        vcvtudq2pd 1304(%rsp){1to8}, %zmm2{%k3}                 #14.25 c21
..LN183:
        vcvtdq2pd 1308(%rsp){1to8}, %zmm3{%k3}                  #14.25 c25
..LN184:
        vfmadd132pd .L_2il0floatpacket.2(%rip){1to8}, %zmm2, %zmm3{%k3} #14.25 c29
..LN185:
        vgetmantpd $0, %zmm0, %zmm9{%k3}                        #14.36 c33
..LN186:
        movl      $1, %eax                                      #14.36 c33
..LN187:
        vgetexppd %zmm0, %zmm10{%k3}                            #14.36 c37
..LN188:
	.loc    1  113  is_stmt 1
        movl      $.L_2__STRING.0, %edi                         #113.5 c37
..LN189:
	.loc    1  14  is_stmt 1
        vgetexppd %zmm3, %zmm0{%k3}                             #14.36 c41
..LN190:
        vsubpd    %zmm10, %zmm0, %zmm11{%k3}                    #14.36 c45
..LN191:
        vpminsd   %zmm13{aaaa}, %zmm11, %zmm12                  #14.36 c49
..LN192:
        vcvtpd2ps {rz-sae}, %zmm9, %zmm6{%k3}                   #14.36 c53
..LN193:
        vpminud   %zmm13{bbbb}, %zmm12, %zmm14                  #14.36 c57
..LN194:
        vrcp23ps  %zmm6, %zmm7{%k3}                             #14.36 c61
..LN195:
        vaddpd    %zmm18{cccc}, %zmm14, %zmm14{%k3}             #14.36 c65
..LN196:
        vcvtps2pd %zmm7, %zmm20{%k3}                            #14.36 c69
..LN197:
        vmovaps   1024(%rsp), %zmm8                             #14.36 c73
..LN198:
        vpslld    $20, %zmm14, %zmm16                           #14.36 c77
..LN199:
        vbroadcasti64x4 .L_2il0floatpacket.4(%rip), %zmm15      #14.36 c81
..LN200:
        vfixupnanpd %zmm4, %zmm3, %zmm5{%k3}                    #14.36 c85
..LN201:
        vfnmadd213pd {rn-sae}, %zmm8, %zmm20, %zmm9{%k3}        #14.36 c89
..LN202:
        vpsrad    $1, %zmm16, %zmm22                            #14.36 c93
..LN203:
        vcmpeqpd  %zmm5, %zmm5, %k2{%k3}                        #14.36 c97
..LN204:
        vfmadd231pd {rn-sae}, %zmm9, %zmm9, %zmm9{%k3}          #14.36 c101
..LN205:
        vpandq    %zmm15{aaaa}, %zmm22, %zmm22{%k3}             #14.36 c105
..LN206:
        kmov      %k2, %k1                                      #14.36 c105
..LN207:
        vfmadd231pd {rn-sae}, %zmm20, %zmm9, %zmm20{%k3}        #14.36 c109
..LN208:
        kandn     %k3, %k1                                      #14.36 c109
..LN209:
        vgetmantpd $0, %zmm3, %zmm19{%k3}                       #14.36 c113
..LN210:
        vpsubd    %zmm22, %zmm16, %zmm17                        #14.36 c117
..LN211:
        vmovaps   1088(%rsp), %zmm21                            #14.36 c121
..LN212:
        vmulpd    {rn-sae}, %zmm20, %zmm19, %zmm25{%k2}         #14.36 c125
..LN213:
        vpaddd    960(%rsp), %zmm17, %zmm24                     #14.36 c129
..LN214:
        vmulpd    {rn-sae}, %zmm21, %zmm3, %zmm25{%k1}          #14.36 c133
..LN215:
        kmov      %k3, %k1                                      #14.36 c133
..LN216:
        vpandq    %zmm18{aaaa}, %zmm24, %zmm24{%k3}             #14.36 c137
..LN217:
        vpaddd    %zmm22, %zmm25, %zmm23                        #14.36 c141
..LN218:
        vcvtudq2pd 1296(%rsp){1to8}, %zmm1{%k3}                 #14.13 c145
..LN219:
        vcvtdq2pd 1300(%rsp){1to8}, %zmm27{%k3}                 #14.13 c149
..LN220:
        vmulpd    {rn}, %zmm24, %zmm23, %zmm25{%k2}             #14.36 c153
..LN221:
        vfmadd132pd .L_2il0floatpacket.2(%rip){1to8}, %zmm1, %zmm27{%k3} #14.13 c157
..LN222:
        vmovapd   %zmm25, %zmm26{%k3}                           #14.36 c161
..LN223:
        vaddpd    %zmm26, %zmm27, %zmm28{%k3}                   #14.36 c165
..LN224:
	.loc    1  113  is_stmt 1
        vbroadcastsd (%rsp), %zmm0{%k3}                         #113.5 c169
..LN225:
	.loc    1  14  is_stmt 1
        vpackstorelpd %zmm28, 1320(%rsp){%k1}                   #14.36 c173
..___tag_value_main.10:
..LN226:
	.loc    1  113  is_stmt 1
#       printf(const char *__restrict__, ...)
        call      printf                                        #113.5
..___tag_value_main.11:
..LN227:
                                # LOE rbx r12 r13 r14 r15
..B1.21:                        # Preds ..B1.20 Latency 13
..LN228:
        movl      $1, %eax                                      # c1
..LN229:
	.loc    1  114  is_stmt 1
        movl      $.L_2__STRING.1, %edi                         #114.5 c1
..LN230:
        kmov      %eax, %k3                                     # c5
..LN231:
        vbroadcastsd 64(%rsp), %zmm0{%k3}                       #114.5 c9
..___tag_value_main.12:
..LN232:
#       printf(const char *__restrict__, ...)
        call      printf                                        #114.5
..___tag_value_main.13:
..LN233:
                                # LOE rbx r12 r13 r14 r15
..B1.22:                        # Preds ..B1.21 Latency 13
..LN234:
        movl      $1, %eax                                      # c1
..LN235:
	.loc    1  115  is_stmt 1
        movl      $.L_2__STRING.2, %edi                         #115.5 c1
..LN236:
        kmov      %eax, %k3                                     # c5
..LN237:
        vbroadcastsd 128(%rsp), %zmm0{%k3}                      #115.5 c9
..___tag_value_main.14:
..LN238:
#       printf(const char *__restrict__, ...)
        call      printf                                        #115.5
..___tag_value_main.15:
..LN239:
                                # LOE rbx r12 r13 r14 r15
..B1.23:                        # Preds ..B1.22 Latency 13
..LN240:
        movl      $1, %eax                                      # c1
..LN241:
	.loc    1  116  is_stmt 1
        movl      $.L_2__STRING.3, %edi                         #116.5 c1
..LN242:
        kmov      %eax, %k3                                     # c5
..LN243:
        vbroadcastsd 192(%rsp), %zmm0{%k3}                      #116.5 c9
..___tag_value_main.16:
..LN244:
#       printf(const char *__restrict__, ...)
        call      printf                                        #116.5
..___tag_value_main.17:
..LN245:
                                # LOE rbx r12 r13 r14 r15
..B1.24:                        # Preds ..B1.23 Latency 13
..LN246:
        movl      $1, %eax                                      # c1
..LN247:
	.loc    1  117  is_stmt 1
        movl      $.L_2__STRING.4, %edi                         #117.5 c1
..LN248:
        kmov      %eax, %k3                                     # c5
..LN249:
        vbroadcastsd 256(%rsp), %zmm0{%k3}                      #117.5 c9
..___tag_value_main.18:
..LN250:
#       printf(const char *__restrict__, ...)
        call      printf                                        #117.5
..___tag_value_main.19:
..LN251:
                                # LOE rbx r12 r13 r14 r15
..B1.25:                        # Preds ..B1.24 Latency 13
..LN252:
        movl      $1, %eax                                      # c1
..LN253:
	.loc    1  118  is_stmt 1
        movl      $.L_2__STRING.5, %edi                         #118.5 c1
..LN254:
        kmov      %eax, %k3                                     # c5
..LN255:
        vbroadcastsd 320(%rsp), %zmm0{%k3}                      #118.5 c9
..___tag_value_main.20:
..LN256:
#       printf(const char *__restrict__, ...)
        call      printf                                        #118.5
..___tag_value_main.21:
..LN257:
                                # LOE rbx r12 r13 r14 r15
..B1.26:                        # Preds ..B1.25 Latency 13
..LN258:
        movl      $1, %eax                                      # c1
..LN259:
	.loc    1  119  is_stmt 1
        movl      $.L_2__STRING.6, %edi                         #119.5 c1
..LN260:
        kmov      %eax, %k3                                     # c5
..LN261:
        vbroadcastsd 384(%rsp), %zmm0{%k3}                      #119.5 c9
..___tag_value_main.22:
..LN262:
#       printf(const char *__restrict__, ...)
        call      printf                                        #119.5
..___tag_value_main.23:
..LN263:
                                # LOE rbx r12 r13 r14 r15
..B1.27:                        # Preds ..B1.26 Latency 13
..LN264:
        movl      $1, %eax                                      # c1
..LN265:
	.loc    1  120  is_stmt 1
        movl      $.L_2__STRING.7, %edi                         #120.5 c1
..LN266:
        kmov      %eax, %k3                                     # c5
..LN267:
        vbroadcastsd 448(%rsp), %zmm0{%k3}                      #120.5 c9
..___tag_value_main.24:
..LN268:
#       printf(const char *__restrict__, ...)
        call      printf                                        #120.5
..___tag_value_main.25:
..LN269:
                                # LOE rbx r12 r13 r14 r15
..B1.28:                        # Preds ..B1.27 Latency 13
..LN270:
        movl      $1, %eax                                      # c1
..LN271:
	.loc    1  121  is_stmt 1
        movl      $.L_2__STRING.8, %edi                         #121.5 c1
..LN272:
        kmov      %eax, %k3                                     # c5
..LN273:
        vbroadcastsd 512(%rsp), %zmm0{%k3}                      #121.5 c9
..___tag_value_main.26:
..LN274:
#       printf(const char *__restrict__, ...)
        call      printf                                        #121.5
..___tag_value_main.27:
..LN275:
                                # LOE rbx r12 r13 r14 r15
..B1.29:                        # Preds ..B1.28 Latency 13
..LN276:
        movl      $1, %eax                                      # c1
..LN277:
	.loc    1  122  is_stmt 1
        movl      $.L_2__STRING.9, %edi                         #122.5 c1
..LN278:
        kmov      %eax, %k3                                     # c5
..LN279:
        vbroadcastsd 576(%rsp), %zmm0{%k3}                      #122.5 c9
..___tag_value_main.28:
..LN280:
#       printf(const char *__restrict__, ...)
        call      printf                                        #122.5
..___tag_value_main.29:
..LN281:
                                # LOE rbx r12 r13 r14 r15
..B1.30:                        # Preds ..B1.29 Latency 13
..LN282:
        movl      $1, %eax                                      # c1
..LN283:
	.loc    1  123  is_stmt 1
        movl      $.L_2__STRING.10, %edi                        #123.5 c1
..LN284:
        kmov      %eax, %k3                                     # c5
..LN285:
        vbroadcastsd 640(%rsp), %zmm0{%k3}                      #123.5 c9
..___tag_value_main.30:
..LN286:
#       printf(const char *__restrict__, ...)
        call      printf                                        #123.5
..___tag_value_main.31:
..LN287:
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.30 Latency 13
..LN288:
        movl      $1, %eax                                      # c1
..LN289:
	.loc    1  124  is_stmt 1
        movl      $.L_2__STRING.11, %edi                        #124.5 c1
..LN290:
        kmov      %eax, %k3                                     # c5
..LN291:
        vbroadcastsd 704(%rsp), %zmm0{%k3}                      #124.5 c9
..___tag_value_main.32:
..LN292:
#       printf(const char *__restrict__, ...)
        call      printf                                        #124.5
..___tag_value_main.33:
..LN293:
                                # LOE rbx r12 r13 r14 r15
..B1.32:                        # Preds ..B1.31 Latency 13
..LN294:
        movl      $1, %eax                                      # c1
..LN295:
	.loc    1  125  is_stmt 1
        movl      $.L_2__STRING.12, %edi                        #125.5 c1
..LN296:
        kmov      %eax, %k3                                     # c5
..LN297:
        vbroadcastsd 768(%rsp), %zmm0{%k3}                      #125.5 c9
..___tag_value_main.34:
..LN298:
#       printf(const char *__restrict__, ...)
        call      printf                                        #125.5
..___tag_value_main.35:
..LN299:
                                # LOE rbx r12 r13 r14 r15
..B1.33:                        # Preds ..B1.32 Latency 13
..LN300:
        movl      $1, %eax                                      # c1
..LN301:
	.loc    1  126  is_stmt 1
        movl      $.L_2__STRING.13, %edi                        #126.5 c1
..LN302:
        kmov      %eax, %k3                                     # c5
..LN303:
        vbroadcastsd 832(%rsp), %zmm0{%k3}                      #126.5 c9
..___tag_value_main.36:
..LN304:
#       printf(const char *__restrict__, ...)
        call      printf                                        #126.5
..___tag_value_main.37:
..LN305:
                                # LOE rbx r12 r13 r14 r15
..B1.34:                        # Preds ..B1.33 Latency 13
..LN306:
        movl      $1, %eax                                      # c1
..LN307:
	.loc    1  127  is_stmt 1
        movl      $.L_2__STRING.14, %edi                        #127.5 c1
..LN308:
        kmov      %eax, %k3                                     # c5
..LN309:
        vbroadcastsd 896(%rsp), %zmm0{%k3}                      #127.5 c9
..___tag_value_main.38:
..LN310:
#       printf(const char *__restrict__, ...)
        call      printf                                        #127.5
..___tag_value_main.39:
..LN311:
                                # LOE rbx r12 r13 r14 r15
..B1.35:                        # Preds ..B1.34 Latency 25
..LN312:
	.loc    1  129  is_stmt 1
        vbroadcastsd 1320(%rsp), %zmm0                          #129.34 c1
..LN313:
        movl      $1, %eax                                      # c5
..LN314:
        movl      $.L_2__STRING.15, %edi                        #129.5 c5
..LN315:
        kmov      %eax, %k3                                     # c9
..LN316:
        vsubpd    1312(%rsp){1to8}, %zmm0, %zmm0{%k3}           #129.34 c13
..LN317:
        kmov      %k3, %k1                                      #129.34 c17
..LN318:
        vpackstorelpd %zmm0, 1088(%rsp){%k1}                    #129.34 c21
..___tag_value_main.40:
..LN319:
#       printf(const char *__restrict__, ...)
        call      printf                                        #129.5
..___tag_value_main.41:
..LN320:
                                # LOE rbx r12 r13 r14 r15
..B1.36:                        # Preds ..B1.35 Latency 157
..LN321:
	.loc    1  132  is_stmt 1
        vbroadcastsd 1088(%rsp), %zmm1                          #132.5 c1
..LN322:
        vbroadcasti32x4 .L_2il0floatpacket.5(%rip), %zmm12      #132.5 c5
..LN323:
        vbroadcasti64x4 .L_2il0floatpacket.3(%rip), %zmm17      #132.5 c9
..LN324:
        vpxorq    %zmm2, %zmm2, %zmm2                           #132.5 c13
..LN325:
        movl      $1, %eax                                      # c13
..LN326:
        vpbroadcastd .L_2il0floatpacket.6(%rip), %zmm3          #132.5 c17
..LN327:
        vmovaps   1024(%rsp), %zmm6                             #132.5 c21
..LN328:
        kmov      %eax, %k3                                     # c21
..LN329:
        vbroadcastsd .L_2il0floatpacket.1(%rip), %zmm0{%k3}     #132.5 c25
..LN330:
        vgetexppd %zmm1, %zmm9{%k3}                             #132.5 c29
..LN331:
        movl      $.L_2__STRING.16, %edi                        #132.5 c29
..LN332:
        vgetexppd %zmm0, %zmm8{%k3}                             #132.5 c33
..LN333:
        vgetmantpd $0, %zmm1, %zmm7{%k3}                        #132.5 c37
..LN334:
        vsubpd    %zmm9, %zmm8, %zmm10{%k3}                     #132.5 c41
..LN335:
        vpminsd   %zmm12{aaaa}, %zmm10, %zmm11                  #132.5 c45
..LN336:
        vcvtpd2ps {rz-sae}, %zmm7, %zmm4{%k3}                   #132.5 c49
..LN337:
        vpminud   %zmm12{bbbb}, %zmm11, %zmm13                  #132.5 c53
..LN338:
        vrcp23ps  %zmm4, %zmm5{%k3}                             #132.5 c57
..LN339:
        vaddpd    %zmm17{cccc}, %zmm13, %zmm13{%k3}             #132.5 c61
..LN340:
        vfixupnanpd %zmm3, %zmm1, %zmm2{%k3}                    #132.5 c65
..LN341:
        vcvtps2pd %zmm5, %zmm19{%k3}                            #132.5 c69
..LN342:
        vpslld    $20, %zmm13, %zmm15                           #132.5 c73
..LN343:
        vbroadcasti64x4 .L_2il0floatpacket.4(%rip), %zmm14      #132.5 c77
..LN344:
        vfixupnanpd %zmm3, %zmm0, %zmm2{%k3}                    #132.5 c81
..LN345:
        vfnmadd213pd {rn-sae}, %zmm6, %zmm19, %zmm7{%k3}        #132.5 c85
..LN346:
        vpsrad    $1, %zmm15, %zmm21                            #132.5 c89
..LN347:
        vcmpeqpd  %zmm2, %zmm2, %k2{%k3}                        #132.5 c93
..LN348:
        vfmadd231pd {rn-sae}, %zmm7, %zmm7, %zmm7{%k3}          #132.5 c97
..LN349:
        vpandq    %zmm14{aaaa}, %zmm21, %zmm21{%k3}             #132.5 c101
..LN350:
        kmov      %k2, %k1                                      #132.5 c101
..LN351:
        vpbroadcastd .L_2il0floatpacket.7(%rip), %zmm20         #132.5 c105
..LN352:
        vfmadd231pd {rn-sae}, %zmm19, %zmm7, %zmm19{%k3}        #132.5 c109
..LN353:
        kandn     %k3, %k1                                      #132.5 c109
..LN354:
        vgetmantpd $0, %zmm0, %zmm18{%k3}                       #132.5 c113
..LN355:
        vpsubd    %zmm21, %zmm15, %zmm16                        #132.5 c117
..LN356:
        vfixupnanpd %zmm20, %zmm1, %zmm1{%k3}                   #132.5 c121
..LN357:
        vmulpd    {rn-sae}, %zmm19, %zmm18, %zmm24{%k2}         #132.5 c125
..LN358:
        vpaddd    960(%rsp), %zmm16, %zmm23                     #132.5 c129
..LN359:
        vmulpd    {rn-sae}, %zmm1, %zmm0, %zmm24{%k1}           #132.5 c133
..LN360:
        vpandq    %zmm17{aaaa}, %zmm23, %zmm23{%k3}             #132.5 c137
..LN361:
        vpaddd    %zmm21, %zmm24, %zmm22                        #132.5 c141
..LN362:
        vmulpd    {rn}, %zmm23, %zmm22, %zmm24{%k2}             #132.5 c145
..LN363:
        vmovapd   %zmm24, %zmm25{%k3}                           #132.5 c149
..LN364:
        vmovapd   %zmm25, %zmm0                                 #132.5 c153
..___tag_value_main.42:
..LN365:
#       printf(const char *__restrict__, ...)
        call      printf                                        #132.5
..___tag_value_main.43:
..LN366:
                                # LOE rbx r12 r13 r14 r15
..B1.37:                        # Preds ..B1.36 Latency 5
..LN367:
	.loc    1  134  is_stmt 1
        movl      $.2.7_2_kmpc_loc_struct_pack.12, %edi         #134.12 c1
..LN368:
        xorl      %eax, %eax                                    #134.12 c1
..___tag_value_main.44:
..LN369:
        call      __kmpc_end                                    #134.12
..___tag_value_main.45:
..LN370:
                                # LOE rbx r12 r13 r14 r15
..B1.38:                        # Preds ..B1.37 Latency 5
..LN371:
        xorl      %eax, %eax                                    #134.12 c1
..LN372:
        movq      %rbp, %rsp                                    #134.12 c5
..LN373:
        popq      %rbp                                          #134.12
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN374:
        ret                                                     #134.12
        .align    16,0x90
	.cfi_endproc
..LN375:
                                # LOE
..LN376:
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.377:
.LNmain:
	.data
	.align 4
	.align 4
.2.7_2_kmpc_loc_struct_pack.1:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.7_2__kmpc_loc_pack.0
	.align 4
.2.7_2__kmpc_loc_pack.0:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	56
	.byte	56
	.byte	59
	.byte	56
	.byte	56
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.7_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.7_2__kmpc_loc_pack.11
	.align 4
.2.7_2__kmpc_loc_pack.11:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	51
	.byte	52
	.byte	59
	.byte	49
	.byte	51
	.byte	52
	.byte	59
	.byte	59
	.section .rodata, "a"
	.align 64
	.align 64
a.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0x3fc99999
	.align 64
b.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0xbfc99999
	.align 64
c.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0x3fc99999
	.align 64
d.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0xbfc99999
	.align 64
e.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0x3fc99999
	.align 64
f.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0xbfc99999
	.align 64
g.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0x3fc99999
	.align 64
h.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0xbfc99999
	.align 64
i.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0x3fc99999
	.align 64
j.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0xbfc99999
	.align 64
k.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0x3fc99999
	.align 64
l.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0xbfc99999
	.align 64
m.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0x3fc99999
	.align 64
n.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0xbfc99999
	.align 64
o.401.0.0.3:
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x00000000,0x00000000
	.long	0x9999999a,0x3fc99999
	.data
# -- End  main
	.text
.L_2__routine_start_fastest_1:
# -- Begin  fastest
	.text
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl fastest
# --- fastest(double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *, double *)
fastest:
# parameter 1(a): %rdi
# parameter 2(b): %rsi
# parameter 3(c): %rdx
# parameter 4(d): %rcx
# parameter 5(e): %r8
# parameter 6(f): %r9
# parameter 7(g): 16 + %rbx
# parameter 8(h): 24 + %rbx
# parameter 9(i): 32 + %rbx
# parameter 10(j): 40 + %rbx
# parameter 11(k): 48 + %rbx
# parameter 12(l): 56 + %rbx
# parameter 13(m): 64 + %rbx
# parameter 14(n): 72 + %rbx
# parameter 15(o): 80 + %rbx
..B2.1:                         # Preds ..B2.0 Latency 613
	.cfi_startproc
..___tag_value_fastest.49:
..L50:
                                                         #22.41
..LN378:
	.loc    1  22  is_stmt 1
        pushq     %rbx                                          #22.41
	.cfi_def_cfa_offset 16
..LN379:
        movq      %rsp, %rbx                                    #22.41
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
..LN380:
        andq      $-64, %rsp                                    #22.41
..LN381:
        subq      $56, %rsp                                     #22.41
..LN382:
        pushq     %rbp                                          #22.41
..LN383:
        movq      8(%rbx), %rbp                                 #22.41
..LN384:
        movq      %rbp, 8(%rsp)                                 #22.41
..LN385:
        movq      %rsp, %rbp                                    #22.41
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
..LN386:
        pushq     %r12                                          #22.41 c1
..LN387:
        pushq     %r13                                          #22.41 c5
..LN388:
        pushq     %r14                                          #22.41 c9
..LN389:
        pushq     %r15                                          #22.41 c13
..LN390:
        subq      $1056, %rsp                                   #22.41 c13
	.cfi_escape 0x10, 0x0c, 0x02, 0x76, 0x78
	.cfi_escape 0x10, 0x0d, 0x02, 0x76, 0x70
	.cfi_escape 0x10, 0x0e, 0x02, 0x76, 0x68
	.cfi_escape 0x10, 0x0f, 0x02, 0x76, 0x60
..LN391:
	.loc    1  24  is_stmt 1
        lea       -968(%rbp), %r12                              #24.27 c17
..LN392:
        movq      (%rdi), %r15                                  #24.27 c17
..LN393:
        movq      %r15, (%r12)                                  #24.27 c21
..LN394:
        movq      8(%rdi), %r15                                 #24.27 c21
..LN395:
        movq      %r15, -8(%r12)                                #24.27 c25
..LN396:
        movq      16(%rdi), %r15                                #24.27 c25
..LN397:
        movq      %r15, -16(%r12)                               #24.27 c29
..LN398:
        movq      24(%rdi), %r15                                #24.27 c29
..LN399:
        movq      %r15, -24(%r12)                               #24.27 c33
..LN400:
        movq      32(%rdi), %r15                                #24.27 c33
..LN401:
        movq      %r15, -32(%r12)                               #24.27 c37
..LN402:
        movq      40(%rdi), %r15                                #24.27 c37
..LN403:
        movq      %r15, -40(%r12)                               #24.27 c41
..LN404:
        movq      48(%rdi), %r15                                #24.27 c41
..LN405:
        movq      %r15, -48(%r12)                               #24.27 c45
..LN406:
        movq      56(%rdi), %r15                                #24.27 c45
..LN407:
        movq      %r15, -56(%r12)                               #24.27 c49
..LN408:
	.loc    1  26  is_stmt 1
        movq      (%rsi), %r15                                  #26.27 c49
..LN409:
	.loc    1  24  is_stmt 1
        vmovaps   -1024(%rbp), %zmm14                           #24.27 c53
..LN410:
	.loc    1  26  is_stmt 1
        movq      %r15, -904(%rbp)                              #26.27 c53
..LN411:
	.loc    1  22  is_stmt 1
        movq      %rsi, -1072(%rbp)                             #22.41 c57
..LN412:
	.loc    1  26  is_stmt 1
        movq      8(%rsi), %r15                                 #26.27 c57
..LN413:
        movq      %r15, -912(%rbp)                              #26.27 c61
..LN414:
        movq      16(%rsi), %r15                                #26.27 c61
..LN415:
        movq      %r15, -920(%rbp)                              #26.27 c65
..LN416:
        movq      24(%rsi), %r15                                #26.27 c65
..LN417:
        movq      %r15, -928(%rbp)                              #26.27 c69
..LN418:
        movq      32(%rsi), %r15                                #26.27 c69
..LN419:
        movq      %r15, -936(%rbp)                              #26.27 c73
..LN420:
        movq      40(%rsi), %r15                                #26.27 c73
..LN421:
        movq      %r15, -944(%rbp)                              #26.27 c77
..LN422:
        movq      48(%rsi), %r15                                #26.27 c77
..LN423:
        movq      56(%rsi), %rsi                                #26.27 c81
..LN424:
        movq      %r15, -952(%rbp)                              #26.27 c81
..LN425:
        movq      %rsi, -960(%rbp)                              #26.27 c85
..LN426:
	.loc    1  28  is_stmt 1
        movq      (%rdx), %rsi                                  #28.27 c85
..LN427:
	.loc    1  26  is_stmt 1
        vmovapd   -960(%rbp), %zmm13                            #26.27 c89
..LN428:
	.loc    1  28  is_stmt 1
        movq      %rsi, -840(%rbp)                              #28.27 c89
..LN429:
	.loc    1  22  is_stmt 1
        movq      %rdx, -1080(%rbp)                             #22.41 c93
..LN430:
	.loc    1  28  is_stmt 1
        movq      16(%rdx), %rsi                                #28.27 c93
..LN431:
        movq      %rsi, -856(%rbp)                              #28.27 c97
..LN432:
        movq      32(%rdx), %rsi                                #28.27 c97
..LN433:
        movq      8(%rdx), %r15                                 #28.27 c101
..LN434:
        movq      %rsi, -872(%rbp)                              #28.27 c101
..LN435:
        movq      %r15, -848(%rbp)                              #28.27 c105
..LN436:
        movq      48(%rdx), %rsi                                #28.27 c105
..LN437:
        movq      24(%rdx), %r15                                #28.27 c109
..LN438:
        movq      %rsi, -888(%rbp)                              #28.27 c109
..LN439:
        movq      %r15, -864(%rbp)                              #28.27 c113
..LN440:
	.loc    1  31  is_stmt 1
        movq      8(%rcx), %rsi                                 #31.27 c113
..LN441:
	.loc    1  28  is_stmt 1
        movq      40(%rdx), %r15                                #28.27 c117
..LN442:
        movq      56(%rdx), %rdx                                #28.27 c117
..LN443:
	.loc    1  31  is_stmt 1
        movq      %rsi, -784(%rbp)                              #31.27 c121
..LN444:
	.loc    1  28  is_stmt 1
        movq      %rdx, -896(%rbp)                              #28.27 c121
..LN445:
        movq      %r15, -880(%rbp)                              #28.27 c125
..LN446:
	.loc    1  31  is_stmt 1
        movq      32(%rcx), %rsi                                #31.27 c125
..LN447:
	.loc    1  28  is_stmt 1
        vmovapd   -896(%rbp), %zmm12                            #28.27 c129
..LN448:
	.loc    1  31  is_stmt 1
        movq      %rsi, -808(%rbp)                              #31.27 c129
..LN449:
        lea       -816(%rbp), %rsi                              #31.27 c133
..LN450:
	.loc    1  22  is_stmt 1
        movq      %rcx, -1088(%rbp)                             #22.41 c133
..LN451:
        movq      %r8, -1056(%rbp)                              #22.41 c137
..LN452:
	.loc    1  31  is_stmt 1
        movq      (%rcx), %rdx                                  #31.27 c137
..LN453:
        movq      %rdx, -776(%rbp)                              #31.27 c141
..LN454:
        movq      24(%rcx), %rdx                                #31.27 c141
..LN455:
        movq      %rdx, -800(%rbp)                              #31.27 c145
..LN456:
        movq      48(%rcx), %rdx                                #31.27 c145
..LN457:
        movq      16(%rcx), %r15                                #31.27 c149
..LN458:
        movq      %rdx, -8(%rsi)                                #31.27 c149
..LN459:
        movq      %r15, -792(%rbp)                              #31.27 c153
..LN460:
	.loc    1  33  is_stmt 1
        movq      8(%r8), %rdx                                  #33.27 c153
..LN461:
	.loc    1  31  is_stmt 1
        movq      40(%rcx), %r15                                #31.27 c157
..LN462:
        movq      56(%rcx), %rcx                                #31.27 c157
..LN463:
	.loc    1  33  is_stmt 1
        movq      %rdx, -720(%rbp)                              #33.27 c161
..LN464:
        lea       -728(%rbp), %rdx                              #33.27 c161
..LN465:
	.loc    1  31  is_stmt 1
        movq      %rcx, -16(%rsi)                               #31.27 c165
..LN466:
        movq      %r15, (%rsi)                                  #31.27 c165
..LN467:
        vmovapd   -832(%rbp), %zmm11                            #31.27 c169
..LN468:
	.loc    1  22  is_stmt 1
        movq      %r9, -1064(%rbp)                              #22.41 c169
..LN469:
	.loc    1  33  is_stmt 1
        movq      (%r8), %rcx                                   #33.27 c173
..LN470:
        movq      16(%r8), %rsi                                 #33.27 c173
..LN471:
        movq      %rcx, -712(%rbp)                              #33.27 c177
..LN472:
        movq      %rsi, (%rdx)                                  #33.27 c177
..LN473:
        movq      32(%r8), %rcx                                 #33.27 c181
..LN474:
        movq      24(%r8), %r15                                 #33.27 c181
..LN475:
        movq      %rcx, -16(%rdx)                               #33.27 c185
..LN476:
        lea       -752(%rbp), %rcx                              #33.27 c185
..LN477:
        movq      %r15, -8(%rdx)                                #33.27 c189
..LN478:
        movq      40(%r8), %rdx                                 #33.27 c189
..LN479:
        movq      %rdx, (%rcx)                                  #33.27 c193
..LN480:
	.loc    1  35  is_stmt 1
        movq      8(%r9), %rdx                                  #35.27 c193
..LN481:
        movq      %rdx, -656(%rbp)                              #35.27 c197
..LN482:
        lea       -664(%rbp), %rdx                              #35.27 c197
..LN483:
        movq      32(%r9), %r15                                 #35.27 c201
..LN484:
	.loc    1  33  is_stmt 1
        movq      48(%r8), %rsi                                 #33.27 c201
..LN485:
        movq      56(%r8), %r8                                  #33.27 c205
..LN486:
	.loc    1  35  is_stmt 1
        movq      %r15, -16(%rdx)                               #35.27 c205
..LN487:
        lea       -688(%rbp), %r15                              #35.27 c209
..LN488:
	.loc    1  33  is_stmt 1
        movq      %rsi, -8(%rcx)                                #33.27 c209
..LN489:
        movq      %r8, -16(%rcx)                                #33.27 c213
..LN490:
	.loc    1  22  is_stmt 1
        movq      16(%rbx), %rax                                #22.41 c213
..LN491:
	.loc    1  33  is_stmt 1
        vmovapd   -768(%rbp), %zmm1                             #33.27 c217
..LN492:
	.loc    1  35  is_stmt 1
        movb      %al, %al                                      #35.27 c217
..LN493:
        movq      16(%r9), %rsi                                 #35.27 c221
..LN494:
        movq      24(%r9), %r8                                  #35.27 c221
..LN495:
        movq      %rsi, (%rdx)                                  #35.27 c225
..LN496:
        movq      %r8, -8(%rdx)                                 #35.27 c225
..LN497:
        movq      48(%r9), %rdx                                 #35.27 c229
..LN498:
        movq      (%r9), %rcx                                   #35.27 c229
..LN499:
        movq      %rdx, -8(%r15)                                #35.27 c233
..LN500:
        movq      %rcx, -648(%rbp)                              #35.27 c233
..LN501:
	.loc    1  38  is_stmt 1
        movq      8(%rax), %rdx                                 #38.27 c237
..LN502:
        movq      16(%rax), %rsi                                #38.27 c237
..LN503:
	.loc    1  22  is_stmt 1
        movq      24(%rbx), %r10                                #22.41 c241
..LN504:
	.loc    1  38  is_stmt 1
        movq      %rdx, -592(%rbp)                              #38.27 c241
..LN505:
        lea       -600(%rbp), %rdx                              #38.27 c245
..LN506:
	.loc    1  35  is_stmt 1
        movq      40(%r9), %rcx                                 #35.27 c245
..LN507:
        movq      56(%r9), %r9                                  #35.27 c249
..LN508:
	.loc    1  38  is_stmt 1
        movq      %rsi, (%rdx)                                  #38.27 c249
..LN509:
	.loc    1  35  is_stmt 1
        movq      %r9, -16(%r15)                                #35.27 c253
..LN510:
        movq      %rcx, (%r15)                                  #35.27 c253
..LN511:
        vmovapd   -704(%rbp), %zmm2                             #35.27 c257
..LN512:
	.loc    1  38  is_stmt 1
        movb      %dl, %dl                                      #38.27 c257
..LN513:
        movq      24(%rax), %r8                                 #38.27 c261
..LN514:
        movq      32(%rax), %r9                                 #38.27 c261
..LN515:
        movq      %r8, -8(%rdx)                                 #38.27 c265
..LN516:
        movq      %r9, -16(%rdx)                                #38.27 c265
..LN517:
        lea       -624(%rbp), %r9                               #38.27 c269
..LN518:
	.loc    1  40  is_stmt 1
        movq      8(%r10), %rdx                                 #40.27 c269
..LN519:
        movq      %rdx, -528(%rbp)                              #40.27 c273
..LN520:
        lea       -536(%rbp), %rdx                              #40.27 c273
..LN521:
	.loc    1  38  is_stmt 1
        movq      (%rax), %rcx                                  #38.27 c277
..LN522:
        movq      40(%rax), %r15                                #38.27 c277
..LN523:
	.loc    1  22  is_stmt 1
        movq      32(%rbx), %r11                                #22.41 c281
..LN524:
	.loc    1  38  is_stmt 1
        movq      %rcx, -584(%rbp)                              #38.27 c281
..LN525:
        movq      %r15, (%r9)                                   #38.27 c285
..LN526:
        movq      48(%rax), %rcx                                #38.27 c285
..LN527:
        movq      56(%rax), %rax                                #38.27 c289
..LN528:
        movq      %rcx, -8(%r9)                                 #38.27 c289
..LN529:
        movq      %rax, -16(%r9)                                #38.27 c293
..LN530:
	.loc    1  40  is_stmt 1
        movq      32(%r10), %r8                                 #40.27 c293
..LN531:
	.loc    1  38  is_stmt 1
        vmovapd   -640(%rbp), %zmm3                             #38.27 c297
..LN532:
	.loc    1  40  is_stmt 1
        movq      %r8, -16(%rdx)                                #40.27 c297
..LN533:
        lea       -560(%rbp), %r8                               #40.27 c301
..LN534:
        movq      16(%r10), %rax                                #40.27 c301
..LN535:
        movq      24(%r10), %rsi                                #40.27 c305
..LN536:
        movq      %rax, (%rdx)                                  #40.27 c305
..LN537:
        movq      %rsi, -8(%rdx)                                #40.27 c309
..LN538:
	.loc    1  22  is_stmt 1
        movq      48(%rbx), %r14                                #22.41 c309
..LN539:
	.loc    1  42  is_stmt 1
        movq      8(%r11), %rdx                                 #42.27 c313
..LN540:
        movq      16(%r11), %rax                                #42.27 c313
..LN541:
	.loc    1  22  is_stmt 1
        movq      40(%rbx), %r13                                #22.41 c317
..LN542:
	.loc    1  42  is_stmt 1
        movq      %rdx, -464(%rbp)                              #42.27 c317
..LN543:
        lea       -472(%rbp), %rdx                              #42.27 c321
..LN544:
	.loc    1  40  is_stmt 1
        movq      48(%r10), %r15                                #40.27 c321
..LN545:
        movq      (%r10), %rcx                                  #40.27 c325
..LN546:
        movq      40(%r10), %r9                                 #40.27 c325
..LN547:
        movq      56(%r10), %r10                                #40.27 c329
..LN548:
        movq      %r15, -8(%r8)                                 #40.27 c329
..LN549:
        movq      %rcx, -520(%rbp)                              #40.27 c333
..LN550:
        movq      %r9, (%r8)                                    #40.27 c333
..LN551:
        movq      %r10, -16(%r8)                                #40.27 c337
..LN552:
	.loc    1  42  is_stmt 1
        movq      %rax, (%rdx)                                  #42.27 c337
..LN553:
	.loc    1  40  is_stmt 1
        vmovapd   -576(%rbp), %zmm4                             #40.27 c341
..LN554:
	.loc    1  47  is_stmt 1
        movb      %al, %al                                      #47.27 c341
..LN555:
        movq      8(%r14), %r15                                 #47.27 c345
..LN556:
	.loc    1  42  is_stmt 1
        movq      (%r11), %rcx                                  #42.27 c345
..LN557:
        movq      24(%r11), %rsi                                #42.27 c349
..LN558:
        movq      32(%r11), %r8                                 #42.27 c349
..LN559:
	.loc    1  47  is_stmt 1
        movq      %r15, -336(%rbp)                              #47.27 c353
..LN560:
        lea       -344(%rbp), %r15                              #47.27 c353
..LN561:
	.loc    1  42  is_stmt 1
        movq      %rcx, -456(%rbp)                              #42.27 c357
..LN562:
        movq      %rsi, -8(%rdx)                                #42.27 c357
..LN563:
        movq      %r8, -16(%rdx)                                #42.27 c361
..LN564:
        lea       -496(%rbp), %r8                               #42.27 c361
..LN565:
	.loc    1  45  is_stmt 1
        movq      (%r13), %rcx                                  #45.27 c365
..LN566:
        movq      8(%r13), %rdx                                 #45.27 c365
..LN567:
        movq      %rcx, -392(%rbp)                              #45.27 c369
..LN568:
        movq      %rdx, -400(%rbp)                              #45.27 c369
..LN569:
        lea       -408(%rbp), %rdx                              #45.27 c373
..LN570:
	.loc    1  47  is_stmt 1
        movq      16(%r14), %rcx                                #47.27 c373
..LN571:
	.loc    1  42  is_stmt 1
        movq      40(%r11), %r9                                 #42.27 c377
..LN572:
        movq      48(%r11), %r10                                #42.27 c377
..LN573:
        movq      56(%r11), %r11                                #42.27 c381
..LN574:
	.loc    1  47  is_stmt 1
        movq      %rcx, (%r15)                                  #47.27 c381
..LN575:
	.loc    1  42  is_stmt 1
        movq      %r9, (%r8)                                    #42.27 c385
..LN576:
        movq      %r10, -8(%r8)                                 #42.27 c385
..LN577:
        movq      %r11, -16(%r8)                                #42.27 c389
..LN578:
	.loc    1  49  is_stmt 1
        movq      56(%rbx), %rcx                                #49.27 c389
..LN579:
	.loc    1  42  is_stmt 1
        vmovapd   -512(%rbp), %zmm5                             #42.27 c393
..LN580:
	.loc    1  45  is_stmt 1
        movb      %al, %al                                      #45.27 c393
..LN581:
        movq      16(%r13), %rax                                #45.27 c397
..LN582:
        movq      24(%r13), %rsi                                #45.27 c397
..LN583:
        movq      32(%r13), %r8                                 #45.27 c401
..LN584:
        movq      %rax, (%rdx)                                  #45.27 c401
..LN585:
        movq      %rsi, -8(%rdx)                                #45.27 c405
..LN586:
        movq      %r8, -16(%rdx)                                #45.27 c405
..LN587:
        lea       -432(%rbp), %r8                               #45.27 c409
..LN588:
	.loc    1  47  is_stmt 1
        movq      24(%r14), %rdx                                #47.27 c409
..LN589:
        movq      32(%r14), %rax                                #47.27 c413
..LN590:
        movq      %rdx, -8(%r15)                                #47.27 c413
..LN591:
        movq      %rax, -16(%r15)                               #47.27 c417
..LN592:
        lea       -368(%rbp), %rax                              #47.27 c417
..LN593:
	.loc    1  49  is_stmt 1
        movq      (%rcx), %rdx                                  #49.27 c421
..LN594:
	.loc    1  45  is_stmt 1
        movq      40(%r13), %r9                                 #45.27 c421
..LN595:
        movq      48(%r13), %r10                                #45.27 c425
..LN596:
        movq      56(%r13), %r11                                #45.27 c425
..LN597:
	.loc    1  49  is_stmt 1
        movq      %rdx, -264(%rbp)                              #49.27 c429
..LN598:
	.loc    1  45  is_stmt 1
        movq      %r9, (%r8)                                    #45.27 c429
..LN599:
        movq      %r10, -8(%r8)                                 #45.27 c433
..LN600:
        movq      %r11, -16(%r8)                                #45.27 c433
..LN601:
        vmovapd   -448(%rbp), %zmm6                             #45.27 c437
..LN602:
	.loc    1  52  is_stmt 1
        movb      %al, %al                                      #52.27 c437
..LN603:
        movq      64(%rbx), %rdx                                #52.27 c441
..LN604:
	.loc    1  47  is_stmt 1
        movq      (%r14), %r13                                  #47.27 c441
..LN605:
        movq      40(%r14), %rsi                                #47.27 c445
..LN606:
        movq      48(%r14), %r8                                 #47.27 c445
..LN607:
        movq      56(%r14), %r14                                #47.27 c449
..LN608:
        movq      %rsi, (%rax)                                  #47.27 c449
..LN609:
        movq      %r8, -8(%rax)                                 #47.27 c453
..LN610:
        movq      %r14, -16(%rax)                               #47.27 c453
..LN611:
        movq      %r13, -328(%rbp)                              #47.27 c457
..LN612:
	.loc    1  49  is_stmt 1
        movq      8(%rcx), %rax                                 #49.27 c457
..LN613:
	.loc    1  47  is_stmt 1
        vmovaps   -384(%rbp), %zmm7                             #47.27 c461
..LN614:
	.loc    1  49  is_stmt 1
        movq      %rax, -272(%rbp)                              #49.27 c461
..LN615:
        lea       -280(%rbp), %rax                              #49.27 c465
..LN616:
	.loc    1  52  is_stmt 1
        movq      8(%rdx), %r15                                 #52.27 c465
..LN617:
        movq      %r15, -208(%rbp)                              #52.27 c469
..LN618:
        lea       -216(%rbp), %r15                              #52.27 c469
..LN619:
	.loc    1  49  is_stmt 1
        movq      16(%rcx), %rsi                                #49.27 c473
..LN620:
        movq      32(%rcx), %r9                                 #49.27 c473
..LN621:
        movq      %rsi, (%rax)                                  #49.27 c477
..LN622:
        movq      %r9, -16(%rax)                                #49.27 c477
..LN623:
        lea       -304(%rbp), %r9                               #49.27 c481
..LN624:
	.loc    1  52  is_stmt 1
        movq      24(%rdx), %rsi                                #52.27 c481
..LN625:
        movq      %rsi, -8(%r15)                                #52.27 c485
..LN626:
	.loc    1  54  is_stmt 1
        movq      72(%rbx), %rsi                                #54.27 c485
..LN627:
	.loc    1  52  is_stmt 1
        movq      (%rdx), %r14                                  #52.27 c489
..LN628:
	.loc    1  49  is_stmt 1
        movq      24(%rcx), %r8                                 #49.27 c489
..LN629:
	.loc    1  52  is_stmt 1
        movq      %r14, -200(%rbp)                              #52.27 c493
..LN630:
	.loc    1  49  is_stmt 1
        movq      %r8, -8(%rax)                                 #49.27 c493
..LN631:
	.loc    1  54  is_stmt 1
        movq      8(%rsi), %r14                                 #54.27 c497
..LN632:
	.loc    1  49  is_stmt 1
        movq      56(%rcx), %r13                                #49.27 c497
..LN633:
	.loc    1  54  is_stmt 1
        movq      %r14, -144(%rbp)                              #54.27 c501
..LN634:
        lea       -152(%rbp), %r14                              #54.27 c501
..LN635:
	.loc    1  52  is_stmt 1
        movq      16(%rdx), %rax                                #52.27 c505
..LN636:
	.loc    1  49  is_stmt 1
        movq      %r13, -16(%r9)                                #49.27 c505
..LN637:
	.loc    1  52  is_stmt 1
        movq      %rax, (%r15)                                  #52.27 c509
..LN638:
        movq      32(%rdx), %r8                                 #52.27 c509
..LN639:
	.loc    1  54  is_stmt 1
        movq      (%rsi), %r13                                  #54.27 c513
..LN640:
        movq      24(%rsi), %rax                                #54.27 c513
..LN641:
	.loc    1  52  is_stmt 1
        movq      %r8, -16(%r15)                                #52.27 c517
..LN642:
        lea       -240(%rbp), %r8                               #52.27 c517
..LN643:
	.loc    1  54  is_stmt 1
        movq      %r13, -136(%rbp)                              #54.27 c521
..LN644:
        movq      %rax, -8(%r14)                                #54.27 c521
..LN645:
        movq      32(%rsi), %r13                                #54.27 c525
..LN646:
        movq      16(%rsi), %r15                                #54.27 c525
..LN647:
	.loc    1  56  is_stmt 1
        movq      80(%rbx), %rax                                #56.27 c529
..LN648:
	.loc    1  54  is_stmt 1
        movq      %r13, -16(%r14)                               #54.27 c529
..LN649:
        lea       -176(%rbp), %r13                              #54.27 c533
..LN650:
        movq      %r15, (%r14)                                  #54.27 c533
..LN651:
	.loc    1  49  is_stmt 1
        movq      40(%rcx), %r10                                #49.27 c537
..LN652:
        movq      48(%rcx), %r11                                #49.27 c537
..LN653:
        movq      %r10, (%r9)                                   #49.27 c541
..LN654:
        movq      %r11, -8(%r9)                                 #49.27 c541
..LN655:
        vmovaps   -320(%rbp), %zmm8                             #49.27 c545
..LN656:
	.loc    1  52  is_stmt 1
        movb      %al, %al                                      #52.27 c545
..LN657:
        movq      40(%rdx), %r9                                 #52.27 c549
..LN658:
        movq      48(%rdx), %r10                                #52.27 c549
..LN659:
        movq      56(%rdx), %r11                                #52.27 c553
..LN660:
        movq      %r9, (%r8)                                    #52.27 c553
..LN661:
        movq      %r10, -8(%r8)                                 #52.27 c557
..LN662:
        movq      %r11, -16(%r8)                                #52.27 c557
..LN663:
        vmovaps   -256(%rbp), %zmm9                             #52.27 c561
..LN664:
	.loc    1  54  is_stmt 1
        movb      %al, %al                                      #54.27 c561
..LN665:
        movq      56(%rsi), %r8                                 #54.27 c565
..LN666:
        movq      40(%rsi), %r14                                #54.27 c565
..LN667:
	.loc    1  56  is_stmt 1
        movq      (%rax), %r9                                   #56.27 c569
..LN668:
        movq      8(%rax), %r10                                 #56.27 c569
..LN669:
        movq      16(%rax), %r11                                #56.27 c573
..LN670:
	.loc    1  54  is_stmt 1
        movq      %r8, -16(%r13)                                #54.27 c573
..LN671:
	.loc    1  56  is_stmt 1
        movq      %r9, -72(%rbp)                                #56.27 c577
..LN672:
        movq      %r10, -80(%rbp)                               #56.27 c577
..LN673:
        movq      %r11, -88(%rbp)                               #56.27 c581
..LN674:
	.loc    1  54  is_stmt 1
        movq      %r14, (%r13)                                  #54.27 c581
..LN675:
        movq      48(%rsi), %r15                                #54.27 c585
..LN676:
	.loc    1  56  is_stmt 1
        movq      24(%rax), %rsi                                #56.27 c585
..LN677:
        movq      32(%rax), %r8                                 #56.27 c589
..LN678:
        movq      40(%rax), %r9                                 #56.27 c589
..LN679:
        movq      48(%rax), %r10                                #56.27 c593
..LN680:
        movq      56(%rax), %r11                                #56.27 c593
..LN681:
        movq      %rsi, -96(%rbp)                               #56.27 c597
..LN682:
        movq      %r8, -104(%rbp)                               #56.27 c597
..LN683:
        movq      %r9, -112(%rbp)                               #56.27 c601
..LN684:
        movq      %r10, -120(%rbp)                              #56.27 c601
..LN685:
        movq      %r11, -128(%rbp)                              #56.27 c605
..LN686:
	.loc    1  54  is_stmt 1
        movq      %r15, -8(%r13)                                #54.27 c605
..LN687:
        vmovaps   -192(%rbp), %zmm10                            #54.27 c609
..LN688:
	.loc    1  60  is_stmt 1
        xorl      %esi, %esi                                    #60.10 c609
..LN689:
	.loc    1  56  is_stmt 1
        vmovaps   -128(%rbp), %zmm0                             #56.27 c613
..LN690:
                                # LOE rax rdx rcx rdi esi zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14
..B2.2:                         # Preds ..B2.2 ..B2.1 Latency 29
..LN691:
	.loc    1  61  is_stmt 1
        vfmadd231pd %zmm14, %zmm13, %zmm12                      #61.14 c1
..LN692:
	.loc    1  60  is_stmt 1
        incl      %esi                                          #60.34 c1
..LN693:
	.loc    1  62  is_stmt 1
        vfmadd231pd %zmm1, %zmm2, %zmm3                         #62.14 c5
..LN694:
	.loc    1  60  is_stmt 1
        cmpl      $1000000000, %esi                             #60.27 c5
..LN695:
	.loc    1  63  is_stmt 1
        vfmadd231pd %zmm13, %zmm12, %zmm11                      #63.14 c9
..LN696:
	.loc    1  64  is_stmt 1
        vfmadd231pd %zmm2, %zmm3, %zmm4                         #64.14 c13
..LN697:
	.loc    1  65  is_stmt 1
        vfmadd231pd %zmm12, %zmm11, %zmm1                       #65.14 c17
..LN698:
	.loc    1  66  is_stmt 1
        vfmadd231pd %zmm3, %zmm4, %zmm5                         #66.14 c21
..LN699:
	.loc    1  67  is_stmt 1
        vfmadd231pd %zmm11, %zmm1, %zmm2                        #67.14 c25
..LN700:
	.loc    1  68  is_stmt 1
        vfmadd231pd %zmm4, %zmm5, %zmm6                         #68.14 c29
..LN701:
	.loc    1  60  is_stmt 1
        jb        ..B2.2        # Prob 100%                     #60.27 c29
..LN702:
                                # LOE rax rdx rcx rdi esi zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14
..B2.3:                         # Preds ..B2.2 Latency 269
..LN703:
	.loc    1  71  is_stmt 1
        vpermf32x4 $238, %zmm14, %zmm15                         #71.12 c1
..LN704:
        xorl      %esi, %esi                                    #71.5 c1
..LN705:
        incl      %esi                                          #71.5
..LN706:
	.loc    1  72  is_stmt 1
        vpermf32x4 $238, %zmm13, %zmm18                         #72.12 c5
..LN707:
	.loc    1  71  is_stmt 1
        kmov      %esi, %k1                                     #71.5 c5
..LN708:
	.loc    1  73  is_stmt 1
        vpermf32x4 $238, %zmm12, %zmm21                         #73.12 c9
..LN709:
	.loc    1  72  is_stmt 1
        movq      -1072(%rbp), %rsi                             #72.5 c9
..LN710:
	.loc    1  74  is_stmt 1
        vpermf32x4 $238, %zmm11, %zmm24                         #74.12 c13
..LN711:
        movq      -1088(%rbp), %r8                              #74.5 c13
..LN712:
	.loc    1  75  is_stmt 1
        vpermf32x4 $238, %zmm1, %zmm27                          #75.12 c17
..LN713:
        movq      -1056(%rbp), %r9                              #75.5 c17
..LN714:
	.loc    1  76  is_stmt 1
        vpermf32x4 $238, %zmm2, %zmm30                          #76.12 c21
..LN715:
        movq      -1064(%rbp), %r10                             #76.5 c21
..LN716:
	.loc    1  71  is_stmt 1
        vaddpd    %zmm14, %zmm15, %zmm14                        #71.12 c25
..LN717:
	.loc    1  77  is_stmt 1
        movq      16(%rbx), %r11                                #77.5 c25
..LN718:
	.loc    1  72  is_stmt 1
        vaddpd    %zmm13, %zmm18, %zmm13                        #72.12 c29
..LN719:
	.loc    1  78  is_stmt 1
        movq      24(%rbx), %r13                                #78.5 c29
..LN720:
	.loc    1  73  is_stmt 1
        vaddpd    %zmm12, %zmm21, %zmm12                        #73.12 c33
..LN721:
	.loc    1  79  is_stmt 1
        movq      32(%rbx), %r14                                #79.5 c33
..LN722:
	.loc    1  74  is_stmt 1
        vaddpd    %zmm11, %zmm24, %zmm11                        #74.12 c37
..LN723:
	.loc    1  80  is_stmt 1
        movq      40(%rbx), %r15                                #80.5 c37
..LN724:
	.loc    1  75  is_stmt 1
        vaddpd    %zmm1, %zmm27, %zmm1                          #75.12 c41
..LN725:
	.loc    1  76  is_stmt 1
        vaddpd    %zmm2, %zmm30, %zmm2                          #76.12 c45
..LN726:
	.loc    1  71  is_stmt 1
        vaddpd    %zmm14{badc}, %zmm14, %zmm16                  #71.12 c49
..LN727:
	.loc    1  72  is_stmt 1
        vaddpd    %zmm13{badc}, %zmm13, %zmm19                  #72.12 c53
..LN728:
	.loc    1  73  is_stmt 1
        vaddpd    %zmm12{badc}, %zmm12, %zmm22                  #73.12 c57
..LN729:
	.loc    1  74  is_stmt 1
        vaddpd    %zmm11{badc}, %zmm11, %zmm25                  #74.12 c61
..LN730:
	.loc    1  75  is_stmt 1
        vaddpd    %zmm1{badc}, %zmm1, %zmm28                    #75.12 c65
..LN731:
	.loc    1  76  is_stmt 1
        vaddpd    %zmm2{badc}, %zmm2, %zmm31                    #76.12 c69
..LN732:
	.loc    1  71  is_stmt 1
        vaddpd    %zmm16{cdab}, %zmm16, %zmm17                  #71.12 c73
..LN733:
	.loc    1  77  is_stmt 1
        vpermf32x4 $238, %zmm3, %zmm2                           #77.12 c77
..LN734:
	.loc    1  72  is_stmt 1
        vaddpd    %zmm19{cdab}, %zmm19, %zmm20                  #72.12 c81
..LN735:
	.loc    1  71  is_stmt 1
        vpackstorelpd %zmm17, (%rdi){%k1}                       #71.5 c81
..LN736:
	.loc    1  73  is_stmt 1
        vaddpd    %zmm22{cdab}, %zmm22, %zmm23                  #73.12 c85
..LN737:
        movq      -1080(%rbp), %rdi                             #73.5 c85
..LN738:
	.loc    1  74  is_stmt 1
        vaddpd    %zmm25{cdab}, %zmm25, %zmm26                  #74.12 c89
..LN739:
	.loc    1  72  is_stmt 1
        vpackstorelpd %zmm20, (%rsi){%k1}                       #72.5 c89
..LN740:
	.loc    1  75  is_stmt 1
        vaddpd    %zmm28{cdab}, %zmm28, %zmm29                  #75.12 c93
..LN741:
	.loc    1  73  is_stmt 1
        vpackstorelpd %zmm23, (%rdi){%k1}                       #73.5 c93
..LN742:
	.loc    1  76  is_stmt 1
        vaddpd    %zmm31{cdab}, %zmm31, %zmm1                   #76.12 c97
..LN743:
	.loc    1  74  is_stmt 1
        vpackstorelpd %zmm26, (%r8){%k1}                        #74.5 c97
..LN744:
	.loc    1  77  is_stmt 1
        vaddpd    %zmm3, %zmm2, %zmm3                           #77.12 c101
..LN745:
	.loc    1  75  is_stmt 1
        vpackstorelpd %zmm29, (%r9){%k1}                        #75.5 c101
..LN746:
	.loc    1  76  is_stmt 1
        vpackstorelpd %zmm1, (%r10){%k1}                        #76.5 c105
..LN747:
	.loc    1  81  is_stmt 1
        movq      48(%rbx), %rsi                                #81.5 c105
..LN748:
	.loc    1  77  is_stmt 1
        vaddpd    %zmm3{badc}, %zmm3, %zmm1                     #77.12 c109
..LN749:
	.loc    1  78  is_stmt 1
        vpermf32x4 $238, %zmm4, %zmm3                           #78.12 c113
..LN750:
        vaddpd    %zmm4, %zmm3, %zmm4                           #78.12 c117
..LN751:
	.loc    1  79  is_stmt 1
        vpermf32x4 $238, %zmm5, %zmm3                           #79.12 c121
..LN752:
	.loc    1  77  is_stmt 1
        vaddpd    %zmm1{cdab}, %zmm1, %zmm2                     #77.12 c125
..LN753:
	.loc    1  78  is_stmt 1
        vaddpd    %zmm4{badc}, %zmm4, %zmm1                     #78.12 c129
..LN754:
	.loc    1  79  is_stmt 1
        vaddpd    %zmm5, %zmm3, %zmm5                           #79.12 c133
..LN755:
	.loc    1  77  is_stmt 1
        vpackstorelpd %zmm2, (%r11){%k1}                        #77.5 c133
..LN756:
	.loc    1  80  is_stmt 1
        vpermf32x4 $238, %zmm6, %zmm3                           #80.12 c137
..LN757:
	.loc    1  78  is_stmt 1
        vaddpd    %zmm1{cdab}, %zmm1, %zmm2                     #78.12 c141
..LN758:
	.loc    1  79  is_stmt 1
        vaddpd    %zmm5{badc}, %zmm5, %zmm1                     #79.12 c145
..LN759:
	.loc    1  80  is_stmt 1
        vaddpd    %zmm6, %zmm3, %zmm6                           #80.12 c149
..LN760:
	.loc    1  78  is_stmt 1
        vpackstorelpd %zmm2, (%r13){%k1}                        #78.5 c149
..LN761:
	.loc    1  81  is_stmt 1
        vpermf32x4 $238, %zmm7, %zmm3                           #81.12 c153
..LN762:
	.loc    1  79  is_stmt 1
        vaddpd    %zmm1{cdab}, %zmm1, %zmm2                     #79.12 c157
..LN763:
	.loc    1  80  is_stmt 1
        vaddpd    %zmm6{badc}, %zmm6, %zmm1                     #80.12 c161
..LN764:
	.loc    1  81  is_stmt 1
        vaddpd    %zmm7, %zmm3, %zmm7                           #81.12 c165
..LN765:
	.loc    1  79  is_stmt 1
        vpackstorelpd %zmm2, (%r14){%k1}                        #79.5 c165
..LN766:
	.loc    1  82  is_stmt 1
        vpermf32x4 $238, %zmm8, %zmm3                           #82.12 c169
..LN767:
	.loc    1  80  is_stmt 1
        vaddpd    %zmm1{cdab}, %zmm1, %zmm2                     #80.12 c173
..LN768:
	.loc    1  81  is_stmt 1
        vaddpd    %zmm7{badc}, %zmm7, %zmm1                     #81.12 c177
..LN769:
	.loc    1  82  is_stmt 1
        vaddpd    %zmm8, %zmm3, %zmm8                           #82.12 c181
..LN770:
	.loc    1  80  is_stmt 1
        vpackstorelpd %zmm2, (%r15){%k1}                        #80.5 c181
..LN771:
	.loc    1  83  is_stmt 1
        vpermf32x4 $238, %zmm9, %zmm3                           #83.12 c185
..LN772:
	.loc    1  81  is_stmt 1
        vaddpd    %zmm1{cdab}, %zmm1, %zmm2                     #81.12 c189
..LN773:
	.loc    1  82  is_stmt 1
        vaddpd    %zmm8{badc}, %zmm8, %zmm1                     #82.12 c193
..LN774:
	.loc    1  83  is_stmt 1
        vaddpd    %zmm9, %zmm3, %zmm9                           #83.12 c197
..LN775:
	.loc    1  81  is_stmt 1
        vpackstorelpd %zmm2, (%rsi){%k1}                        #81.5 c197
..LN776:
	.loc    1  84  is_stmt 1
        vpermf32x4 $238, %zmm10, %zmm3                          #84.12 c201
..LN777:
        vaddpd    %zmm10, %zmm3, %zmm10                         #84.12 c205
..LN778:
	.loc    1  85  is_stmt 1
        vpermf32x4 $238, %zmm0, %zmm3                           #85.12 c209
..LN779:
	.loc    1  82  is_stmt 1
        vaddpd    %zmm1{cdab}, %zmm1, %zmm2                     #82.12 c213
..LN780:
	.loc    1  83  is_stmt 1
        vaddpd    %zmm9{badc}, %zmm9, %zmm1                     #83.12 c217
..LN781:
	.loc    1  85  is_stmt 1
        vaddpd    %zmm0, %zmm3, %zmm0                           #85.12 c221
..LN782:
	.loc    1  82  is_stmt 1
        vpackstorelpd %zmm2, (%rcx){%k1}                        #82.5 c221
..LN783:
	.loc    1  83  is_stmt 1
        vaddpd    %zmm1{cdab}, %zmm1, %zmm2                     #83.12 c225
..LN784:
	.loc    1  84  is_stmt 1
        vaddpd    %zmm10{badc}, %zmm10, %zmm1                   #84.12 c229
..LN785:
	.loc    1  85  is_stmt 1
        vaddpd    %zmm0{badc}, %zmm0, %zmm0                     #85.12 c233
..LN786:
	.loc    1  83  is_stmt 1
        vpackstorelpd %zmm2, (%rdx){%k1}                        #83.5 c233
..LN787:
	.loc    1  84  is_stmt 1
        vaddpd    %zmm1{cdab}, %zmm1, %zmm2                     #84.12 c237
..LN788:
        movq      72(%rbx), %rdx                                #84.5 c237
..LN789:
	.loc    1  85  is_stmt 1
        vaddpd    %zmm0{cdab}, %zmm0, %zmm1                     #85.12 c241
..LN790:
	.loc    1  84  is_stmt 1
        movb      %cl, %cl                                      #84.5 c241
..LN791:
        vpackstorelpd %zmm2, (%rdx){%k1}                        #84.5 c245
..LN792:
	.loc    1  85  is_stmt 1
        vpackstorelpd %zmm1, (%rax){%k1}                        #85.5 c249
..LN793:
	.loc    1  86  is_stmt 1
        lea       -32(%rbp), %rsp                               #86.1 c249
	.cfi_restore 15
..LN794:
        popq      %r15                                          #86.1
	.cfi_restore 14
..LN795:
        popq      %r14                                          #86.1
	.cfi_restore 13
..LN796:
        popq      %r13                                          #86.1
	.cfi_restore 12
..LN797:
        popq      %r12                                          #86.1
..LN798:
        popq      %rbp                                          #86.1 c269
	.cfi_restore 6
..LN799:
        movq      %rbx, %rsp                                    #86.1
..LN800:
        popq      %rbx                                          #86.1
	.cfi_def_cfa 7, 8
	.cfi_restore 3
..LN801:
        ret                                                     #86.1
        .align    16,0x90
	.cfi_endproc
..LN802:
                                # LOE
..LN803:
# mark_end;
	.type	fastest,@function
	.size	fastest,.-fastest
..LNfastest.804:
.LNfastest:
	.data
# -- End  fastest
	.text
.L_2__routine_start_wall_time_2:
# -- Begin  wall_time
	.text
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl wall_time
# --- wall_time(void)
wall_time:
..B3.1:                         # Preds ..B3.0 Latency 9
	.cfi_startproc
..___tag_value_wall_time.67:
..L68:
                                                         #9.24
..LN805:
	.loc    1  9  is_stmt 1
        pushq     %rbp                                          #9.24
	.cfi_def_cfa_offset 16
..LN806:
        movq      %rsp, %rbp                                    #9.24
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN807:
        andq      $-64, %rsp                                    #9.24
..LN808:
        subq      $64, %rsp                                     #9.24 c1
..LN809:
	.loc    1  13  is_stmt 1
        lea       (%rsp), %rdi                                  #13.5 c5
..LN810:
        lea       16(%rsp), %rsi                                #13.5 c5
..LN811:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #13.5 c9
..LN812:
                                # LOE rbx r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1 Latency 181
..LN813:
	.loc    1  14  is_stmt 1
        vbroadcasti32x4 .L_2il0floatpacket.5(%rip), %zmm15      #14.36 c1
..LN814:
        vbroadcasti64x4 .L_2il0floatpacket.3(%rip), %zmm21      #14.36 c5
..LN815:
        vpxorq    %zmm6, %zmm6, %zmm6                           #14.36 c9
..LN816:
        movl      $1, %edx                                      #14.13 c9
..LN817:
        vpbroadcastd .L_2il0floatpacket.6(%rip), %zmm5          #14.36 c13
..LN818:
        vmovapd   %zmm21{bbbb}, %zmm9                           #14.36 c17
..LN819:
        kmov      %edx, %k3                                     #14.13 c17
..LN820:
        vcvtudq2pd 8(%rsp){1to8}, %zmm2{%k3}                    #14.25 c21
..LN821:
        vcvtdq2pd 12(%rsp){1to8}, %zmm3{%k3}                    #14.25 c25
..LN822:
        vfmadd132pd .L_2il0floatpacket.2(%rip){1to8}, %zmm2, %zmm3{%k3} #14.25 c29
..LN823:
        vbroadcastsd .L_2il0floatpacket.0(%rip), %zmm4{%k3}     #14.36 c33
..LN824:
        vgetexppd %zmm4, %zmm12{%k3}                            #14.36 c37
..LN825:
        vgetexppd %zmm3, %zmm11{%k3}                            #14.36 c41
..LN826:
        vgetmantpd $0, %zmm4, %zmm10{%k3}                       #14.36 c45
..LN827:
        vsubpd    %zmm12, %zmm11, %zmm13{%k3}                   #14.36 c49
..LN828:
        vpminsd   %zmm15{aaaa}, %zmm13, %zmm14                  #14.36 c53
..LN829:
        vcvtpd2ps {rz-sae}, %zmm10, %zmm7{%k3}                  #14.36 c57
..LN830:
        vpminud   %zmm15{bbbb}, %zmm14, %zmm16                  #14.36 c61
..LN831:
        vrcp23ps  %zmm7, %zmm8{%k3}                             #14.36 c65
..LN832:
        vaddpd    %zmm21{cccc}, %zmm16, %zmm16{%k3}             #14.36 c69
..LN833:
        vfixupnanpd %zmm5, %zmm4, %zmm6{%k3}                    #14.36 c73
..LN834:
        vcvtps2pd %zmm8, %zmm23{%k3}                            #14.36 c77
..LN835:
        vpslld    $20, %zmm16, %zmm18                           #14.36 c81
..LN836:
        vbroadcasti64x4 .L_2il0floatpacket.4(%rip), %zmm17      #14.36 c85
..LN837:
        vfixupnanpd %zmm5, %zmm3, %zmm6{%k3}                    #14.36 c89
..LN838:
        vfnmadd213pd {rn-sae}, %zmm9, %zmm23, %zmm10{%k3}       #14.36 c93
..LN839:
        vpsrad    $1, %zmm18, %zmm25                            #14.36 c97
..LN840:
        vcmpeqpd  %zmm6, %zmm6, %k2{%k3}                        #14.36 c101
..LN841:
        vfmadd231pd {rn-sae}, %zmm10, %zmm10, %zmm10{%k3}       #14.36 c105
..LN842:
        vpandq    %zmm17{aaaa}, %zmm25, %zmm25{%k3}             #14.36 c109
..LN843:
        kmov      %k2, %k1                                      #14.36 c109
..LN844:
        vpbroadcastd .L_2il0floatpacket.7(%rip), %zmm24         #14.36 c113
..LN845:
        vfmadd231pd {rn-sae}, %zmm23, %zmm10, %zmm23{%k3}       #14.36 c117
..LN846:
        kandn     %k3, %k1                                      #14.36 c117
..LN847:
        vgetmantpd $0, %zmm3, %zmm22{%k3}                       #14.36 c121
..LN848:
        vpsubd    %zmm25, %zmm18, %zmm19                        #14.36 c125
..LN849:
        vmovdqa64 %zmm21{bbbb}, %zmm20                          #14.36 c129
..LN850:
        vfixupnanpd %zmm24, %zmm4, %zmm4{%k3}                   #14.36 c133
..LN851:
        vmulpd    {rn-sae}, %zmm23, %zmm22, %zmm28{%k2}         #14.36 c137
..LN852:
        vpaddd    %zmm20, %zmm19, %zmm27                        #14.36 c141
..LN853:
        vmulpd    {rn-sae}, %zmm4, %zmm3, %zmm28{%k1}           #14.36 c145
..LN854:
        vpandq    %zmm21{aaaa}, %zmm27, %zmm27{%k3}             #14.36 c149
..LN855:
        vpaddd    %zmm25, %zmm28, %zmm26                        #14.36 c153
..LN856:
        vcvtudq2pd (%rsp){1to8}, %zmm1{%k3}                     #14.13 c157
..LN857:
        vcvtdq2pd 4(%rsp){1to8}, %zmm0{%k3}                     #14.13 c161
..LN858:
        vmulpd    {rn}, %zmm27, %zmm26, %zmm28{%k2}             #14.36 c165
..LN859:
        vfmadd132pd .L_2il0floatpacket.2(%rip){1to8}, %zmm1, %zmm0{%k3} #14.13 c169
..LN860:
        vmovapd   %zmm28, %zmm29{%k3}                           #14.36 c173
..LN861:
        vaddpd    %zmm29, %zmm0, %zmm0{%k3}                     #14.36 c177
..LN862:
        movq      %rbp, %rsp                                    #14.36 c181
..LN863:
        popq      %rbp                                          #14.36
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN864:
        ret                                                     #14.36
        .align    16,0x90
	.cfi_endproc
..LN865:
                                # LOE
..LN866:
# mark_end;
	.type	wall_time,@function
	.size	wall_time,.-wall_time
..LNwall_time.867:
.LNwall_time:
	.data
# -- End  wall_time
	.section .rodata, "a"
	.align 32
.L_2il0floatpacket.3:
	.long	0x00000000,0x7ff00000,0x00000000,0x3ff00000,0x00000000,0x41380000,0x00000000,0x4137fc02
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,32
	.align 32
.L_2il0floatpacket.4:
	.long	0x00000000,0xfff00000,0x00000001,0x00000000,0x0000043e,0x00000000,0x00000000,0x80000000
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,32
	.align 16
.L_2il0floatpacket.5:
	.long	0x40900800,0xc090d400,0x7fe00000,0x03500000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,16
	.align 8
.L_2il0floatpacket.0:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.align 8
.L_2il0floatpacket.1:
	.long	0x00000000,0x40480000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.align 8
.L_2il0floatpacket.2:
	.long	0x00000000,0x41f00000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.align 4
.L_2il0floatpacket.6:
	.long	0x00028b45
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,4
	.align 4
.L_2il0floatpacket.7:
	.long	0x00018842
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	622869089
	.word	2662
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	622869090
	.word	2662
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	622869091
	.word	2662
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	622869092
	.word	2662
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	622869093
	.word	2662
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	622869094
	.word	2662
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	622869095
	.word	2662
	.byte	0
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	622869096
	.word	2662
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.long	622869097
	.word	2662
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.long	622869098
	.word	2662
	.byte	0
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.10:
	.long	622869099
	.word	2662
	.byte	0
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.11:
	.long	622869100
	.word	2662
	.byte	0
	.type	.L_2__STRING.11,@object
	.size	.L_2__STRING.11,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.12:
	.long	622869101
	.word	2662
	.byte	0
	.type	.L_2__STRING.12,@object
	.size	.L_2__STRING.12,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.13:
	.long	622869102
	.word	2662
	.byte	0
	.type	.L_2__STRING.13,@object
	.size	.L_2__STRING.13,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.14:
	.long	622869103
	.word	2662
	.byte	0
	.type	.L_2__STRING.14,@object
	.size	.L_2__STRING.14,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.15:
	.long	1701669204
	.long	1713709114
	.word	10
	.type	.L_2__STRING.15,@object
	.size	.L_2__STRING.15,10
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.16:
	.long	1869366855
	.long	540701552
	.long	681509
	.type	.L_2__STRING.16,@object
	.size	.L_2__STRING.16,12
	.data
	.section .note.GNU-stack, ""
# End
