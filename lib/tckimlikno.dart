library tckimlikno;

void isTckimlikno(int kimlikno) {
  String kimlik = kimlikno.toString();

  if (kimlik.length != 11 || (kimlik[0]) == 0) {
    print("11 haneli geçerli bir kimlik numarası giriniz !!!");
  } else {
    num tek = int.parse(kimlik[0]) +
        int.parse(kimlik[2]) +
        int.parse(kimlik[4]) +
        int.parse(kimlik[6]) +
        int.parse(kimlik[8]);

    num cift = int.parse(kimlik[1]) +
        int.parse(kimlik[3]) +
        int.parse(kimlik[5]) +
        int.parse(kimlik[7]);

    num kimlik10 = ((tek * 7) - cift) % 10;
    num kimlik11 = ((tek + cift + int.parse(kimlik[9])) % 10);

    if (kimlik10 == int.parse(kimlik[9]) && kimlik11 == int.parse(kimlik[10])) {
      print("Geçerli bir kimlik numarası girdiniz.");
    } else {
      print("Geçerli bir kimlik numarası giriniz !!!");
    }
  }
}
