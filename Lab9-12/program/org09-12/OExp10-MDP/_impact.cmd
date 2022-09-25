setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
loadProjectFile -file "D:\ISE147\LEDTEST\testled2017\auto_project.ipf"
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setMode -bs
setMode -bs
setMode -bs
setMode -bs
setMode -bs
cutDevice -p 1
addDevice -p 1 -file "E:/OExp09_IP2MCPU/top.bit"
setCable -port auto
Program -p 1 
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
saveProjectFile -file "D:\disp_num_hyy_ex13/\auto_project.ipf"
setMode -bs
setMode -bs
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
