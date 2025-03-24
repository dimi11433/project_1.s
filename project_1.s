.data 
input_buffer: .space 11 #Buffer to hold 10 characters + null
n_a: .asciiz "N/A"

.text
.globl main

main:
    #Read input string
    li $v0, 8   #syscall 8 :read string
    la $a0, input_buffer #load buffer address
    li $a1, 11 #read up to 10 characters
    syscall

    #Initialize G and H sums
    li $s0, 0 #G = 0(first half sum)
    li $s1, 0 #H = 0(second half sum)

    li $t0, 0 #Loop counter(i = 0 to 9)

process_loop:
    bge $t0, 10, end_loop  #Exit loop if i >= 10

