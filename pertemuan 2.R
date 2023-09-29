## Pertemuan kedua ## 
## Preprocessing Data ## 
# cara install packages #
install.packages("tidyverse")

# Memanggil packages #
library(tidyverse)

# melihat dataset di dalam R
data()

flights
library(nycflights13)

diamonds
?diamonds # melihat informasi data 

unique(diamonds$color) # melihat nilai unik data 

colnames(diamonds) # untuk melihat kolom data 

# melihat gambaran umum data 
str(diamonds)
glimpse(diamonds)

# contoh cara mengubah tipe data pada struktur dataframe 
diamonds$carat <- as.numeric(diamonds$carat)

# contoh kasus masalah data yang mengandung spasi 
angka1 <- c("12", "13.98", "12.43 21")
nama <- c("a", "b", "c")
contoh <- data.frame(nama, angka1)
contoh 

contoh$angka1 <- as.numeric(contoh$angka1) # nilai yang mengandung spasi akan berubah menjadi NA atau data kosong 

contoh$angka1 <- gsub(" ", "", contoh$angka1) 


# untuk melihat statistik data 
summary(diamonds)

# memilih variabel yang dibutuhkan saja
diamonds_selected <- select(diamonds, carat, cut, color, price)
diamonds_selected

diamonds_selected <- diamonds %>% 
  select(carat, cut, color, price)

# Melihat data berlian dengan pemotongan yang Ideal saja 
ideal_diamonds <- diamonds_selected  %>% 
  filter(cut == "Ideal")
ideal_diamonds

# menggabungkan dua fungsi 
ideal_diamonds_selected <- diamonds %>% 
  select(carat, cut, color, price) %>% 
  filter(cut == "Ideal")
ideal_diamonds_selected


# Misalnya kita ingin melihat data berlian dengan pemotongan yang Ideal dan Warna Berlian yang paling Best (D) 
ideal_best_color <- diamonds_selected %>% 
  filter(cut == "Ideal" & color == "D")
ideal_best_color


# mengurutkan berlian berdasarkan harga yang terendah ke tertinggi
diamonds_selected %>%
  arrange(price)

diamonds_selected %>%
  arrange(desc(price))

# mengurutkan berlian dengan kualitas ideal dari harga tertinggi
diamonds_selected %>%
  filter(cut == "Ideal") %>%
  arrange(desc(price))

# menambahkan kolom volume dengan asumsi bentuknya adalah limas 
diamonds_new <- diamonds %>% 
  mutate(volume = 1/3*x*y*z)


# menghitung rata – rata harga berlian
diamonds_selected %>% 
  summarise(average_price = mean(price))

# menghitung rata – rata harga berlian dengan kualitas pemotongan ideal (PR) 
diamonds_selected %>%
  filter(cut == "Ideal" | cut == "Very Good") %>% 
  summarise(average_price = mean(price))

diamonds_selected %>%
  filter(cut %in% c("Ideal", "Very Good")) %>% 
  summarise(average_price = mean(price))

# mengelompokkan rata – rata harga berlian berdasarkan kualitas pemotongan
diamonds_selected %>% 
  group_by(cut) %>% 
  summarise(average_price = mean(price)) %>% 
  arrange(desc(average_price))

# mengelompokkan harga tertinggi berlian berdasarkan kualitas pemotongan
diamonds_selected %>% 
  group_by(cut) %>% 
  summarise(max_price = max(price)) %>% 
  arrange(desc(max_price))

diamonds_selected %>% 
  group_by(cut) %>% 
  summarise(max_price = max(price), average_price = mean(price))


# mengecek data missing atau data kosong 
is.na(diamonds)

sum(is.na(diamonds)) # melihat jumlah data NA 
colSums(is.na(diamonds))

# melihat jumlah data NA pada kolom carat 
diamonds %>% 
  filter(is.na(carat))

## melihat data kosong pada data flights 
flights
sum(is.na(flights)) # melihat jumlah data kosong 
colSums(is.na(flights)) # melihat jumlah data kosong berdasarkan kolom 
colMeans(is.na(flights)) # melihat presentase data kosong berdasarkan kolom 

# karena datanya kurang dari 5% maka akan dicoba dengan nmenghapus data yang mengandung NA
flights <- flights %>% 
  na.omit(flights)




