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

