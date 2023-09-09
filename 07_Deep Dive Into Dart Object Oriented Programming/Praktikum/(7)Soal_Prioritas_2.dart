abstract class Matematika {
  int hasil(int x, int y);
}

class KelipatanPersekutuanTerkecil implements Matematika {
  @override
  int hasil(int x, int y) {
    if (y == 0) {
      return x;
    } else {
      return hasil(y, x % y);
    }
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  @override
  int hasil(int x, int y) {
    return (x * y) ~/ KelipatanPersekutuanTerkecil().hasil(x, y);
  }
}

void main() {
  KelipatanPersekutuanTerkecil kp = KelipatanPersekutuanTerkecil();
  print("Kelipatan Persekutuan Terkecil: ${kp.hasil(12, 18)}");
  
  FaktorPersekutuanTerbesar fp = FaktorPersekutuanTerbesar();
  print("Faktor Persekutuan Terbesar: ${fp.hasil(12, 18)}");
}
