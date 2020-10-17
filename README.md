# kimlikno
- Tc Kimlik Numarasının geçerli olup olmadığını kontrol eden dart lang paketi.
- https://pub.dev/packages/tckimlikno

# How to work it calculate tc id

- tc id must be 11 digits.
- first 9 digits give 10th digit. 
- formule (add odd digits 1,3,5,7,9) (add even digits 2,4,6,8)
- digit10 = ((total-odd * 7) - total-even) % 10;
- first 10 digits give 11th digit.
-  digit11 = ((total-odd + total-even + digit10) % 10)
- example (10000000146)
- 1 0 0 0 0 0 0 0 1
- 1 / 0 / 0 / 0 / 1 // total-odd 2
- / 0 / 0 / 0 / 0  // total-even 0
- digit10 = ((2 * 7) - 0) % 10; => 4
- digit11 = ((2 + 0 + 4) % 10) => 6

# Installing

1. Add this to your package's pubspec.yaml file:
```
dependencies:
  tckimlikno: ^0.1.0
  ```
2.Install it
You can install packages from the command line: with pub:
```
$ pub get
```
with Flutter:
```
$ flutter pub get
```
Alternatively, your editor might support pub get or flutter pub get. Check the docs for your editor to learn more.

3.Import it Now in your Dart code, you can use:
```
import 'package:tckimlikno/tckimlikno.dart';
```
# License
- This project is licensed under the MIT License