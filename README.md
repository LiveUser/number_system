# number_system

A package to extend the functionality to convert between number systems

Hecho en 🇵🇷 por Radamés J. Valentín Reyes

## Importing library

~~~dart
import 'package:number_system/number_system.dart';
~~~

## Note

Rather than the functionality being provided as normal functions it is provided as [Extensions](https://dart.dev/guides/language/extension-methods) so that functions are available through dot notation on valid types.

## Examples

### Hexadecimal to decimal

Returns the integer value of a hexadecimal String. Extension for String type.

~~~dart
String testString = "#f32";
print("$testString = ${testString.hexToDEC()}");
~~~

### Decimal to hexadecimal

Returns a String representing the integer in hexadecimal. Extension for int type.

~~~dart
int testInteger = 1667;
print("$testInteger in hex is ${testInteger.decToHex()}");
~~~

#### Desired digits test on decimal to hexadecimal

Decimal to hexadecimal example containing the optional parameter called desired digits. If the resulting hexadecimal value is smaller than the desired digits value 0s will be added to the left side of the number to return a number with the desired length. Extension for int type.

~~~dart
int testInteger = 1667;
print("$testInteger in hex is ${testInteger.decToHex(4)}");
~~~

### Decimal to octal

Calculates and returns the octal value of this integer

~~~dart
int testInteger = 1667;
print("$testInteger in octal is ${testInteger.decToOctal()}");
~~~

### Octal to decimal
Calculate and return the decimal value of this octal integer

~~~dart
int testInteger = 3203;
print("$testInteger in decimal is ${testInteger.octalToDec()}");
~~~

### Binary to decimal
Calculate and return the decimal value of this binary number(string)

~~~dart
String bin = "10";
print(bin.binaryToDec());
~~~

### Binary to decimal
Calculate and return the binary value of this integer

~~~dart
int dec = 5;
print(dec.decToBinary());
~~~

------------------------------------------------------------
## Contribute/donate by tapping on the Pay Pal logo/image

<a href="https://www.paypal.com/paypalme/onlinespawn"><img src="https://www.paypalobjects.com/webstatic/mktg/logo/pp_cc_mark_74x46.jpg"/></a>

------------------------------------------------------------

## References

- https://makeandhack.blogspot.com/2019/12/hexadecimal-to-decimal.html
- https://www.rapidtables.com/convert/number/hex-to-decimal.html
- https://www.binaryhexconverter.com/hex-to-decimal-converter
- https://www.rapidtables.com/convert/number/decimal-to-octal.html
