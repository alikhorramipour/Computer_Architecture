setMode -bs
setMode -bs
setMode -bs
setMode -bs
setCable -port auto
Identify -inferir 
identifyMPM 
assignFile -p 2 -file "D:/9531703-9731505/Memory/cam.bit"
Program -p 2 
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
saveProjectFile -file "D:\p\\auto_project.ipf"
setMode -bs
setMode -bs
deleteDevice -position 1
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
