c.li x1, 10
c.li x2, 20
c.addi x2, 30
c.lui x3, 1
c.mv x4, x3
c.addi16sp 16
c.li x8, 2
c.srli x8, 1
c.sub x8, x8
c.beqz x8, 4
c.li x8, 2
c.li x8, 3
c.bnez x8, 4
c.li x8, 5
c.li x8, 0
c.li x9, 7
c.sw x9, 0(x8)
c.lw x8 0(x8)
c.addi4spn x8, 4
