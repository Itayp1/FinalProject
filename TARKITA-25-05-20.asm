data segment 
        
        

data ends

sseg segment stack
  DW 100 dup (?)
sseg ends

code segment
assume cs:code,ds:data,ss:sseg

start:   mov ax,data
         mov ds,ax     ; 
         
         mov ax, 1234h
         mov bx, 2222h
         mov cx, 1111h       

exit:    mov ah,4ch
         int 21h
         
         
SORT proc
    
    cmp ax, bx
    jng yes
    mov bx, ax
yes:cmp ax, cx
    jnl no
    ret
no: mov cx, ax
    ret
    
SORT endp    
    
    

code ends
end start



