# Example sensor readings (60 readings = 1 hour, 1 reading per minute)
temperature <- c(28, 29, 30, 31, 32, 33, 29, 28, 27, 30, 31, 32, 34, 35, 33,
                 31, 30, 29, 28, 27, 26, 28, 29, 30, 31, 32, 33, 34, 30, 29,
                 28, 27, 31, 32, 33, 34, 35, 36, 34, 33, 32, 31, 29, 28, 27,
                 26, 28, 29, 30, 31, 32, 33, 29, 28, 27, 30, 31, 32, 33, 34)

humidity <- c(45, 44, 43, 42, 41, 39, 38, 37, 36, 40, 41, 42, 39, 38, 37,
              36, 35, 34, 33, 32, 31, 35, 36, 37, 38, 39, 40, 41, 42, 43,
              44, 45, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 41, 42, 43,
              44, 45, 46, 40, 39, 38, 37, 36, 45, 44, 43, 42, 41, 40, 39)

pressure <- c(1012, 1013, 1011, 1010, 1012, 1014, 1015, 1013, 1012, 1011,
              1010, 1012, 1013, 1014, 1015, 1016, 1014, 1013, 1012, 1011,
              1010, 1012, 1013, 1014, 1015, 1016, 1017, 1015, 1014, 1013,
              1012, 1011, 1010, 1012, 1013, 1014, 1016, 1017, 1016, 1015,
              1014, 1013, 1012, 1011, 1010, 1012, 1013, 1014, 1015, 1016,
              1017, 1015, 1014, 1013, 1012, 1011, 1010, 1012, 1013, 1014)

# Time vector (minutes)
time <- 1:length(temperature)

# 1) Calculate the average reading for each sensor
avg_temp <- mean(temperature)
avg_humidity <- mean(humidity)
avg_pressure <- mean(pressure)

cat("Average Temperature:", avg_temp, "°C\n")
cat("Average Humidity:", avg_humidity, "%\n")
cat("Average Pressure:", avg_pressure, "hPa\n\n")

# 2) Identify time intervals where temperature > 30 and humidity < 40
condition_minutes <- which(temperature > 30 & humidity < 40)

cat("Minutes where Temperature > 30°C and Humidity < 40%:\n")
print(condition_minutes)
cat("\n")

# 3) Plot the sensor readings over time
par(mfrow = c(3, 1))

plot(time, temperature, type = "l",
     main = "Temperature Over Time", xlab = "Time (minutes)", ylab = "Temperature (°C)")

plot(time, humidity, type = "l",
     main = "Humidity Over Time", xlab = "Time (minutes)", ylab = "Humidity (%)")

plot(time, pressure, type = "l",
     main = "Pressure Over Time", xlab = "Time (minutes)", ylab = "Pressure (hPa)")
