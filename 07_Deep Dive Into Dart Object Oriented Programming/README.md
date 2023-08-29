# Deep Dive Into Dart Object Oriented Programming

## Constructor
contructor merupakan method yang dijalankan saat pembuatan object. dapat menerima parameter, tidak memiliki return, Nama sama dengan nama class


## Inheritance
Inheritance dapat diartikan warisan. konsep inheritance yang dimaksud adalah membuat class baru dengan memanfaatkan class yang sudah ada, bertujuan agar kemapuan class yang sudah ada dapat dimiliki oleh class baru

#### Method Overriding
Menulis ulang method yang ada pada super class, bertujuan agar memiliki method yang sama dengan proses yang berbeda

#### Melakukan Overriding
- dilakukan pada class yang melakukan inheritance
- method sudah ada pada class induk
- method ditulis ulang seperti membuat method baru pada class anak
- tambahkan tanda @override dibaring sebelum method dibuat

## Interface
- berupa class
- menunjukkan method apa saja yang ada pada suatu class
- seluruh method wajid di override
- digunakan dengan menggunakan implements

#### Menggunakan Interface 
- sekilas mirip inheritance
- pada class yang melakukan implements, wajid melakukan override semua method yang ada pada class induk

## Abstract Class
- Berupa class abstrak
- menunjukkan method apa saja yang ada pada suatu class
- digunakan dengan menggunakan extands
- tidak dapat dibuat object
- tidak semua method harus di override
## polymorphism
- Kemapuan data berubah menjadi bentuk lain
- Tipe data yang dapat digunakan oleh super class
- dapat dilakukan pada class dengan extends atau implements

## Generic
- Dapat digunakan pada class atau fungsi
- memberikan kemampuan agar dapat menerima data dengan tipe yang berbeda
- tipe data yang diingikan, ditentukan saat membuat class atau menjalankan fungsi

