##########################################################################################################################
# File automatically-generated by tool: [projectgenerator] version: [4.1.0] date: [Sun Dec 01 09:24:27 CET 2024]
##########################################################################################################################

# ------------------------------------------------
# Generic Makefile (based on gcc)
#
# ChangeLog :
#	2017-02-10 - Several enhancements + project update mode
#   2015-07-22 - first version
# ------------------------------------------------

######################################
# target
######################################
TARGET = TestG431KB


######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -Og


#######################################
# paths
#######################################
# Build path
BUILD_DIR = build

######################################
# ext libs path
######################################
LIB_STM32 = ext/libElectrobotG431

######################################
# source
######################################
# CPP sources
CXX_SOURCES =  \
Sources/main_app.cpp \
Sources/CGlobale.cpp \
Sources/CGlobale_ModeAutonome.cpp \
Sources/CGlobale_ModePiloteLaBotBox.cpp \
Sources/CGlobale_ModePiloteTerminal.cpp \
Sources/RessourcesHardware.cpp \

# C sources
C_SOURCES =  \
$(LIB_STM32)/Core/Src/main.c \
$(LIB_STM32)/Core/Src/retarget.c \
$(LIB_STM32)/Core/Src/stm32g4xx_it.c \
$(LIB_STM32)/Core/Src/stm32g4xx_hal_msp.c \
$(LIB_STM32)/Core/Src/syscalls.c \
$(LIB_STM32)/Core/Src/sysmem.c \
$(LIB_STM32)/Core/Src/system_stm32g4xx.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_adc.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_adc_ex.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_adc.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_rcc.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_rcc_ex.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash_ex.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash_ramfunc.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_gpio.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_exti.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma_ex.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_cortex.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_i2c.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_i2c_ex.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_tim.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_tim_ex.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_uart.c \
$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_uart_ex.c \
 

# ASM sources
ASM_SOURCES =  \
$(LIB_STM32)/Core/Startup/startup_stm32g431kbtx.s


#######################################
# binaries
#######################################
PREFIX = arm-none-eabi-
# The gcc compiler bin path can be either defined in make command via GCC_PATH variable (> make GCC_PATH=xxx)
# either it can be added to the PATH environment variable.
ifdef GCC_PATH
CC = $(GCC_PATH)/$(PREFIX)gcc
CXX = $(GCC_PATH)/$(PREFIX)g++
AS = $(GCC_PATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(GCC_PATH)/$(PREFIX)objcopy
SZ = $(GCC_PATH)/$(PREFIX)size
else
CC = $(PREFIX)gcc
CXX = $(PREFIX)g++
AS = $(PREFIX)gcc -x assembler-with-cpp
CP = $(PREFIX)objcopy
SZ = $(PREFIX)size
endif
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# cpu
CPU = -mcpu=cortex-m4

# fpu
FPU = -mfpu=fpv4-sp-d16

# float-abi
FLOAT-ABI = -mfloat-abi=hard

# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DUSE_HAL_DRIVER \
-DSTM32G431xx


# AS includes
AS_INCLUDES = 

# C includes
C_INCLUDES =  \
-IIncludes \
-I$(LIB_STM32)/Includes \
-I$(LIB_STM32)/Core/Inc \
-I$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Inc \
-I$(LIB_STM32)/Drivers/STM32G4xx_HAL_Driver/Inc/Legacy \
-I$(LIB_STM32)/Drivers/CMSIS/Device/ST/STM32G4xx/Include \
-I$(LIB_STM32)/Drivers/CMSIS/Include


# compile gcc flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS += $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CXXFLAGS += $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
CXXFLAGS += -g -gdwarf-2
endif


# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"
CXXFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"

#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = $(LIB_STM32)/STM32G431KBTX_FLASH.ld

# libraries
LIBS = -lc -lm -lnosys 
LIBDIR = 
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin

install: $(BUILD_DIR)/$(TARGET).bin
	st-flash write $(BUILD_DIR)/$(TARGET).bin 0x8000000 && st-flash reset


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(CXX_SOURCES:.cpp=.o)))
vpath %.cpp $(sort $(dir $(CXX_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.cpp Makefile | $(BUILD_DIR) 
	$(CXX) -c $(CXXFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.cpp=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir $@		

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)
  
#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

# *** EOF ***
