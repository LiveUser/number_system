import 'package:test/test.dart';
import 'package:number_system/number_system.dart';

void main() {
  test("Hex to dec test", (){
    String testString = "#f32";
    print("$testString = ${testString.hexToDEC()}");
  });
  test("Dec to hex test", (){
    int testInteger = 1667;
    print("$testInteger in hex is ${testInteger.decToHex()}");
  });
  test("Desired digits test on dec to hex", (){
    int testInteger = 1667;
    print("$testInteger in hex is ${testInteger.decToHex(4)}");
  });
  test("Decimal to octal test", (){
    int testInteger = 1667;
    print("$testInteger in octal is ${testInteger.decToOctal()}");
  });
  test("Octal to decimal test", (){
    int testInteger = 3203;
    print("$testInteger in decimal is ${testInteger.octalToDec()}");
  });
  test("Binary to decimal", (){
    String bin = "10";
    print(bin.binaryToDec());
  });
}