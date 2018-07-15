library(raster)
library(ncdf4)
library(rasterVis)




###
###
###

lim.per = rep(1:5, each = 30*12)

###
###
###

diretorio = "~/CMIP5/southam/"


###
### 
### tmp = temperature files

files.tmp = list.files(paste0(diretorio,'tas/'), pattern='*.nc')
files.ppt = list.files(paste0(diretorio,'pr/'),  pattern='*.nc')




i = 1
for(i in 1:35){
  
  cat("iteration = ", i, "\n")
  
  temp.tmp = brick(paste0(diretorio, 'tas/', files.tmp[i]))[[1:1800]]
  temp.ppt = brick(paste0(diretorio, 'pr/',  files.ppt[i]))[[1:1800]]*30.5
  
  
  extent(temp.tmp) = c(xmin=-90, xmax = -29, ymin=-60,ymax=21)
  extent(temp.ppt) = c(xmin=-90, xmax = -29, ymin=-60,ymax=21)
  
}
