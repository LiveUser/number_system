library number_system;
import 'dart:math';

//Extensions
extension HexToDEC on String{
  ///Returns this integer's value of a hexadecimal String
  int hexToDEC(){
    String hex = this.toLowerCase();
    int dec = 0;
    if(hex.isEmpty){
      throw "Empty string cannot be converted to decimal";
    }
    //Remove the # if the number starts with it
    if(hex.startsWith("#")){
      hex = hex.replaceFirst("#","");
    }
    //Convert from hex to dec
    for(int n = (hex.length - 1); 0 <= n; n--){
      String thisPositionLetter = hex.substring(n, n + 1);
      int thisExponent = (n - (hex.length - 1)).abs();
      dec += (_hexToEquivalentDecValue(thisPositionLetter) * pow(16, thisExponent)).toInt();
    }
    return dec;
  }
}
extension DecToHex on int{
  ///Returns a String representing this integer in hexadecimal
  String decToHex([
    ///Amount of desired digits. If the resulting hexadecimal value is smaller than the desired digits value 0s will be added to the left side of the number to return a number with the desired length
    int? desiredDigits,
    ]){
    if(this < 0){
      throw "Only positive integers can be converted into hexadecimal form using this library";
    }
    String resultingHex = "";
    int divisionResult = this;
    do{
      resultingHex = _decToEquivalentHexcValue(divisionResult % 16)  + resultingHex;
      divisionResult = (divisionResult / 16).floor();
    }while(divisionResult != 0);
    if(desiredDigits != null){
      //Add the required digits
      for(int  i = 0; i < (desiredDigits - resultingHex.length); i++){
        resultingHex = "0" + resultingHex;
      }
    }
    //Add the # symbol
    resultingHex = "#" + resultingHex;
    //Return the resulting value
    return resultingHex;
  }
}
extension OctalPlayground on int{
  ///Calculate and return the octal integer value of this integer
  int decToOctal(){
    if(this < 0){
      throw "Only positive integers can be converted into octal form using this library";
    }
    //Use a process similar to converting to hex but with base 8(octal)
    String octal = "";
    int divisionResult = this;
    do{
      octal = (divisionResult % 8).toString() + octal;
      divisionResult = (divisionResult / 8).floor();
    }while(divisionResult != 0);
    return int.parse(octal);
  }
  ///Calculate and return the decimal value of this octal integer
  int octalToDec(){
    if(this < 0){
      throw "Only positive integers can be converted from octal into dec using this library";
    }
    String octal = this.toString();
    int dec = 0;
    for(int n = (octal.length - 1); n >= 0; n--){
      int thisPositionLetter = int.parse(octal.substring(n, n + 1));
      if(thisPositionLetter < 0 || 7 < thisPositionLetter){
        throw "Integer cannot be interpreted as octal. It must be composed of characters that are within the range of 0 - 7.";
      }
      int thisExponent = (n - (octal.length - 1)).abs();
      dec += (thisPositionLetter * pow(8, thisExponent)).toInt();
    }
    return dec;
  }
}
//Required functions and variables
int _hexToEquivalentDecValue(String hex){
  switch (hex) {
    case "0":{
      return 0;
    }
    case "1": {
      return 1;
    }
    case "2": {
      return 2;
    }
    case "3": {
      return 3;
    }
    case "4": {
      return 4;
    }
    case "5": {
      return 5;
    }
    case "6": {
      return 6;
    }
    case "7": {
      return 7;
    }
    case "8": {
      return 8;
    }
    case "9": {
      return 9;
    }
    case "a": {
      return 10;
    }
    case "b": {
      return 11;
    }
    case "c": {
      return 12;
    }
    case "d": {
      return 13;
    }
    case "e": {
      return 14;
    }
    case "f": {
      return 15;
    }
    default: {
      throw "String is not a hex. It contains invalid characters.";
    }
  }
}
String _decToEquivalentHexcValue(int dec){
  switch (dec) {
    case 0:{
      return "0";
    }
    case 1: {
      return "1";
    }
    case 2: {
      return "2";
    }
    case 3: {
      return "3";
    }
    case 4: {
      return "4";
    }
    case 5: {
      return "5";
    }
    case 6: {
      return "6";
    }
    case 7: {
      return "7";
    }
    case 8: {
      return "8";
    }
    case 9: {
      return "9";
    }
    case 10: {
      return "a";
    }
    case 11: {
      return "b";
    }
    case 12: {
      return "c";
    }
    case 13: {
      return "d";
    }
    case 14: {
      return "e";
    }
    case 15: {
      return "f";
    }
    default: {
      throw "String is not a hex. It contains invalid characters.";
    }
  }
}
extension BinaryToDec on String{
  int binaryToDec(){
    int total = 0;
    for(int i = this.length - 1; 0 <= i; i--){
      String bit = this.substring(i,i+1);
      int bitPosition = length - 1 - i;
      if(bit == "1"){
        total += pow(2, bitPosition).toInt();
      }else if(bit =="0"){
        //Do nothing
      }else{
        throw "In binary only 1s or 0s are valid";
      }
    }
    return total;
  }
}
//TODO: DECTOBinary
extension DecToBinary on int{
  String decToBinary(){
    //Generate the binary number
    String binaryResult = "";
    //Position of the biggest number that fits inside the number
    int biggestNumberThatFits = 0;
    while((pow(2, biggestNumberThatFits) < this)){
      biggestNumberThatFits++;
    }
    int numberToConvert = this;
    //Convert to binary
    for(int i = biggestNumberThatFits; 0 <= i; i--){
      if((numberToConvert - pow(2, i)) >= 0){
        numberToConvert -= pow(2, i).toInt();
        binaryResult = "${binaryResult}1";
      }else{
        binaryResult = "${binaryResult}0";
      }
    }
    //Delete the firs zero if it exists(was added by this process)(it is unecessary)
    if(binaryResult.length > 1 && binaryResult.substring(0,1) == "0"){
      binaryResult  = binaryResult.substring(1);
    }
    //Return the result
    return binaryResult;
  }
}