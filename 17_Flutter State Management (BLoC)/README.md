# Flutter State Management (BloC)

#### Declarative UI

Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini

- state
  - state adalah ketika sebuah widget sedang aktid dan widget tersebut menyimpan data di memori
  - flutter akan membangun ulang UI nya ketika ada state atau data yang berubah
  - ada 2 jenis state dalam flutter : ephemeral state dan app state
    - ephemeral state :
      - digunakan ketika tidak ada bagian lagian pada widget tree yang membutuhkan untuk mengakses data widget nya, contoh page view, bottom navigatot bar, switch button
      - tidak perlu state management yang kompleks
      - hanya membutuhkan stateful Widget dengan menggunakan fungsi setState()
    - App State :
      - digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya login info, pengaturan preferensi pengguna, keranjang belanja yang berbeda screen

##### pendekatan State Management

- setState lebih cocok penggunaan nya pada ephemeral state
- provider lebih coock untuk penggunaan state management yang lebih kompleks seperti app state.
- BLoC lebih cocok menggunakan pola stream/observable, unutk memisahkan UI dengan bisnis logicnya
