# Makefile for Asm
#

#
# Program specific options:
#
COMPONENT  = Asm
OBJS       = o.callbacks \
             o.irqs \
             o.muldiv \
             o.callx \
             o.processor \
             o.fpsvc \
             o.starttasksvc

EXPORTS    = \
             ${EXP_LIB}.${COMPONENT}.h.callbacks \
             ${EXP_LIB}.${COMPONENT}.h.irqs \
             ${EXP_LIB}.${COMPONENT}.h.muldiv \
             ${EXP_LIB}.${COMPONENT}.h.callx \
             ${EXP_LIB}.${COMPONENT}.h.processor \
             ${EXP_LIB}.${COMPONENT}.h.fpsvc \
             ${EXP_LIB}.${COMPONENT}.h.starttasksvc
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
${EXP_LIB}.${COMPONENT}.h.callx: h.callx
        ${CP} $? $@ ${CPFLAGS}
${EXP_LIB}.${COMPONENT}.h.processor: h.processor
        ${CP} $? $@ ${CPFLAGS}
${EXP_LIB}.${COMPONENT}.h.fpsvc: h.fpsvc
        ${CP} $? $@ ${CPFLAGS}
${EXP_LIB}.${COMPONENT}.h.starttasksvc: h.starttasksvc
        ${CP} $? $@ ${CPFLAGS}

#---------------------------------------------------------------------------
# Dynamic dependencies:
