## Data Science with R ## 
## Pertemuan 1 ## 
## Pengenalan R ##
## perintah dasar dalam bahasa pemrograman R ## 
# tanda pagar (#) digunakan untuk menuliskan komentar atau keterangan 
1+2

10:100

1:60

# R tidak dapat mengeksekusi perintah atau fungsi yang tidak dia kenali 
6 % 10

## OPERATOR ARITMATIKA ## 
# penjumlahan 
40 + 89

10 + 30 

# pengurangan 
1165 - 54

40 - 10 

# perkalian 
20 * 5 

# pembagian 
90 / 3

# perpangkatan
2 ^ 3

# modulus / modulo 
105 %% 10


## OPERATOR PENUGASAN ## 
# Variabel adalah nilai yang didefinisikan dengan nama yang spesifik 
# Variabel biasa disebut juga sebagai "objek"
nilai_bima <- 80
nilai_bima

nilai_beby <- 70
nilai_beby

80 -> nilai_bima 
nilai_bima 

70 -> nilai_bima 
nilai_bima 

80 -> nilai_bima 
nilai_bima 

nilai_bima = 80
nilai_bima

nilai_beby = 70
nilai_beby

# case sensitive dalam penulisan objek di R -> hasilnya akan eror 
# 1. untuk penulisan nama objek tidak boleh menggunakan tanda spasi
nilai bima <- 80

# 2. untuk penulisan nama objek tidak boleh diawali dengan angka
1nilai_bima < 80 


# 3. nama objek dibuat sekali saja, jangan gunakan nama yang sama dalam menulis objek 
nilai_bima <- 90

# 4. nama objek dalam R sensitif terhadap huruf kapital 
Nilai_bima <- 70

# gabungan operator aritmatika dan operator penugasan 
nilai_bima <- 80 
nilai_beby <- 70 
rata_rata_nilai_kelasA <- nilai_bima+nilai_beby/2
rata_rata_nilai_kelasA # ini adalah hasil yang salah 

rata_rata_nilai_kelasA <- (nilai_bima+nilai_beby)/2
rata_rata_nilai_kelasA # ini adalah hasil yang benar 

## Operator Perbandingan (Relasional) ##
perbandingan1 <- nilai_bima > nilai_beby
perbandingan1

perbandingan2 <- nilai_bima < nilai_beby
perbandingan2

perbandingan3 <- nilai_bima >= nilai_beby
perbandingan3  

perbandingan4 <- nilai_bima <= nilai_beby
perbandingan4  

perbandingan5 <- nilai_bima == nilai_beby
perbandingan5  

perbandingan6 <- nilai_bima != nilai_beby
perbandingan6


## Operator Logika ##
# data penjualan produk sabun di toko A dan toko B selama 6 hari 
toko_A <- c(10, 5, 7, 15, 3, 1)
toko_B <- c(15, 6, 3, 17, 10, 5)

# kapan penjualan pada toko A dan toko B melebihi target penjualan minimal 10 sabun 
toko_A >= 10 & toko_B >= 10

# kapan penjualan sabun pada salah satu atau kedua toko berhasil minimal 10?
toko_A >= 10 | toko_B >= 10


### PENGENALAN TIPE DATA ### 
# Mendefinisikan objek/variabel dengan tipe yang berbeda 
nama_siswa <- "Billy"
nilai_ujian <- 85
keterangan_lulus <- TRUE 

# cara mengecek tipe data itu dengan menggunakan fungsi class()
# mengecek tipe data nama_siswa
class(nama_siswa)

# mengecek tipe data nilai
class(nilai_ujian)

# cek tipe data keterangan_kelulusan
class(keterangan_lulus)


## STRUKTUR DATA ##
## Dataframe ##
# membuat data frame
nama <- c("Lily", "Billy", "Bara", "Cindy", "Bian")
jenis_kelamin <- c("P", "L", "L", "P", "L")
nilai_akhir <- c(80,90, 75, 65, 80)
kelulusan <- c(TRUE, TRUE, TRUE, FALSE, TRUE)

# membuat kerangka dataframe 
daftar_nilai_kelasA <- data.frame(nama, jenis_kelamin, nilai_akhir, kelulusan)
daftar_nilai_kelasA


# cara mengecek tipe data dalam dataframe 
str(daftar_nilai_kelasA)


# melihat dataset yang ada di R
data()

# memanggil dataframe bawaan R
iris

# melihat informasi data iris
?iris


# melihat gambaran umum dari dataset iris 
str(iris)
summary(iris)

# melihat nama kolom data iris 
colnames(iris)


AirPassengers
?AirPassengers
airpassengers


## fungsi if else 
tim_A <- 80
tim_B <- 90 

if(tim_A > tim_B) {print("Tim A Menang")} else {print("Tim A Kalah")}
ifelse(tim_A>tim_B, "Tim A Menang", "Tim B Menang")



# Penggunaaan Fungsi If Else Statement 
# If statement 
# mendefinisikan nilai mahasiswa 
nilai_siswa1 <- 80 
nilai_siswa2 <- 65 

# Apabila nilai siswa lebih dari sama dengan 80 maka dia nilainya A
# Penggunaan if statement 
if (nilai_siswa1 >=80) {
  print("nilainya A")
}

if (nilai_siswa2 >=80) {
  print("nilainya A")
}

# Apabila nilai siswa lebih dari sama dengan 80 maka dia nilainya A, tapi jika tidak, maka dia ujian ulang 
# else statement 
if (nilai_siswa1 >=80) {
  print("nilainya A")
} else {
  print("ujian ulang")
}

if (nilai_siswa2 >=80) {
  print("nilainya A")
} else {
  print("ujian ulang")
}


## Contoh Penggunaan If Else dari contoh studi kasus 
# Membuat dataframe 
Nama <- c("Ana", "Ina", "Putri", "Putra", "Siska")
Nilai_Tugas1 <- c(20, 50, 70, 85, 80)
Nilai_Tugas2 <- c(40, 60, 78, 80, 85)
UTS <- c(75, 80, 90, 100, 95)
UAS <- c(75, 85, 85, 100, 100)

daftar_nilai <- data.frame(Nama, Nilai_Tugas1, Nilai_Tugas2, UTS, UAS)
daftar_nilai

nilai_akhir <- (0.4*UAS) + (0.3*UTS) + (0.3*(Nilai_Tugas1+Nilai_Tugas2)/2)
nilai_akhir

# menambahkan kolom nilai_akhir 
daftar_nilai <- data.frame(Nama, Nilai_Tugas1, Nilai_Tugas2, UTS, UAS, nilai_akhir)
daftar_nilai


Hasil <- matrix(0, nrow = 5)
for (i in 1:5) {
  if (nilai_akhir [i] >= 80) { Hasil [i] = "A"}
  else if (nilai_akhir [i] >= 65 && nilai_akhir [i] < 80 ) { Hasil[i] = "B"}
  else if (nilai_akhir [i] >= 50 && nilai_akhir [i] < 65 ) { Hasil[i] = "C"}
  else {Hasil [i] = "D"}
}

Hasil 

daftar_nilai <- data.frame(Nama, Nilai_Tugas1, Nilai_Tugas2, UTS, UAS, nilai_akhir, Hasil)
daftar_nilai


# Cara membuat fungsi di dalam R 
## function 
volbalok <- function (p,l,t){
  vol = p*l*t
  cat("jika sebuah balok dengan panjang sebesar ",p, "cm, lebar sebesar",l,"cm, dan tinggi sebesar",t,"cm, maka volumenya yaitu", vol, "cm")
} 
volbalok(50,20,30)


volbalok <- function (p,l,t){
  vol = p*l*t
  cat("jika sebuah balok dengan panjang sebesar ",p, "cm, lebar sebesar",l,"cm, dan tinggi sebesar",t,"cm, maka volumenya yaitu", vol, "cm")
  return(vol)
} 
volbalok(50,20,30)


## while loop 
# mendefinisikan variabel
x = 1

# while loop
while ( x <= 15){
  # print variabel x
  print(x)
  # tambahkan nilai x sehingga proses terus berlangsung sampai x = 15 
  x <- x + 2
}

# break while loop 
nomor = 15 
while (nomor > 0) {
  if(nomor == 3) {
    print (paste("looping berhenti pada nomor = ", nomor))
    break
  }
  print(paste("looping nomor ke :   ", nomor))
  nomor = nomor - 1
}

## Fungsi Family 
# menghitung mean/rata-rata dari data angka
angka <- list(angka1=c(1:10), angka2=c(5:15), angka3=c(11:20))

# menuliskan fungsi lapply()
lapply(angka, mean)

# menuliskan fungsi sapply()
sapply(angka, mean)

# menuliskan fungsi vapply()
vapply(angka, mean) # hasilnya akan error 

vapply(angka, summary, c(mean=0, median = 0)) # hasilnya akan error

vapply(angka, mean, numeric(1))
vapply(angka, summary, numeric(6))


# mengidentifikasikan vektor
fruits_regex <- c("orange", "grape", "mango", "apple", "banana")

# fungsi grepl(pattern = <regex>, x = <string>)
grepl(pattern = "o", x = fruits_regex)
grepl("o", fruits_regex)

# fungsi grepl untuk mencari pernyataan dg huruf depan o
grepl(pattern = "^o", x = fruits_regex)

# fungsi grep mencari kata dengan huruf terakhir o
grepl(pattern = "o$", x = fruits_regex)

# fungsi which(grepl(pattern = <regex>, x = <string>))
which(grepl(pattern = "o", x = fruits_regex))

# fungsi sub()
sub(pattern = "o", replacement= "s", x = fruits_regex)

# fungsi gsub
gsub(pattern = "a|m", replacement= "-", x = fruits_regex)

toupper(fruits_regex)

library(tidyverse)
str_to_title(fruits_regex)













