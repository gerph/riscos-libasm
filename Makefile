# Makefile for Asm
#

#
# Program specific options:
#
COMPONENT  = Asm
OBJS       = o.callbacks \
             o.irqs \
             o.muldiv

EXPORTS    = \
             ${EXP_LIB}.${COMPONENT}.h.callbacks \
             ${EXP_LIB}.${COMPONENT}.h.irqs \
             ${EXP_LIB}.${COMPONENT}.h.muldiv
CDEFINES   = 
INCLUDES   = 

include LibExport

# Exports
${EXP_LIB}.${COMPONENT}.h.callbacks: h.callbacks
        ${CP} $? $@ ${CPFLAGS}
${EXP_LIB}.${COMPONENT}.h.irqs: h.irqs
        ${CP} $? $@ ${CPFLAGS}
${EXP_LIB}.${COMPONENT}.h.muldiv: h.muldiv
        ${CP} $? $@ ${CPFLAGS}

#---------------------------------------------------------------------------
# Dynamic dependencies:
