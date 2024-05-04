ORG 000H

; Initialize registers
MOV R0, #30H   ; R0 points to the starting memory location (0x30H)
MOV R1, #03H   ; R1 holds the number of elements (3)

START:
    MOV A, @R0  ; Load the value from memory into the accumulator (A)

LOOP:
    ; Check if all elements have been processed
    DJNZ R1, LOOP   ; Decrement R1 and jump back if not zero (more elements)

    ; Assume the first element is the smallest (during first loop iteration)
    CMP A, 50H  ; Compare A with a large value (can be any value initially)
    JNC NOT_SMALLEST  ; If A is greater or equal, it's not the smallest (skip)

NOT_SMALLEST:
    ; Update the smallest value in memory
    MOV 50H, A  ; Store A (current smallest) in 50H

LOOP:
    DJNZ R1, LOOP   ; Decrement R1 and jump back if not zero (more elements to process)

END
