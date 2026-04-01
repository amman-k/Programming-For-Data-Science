
install.packages("leaflet")

library(leaflet)

# Coordinates for Katpadi region
lat <- 12.9692
lng <- 79.1383

# 1 & 2: Initialize map and set view
m <- leaflet() %>%
  addTiles() %>%
  setView(lng = lng, lat = lat, zoom = 13)

m

# 3: Add marker with popup
m <- m %>%
  addMarkers(lng = lng, lat = lat,
             popup = "Katpadi Region")

m

# 4: Add customized circle marker
m <- m %>%
  addCircleMarkers(
    lng = lng + 0.01,
    lat = lat + 0.01,
    color = "blue",
    radius = 8,
    label = "Nearby Location"
  )

m
