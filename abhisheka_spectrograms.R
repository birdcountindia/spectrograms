# https://marce10.github.io/dynaSpec/
  
# Need to download and install ffmpeg which might be troublesome
# https://www.geeksforgeeks.org/how-to-install-ffmpeg-on-windows/

# # From CRAN would be
# install.packages("dynaSpec")

# load package
library(dynaSpec)

# and load other dependencies
library(viridis)
library(tuneR)
library(seewave)

# # From github
# devtools::install_github("maRce10/warbleR")
# load package
library(warbleR)


# files
f <- c(list.files(pattern = ".wav", full.names = T), 
       list.files(pattern = ".mp3", full.names = T))

paged_spectro(prep_static_ggspectro(f[1], savePNG = F, bgFlood = T, onlyPlotSpec = F, 
                                    specHeight = 4, specWidth = 10, colPal = c("white", "black"), 
                                    xLim = 4, crop = F))

paged_spectro(prep_static_ggspectro(f[2], savePNG = F, bgFlood = T, onlyPlotSpec = F, 
                                    specHeight = 4, specWidth = 10, colPal = c("white", "black"), 
                                    xLim = 4, crop = F))

paged_spectro(prep_static_ggspectro(f[3], savePNG = F, bgFlood = T, onlyPlotSpec = F, 
                                    specHeight = 4, specWidth = 10, colPal = c("white", "black"), 
                                    xLim = 4, crop = F))

paged_spectro(prep_static_ggspectro(f[4], savePNG = F, bgFlood = T, onlyPlotSpec = F, 
                                    specHeight = 4, specWidth = 10, colPal = c("white", "black"), 
                                    xLim = 4, crop = F))



# scrolling_spectro(wave = read_wave(f[1]), wl = 300, 
#                   t.display = 4, pal = reverse.gray.colors.1, 
#                   grid = FALSE, flim = c(1, 10), 
#                   width = 1000, height = 500, file.name = "JuPr1.mp4")
