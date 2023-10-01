# Flutter State Management

### Pengertian State

data yang dapat dibaca saat pembuatan widget, dapat berubah saat widget sedang aktif, hanya dimiliki oleh stateful

State adalah data yang berubah secara dinamis.

- kenapa perlu global state ?

  - agar anatara widget dapat memanfaatkan state yang sama dengan mudah

- memanfaat state
  - dibuat sebagai property dari class
  - digunakan pada widget saat build

### Global State

state biasa yang dapat digunkan pada seluruh widget

- provider
  - state management
  - perlu di install agar dapat digunakan
