# MVVM Architecture

### Apa itu MVVM Architecture?

Model - View - View Model
Memisahkan antara logic dengan tampilan (view) ke dalam view Model

### Keuntungan yang didapat

1. Reusability : Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan viewModel yang sama
1. Maintainbility : Mudah dirawat karena pekerjaan terkait tampilan tidak tetumpuk bersama logic
1. Testability : Pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian

### Melakukan MVVM

- Struktur Direktori
  - Model Memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data
  - Tiap Screen diletakkan dalam sebuah direktori yang didalamnya terdapat View dan ViewModel
- Model
  - Bentuk data yang akan digunakan, dibuat dalam bentuk class
  - Data-data yang dimuat, diletakan pada property
- ViewModel
  - Menyimpan data-data dan logic
  - jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga
