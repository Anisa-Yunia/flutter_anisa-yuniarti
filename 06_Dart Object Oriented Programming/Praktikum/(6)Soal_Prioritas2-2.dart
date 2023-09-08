class Course {
  var judul, deskripsi;
  Course(this.judul, this.deskripsi);
}
class Student {
  var nama, kelas;
  List<Course> daftarCourse = [];

  Student(this.nama, this.kelas);

  void tambahCourse(Course pelajaran){
    daftarCourse.add(pelajaran) ;
    print('${pelajaran.judul} berhasil di tambahkan ke daftar course');
  }
  void hapusCourse(Course Pelajaran){
    if (daftarCourse.contains(Pelajaran)) {
      daftarCourse.remove(Pelajaran);
      print('${Pelajaran.judul} berhasil dihapus dari daftar course');
    }else{
      print('${Pelajaran.judul} tidak ada dalam daftar course');
    }
  }
  void lihatDaftarCourse() {
    if (daftarCourse.isEmpty) {
      print('Daftar course kosong.');
    } else {
      print('Daftar course ${nama}:');
      for (var pelajaran in daftarCourse) {
        print('${pelajaran.judul} - ${pelajaran.deskripsi}');
      }
    }
  }
}

void main() {
  // Membuat beberapa objek course
  Course course1 = Course('Matematika', 'Materi tentang matematika');
  Course course2 = Course('Bahasa Inggris', 'Materi tentang bahasa Inggris');

  // Membuat objek student
  Student student = Student('John', 'XII');

  // Menambahkan course ke daftar course student
  student.tambahCourse(course1);
  student.tambahCourse(course2);

  // Melihat daftar course yang dimiliki oleh student
  student.lihatDaftarCourse();

  // Menghapus course dari daftar course student
  student.hapusCourse(course1);

  // Melihat daftar course yang dimiliki oleh student setelah penghapusan
  student.lihatDaftarCourse();
}





