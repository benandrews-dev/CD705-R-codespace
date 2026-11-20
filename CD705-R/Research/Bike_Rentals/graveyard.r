


```{r}
# Store the GPS coordinates of the bike stations in a separate data frame
bike_stations <- unique(bike_rentals[, c("start_station_name", "start_lat", "start_lng")])
colnames(bike_stations) <- c("station_name", "latitude", "longitude")

# Make a map of the bike stations using the leaflet package
library(leaflet)
leaflet(data = bike_stations) %>%
  addTiles() %>%
  addCircleMarkers(~longitude, ~latitude, popup = ~station_name, radius = 5, color = "blue", fillOpacity = 0.7)
```

