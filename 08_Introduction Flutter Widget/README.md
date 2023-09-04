# Introduction Flutter Widget
## Perkenalan Flutter
#### Apa sih Itu Flutter?
Flutter adalah sebuah framework yang dibangun menggunakan bahasa pemrograman Dart, dan dibuat oleh Google. Alat Pengembangan antarmuka pengguna yang digunakan membuat aplikasi mobile, desktop, dan web

#### Keunggulan Flutter
1. Mudah digunakan dan dipelajari
1. Produktivitas tinggi
1. Dokumentasi lengkap
1. Komunitas yang berkembang

## Widget
Berupa class, digunakan untuk membentuk UI, dapat terdiri dari beberapa widget lainnya
#### Jenis Widget 
1. Stateless Widget
    - Tidak bergantung pada perubahan data
    - Hanya fokus pada tampilan
    - dibuat dengan extands pada class statelessWidget
1. Stateful Widget
    - mengutamakan perubahan data 
    - dibuat dengan extands pada class statefulWidget
    - 1 widget menggunakn 2 class(widget dan state)
1. Built in Widget
    - widget yang dapat langsung digunakan
    - sudah terinstall bersama flutter
        - Appbar : Membentuk bar aplikasi yang terletak pada bagian atas halaman 
        - MaterialApp : Membangun aplikasi dengan desain material
        - scaffold : membentuk sebuah halaman
        - Text : Menampilkan teks