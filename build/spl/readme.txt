# OS Dubna Bootstrap in Dispak
# Assumptions and requisitions 
#
# Copyright, 2017 by M.Popov 
# 
##### TAPE NUMBERS AND FORMATS
### LABELS:
# The following tape labels are fixed in OS Dubna
# allocations in DD:

 1/ROLLIB
 1/D73INP
 3/D73OUT
 5/D73LIB
 6/D73STA
 7/M
 9/MONSYS
16/USESTA
17/LINBUF

# allocation in MS
# Library tapes:

 5/LIBRAR
 5/LIBRAR
21/LIBRAR
22/LIBRAR
23/LIBRAR
25/LIBRAR

### NUMBERS:
# FIXED TAPE numbers for the bootstrap in Dispak
# original tape images came as is  
   9 - monsys
  12 - librar12
  37 - librar37	

# Tape numbers are generated during the bootstrap 
#
# all tapes have the following format:
#   ZONE     CONTENT
# 00 - 77 preso of compiled source
#     100 sources in cosy format 
 
# Pre-fixed taped numbers in DD bootstrap
#
#    1- 999 Original tapes  
# 1000-1199 Compilers
# 1200-1399 The Monitor System (MS) & libraries
# 1400-1899 OS Dubna Dispatcher (DD)
# 1900-1999 Temp/Scratch tapes 

# Comp
1000 - Мadlen-2
1100 - loader

# MS
1200 - Мониторная Система
1211 - task11  (!compilation errors in FOREX)
1221 - libra21 
1223 - libra23 (!compilation errors in FOREX)
1247 - task47
1300 - exfor

# DD
1400 - Диспетчер
1500 - macro67.dd1
1600 - tasksav.dd2
1700 - nrespost.dd3
1800 - sluga.dd4
1899 - extold 

# Scratch
1900 -
1999 - scratch tape for the uploading
