library(leaflet)
set.seed(2016-04-25)
df <- data.frame(lat = runif(5, min = 39.2, max = 39.3),
                 lng = runif(5, min = -76.6, max = -76.5))
map <- df %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers() %>% addCircleMarkers(weight = 1, radius = (df$lat-39)^2*100) %>%
  addRectangles(lat1 = 39.2858, lng1 = -76.5595, 
                lat2 = 39.3890, lng2 = -76.6625)
  



print(map)

##*********************************************************
# my_map <- leaflet()  %>%   addMarkers(lat=39.2980803, lng=-76.5898801, 
#              popup="Jeff Leek's Office") 
# print(my_map)

##*********************************************************
# hopkinsIcon <- makeIcon(
#   iconUrl = "http://brand.jhu.edu/content/uploads/2014/06/university.shield.small_.blue_.png",
#   iconWidth = 31*215/230, iconHeight = 31,
#   iconAnchorX = 31*215/230/2, iconAnchorY = 16
# )
# 
# hopkinsLatLong <- data.frame(
#   lat = c(39.2973166, 39.3288851, 39.2906617),
#   lng = c(-76.5929798, -76.6206598, -76.5469683))
# 
# map <- hopkinsLatLong %>% 
#   leaflet() %>%
#   addTiles() %>%
#   addMarkers(icon = hopkinsIcon)
# 
# print(map)