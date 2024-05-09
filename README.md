<h1 align="center">👉 List Of Map👈</h1>

# 1. What is Duration class & Future.delayed() constructor with Example ?
```
  import 'dart:io';

void main()
{
  Map resume = 
  {
    'name' : Null,
    'age' : Null,
    'college name' : Null,
    'mobile' : Null,
    'email' : Null,
    'address' : Null,
    'city' : Null,
    'gender' : Null,
    'skills' : Null,
    'courses' : Null,
  };

  for(String key in resume.keys)
  {
    stdout.write('Entre the keys ${key} : \n');
    resume[key] =stdin.readLineSync();
  }

   for(String key in resume.keys)
  {
    stdout.write("${key} : ${resume[key]}");
  }
}
```
# 2. What is List and Map ? (Defination,example,generics, predefine methods withn examples.)
#1.List
Ans -> A List in Flutter is an ordered collection of elements of the same type.

#Example
```
void main() {
  List<String> myList = ['yashu', 'Hiren', 'yash'];

  
  myList.add('hello');


  print('Element at index 0: ${myList[0]}');

  
  for (String name in myList) {
    print(name);
  }
}
```
```
void main() {
  List<String> name = ['yashu', 'hiren', 'Sanju'];

  int length = name.length;

  print('Number of name: $length'); 
}
```
#2.Map
Ans ->A Map in Flutter is an unordered collection of key-value pairs where each key is unique.
#Example
```
void main() {
  Map<String, int> myMap = {'Yashu': 10, 'Hiren': 5, 'Sanju': 8};

  myMap['meet'] = 12;

  print('Quantity of Map: ${myMap['Yashu']}');

  myMap.forEach((key, value) {
    print('Name: $key, Quantity: $value');
  });
}
```
#3 Generic
Ans -> Dart's Map class also supports generics, allowing you to specify the types of keys and values that the map can hold.

<h1 align="center">👉 Drawer page 👈</h1>
<div align="center">
  <img height="550"  src="https://github.com/YashuPatel1724/Resume_Daily_Task/assets/148859965/ced7f278-45ec-4404-86b5-f2f1d12971b5" />
</div>
<div align="center">
<a href="https://github.com/YashuPatel1724/Resume_Daily_Task/tree/master/lib/Drawer">-> 📂 Go To Dart File 📂 <-</a>
</div>



<h1 align="center">👉 Login Page 👈</h1>

<h3 align="center">Login Page Video </h3>
<div align="center">
 <video src="https://github.com/YashuPatel1724/Resume_Daily_Task/assets/148859965/80b866a6-587b-432c-a30c-c6f0cbc8ca38"> 
</video>
</div>

<h3 align="center">1. Login Page </h3>

<h1 align="left"></h1>

<div align="center">
  <img height="550"  src="https://github.com/YashuPatel1724/Resume_Daily_Task/assets/148859965/d8855e2b-9730-4570-81d2-7c1b1d6bd198" />
  <img height="550"  src="https://github.com/YashuPatel1724/Resume_Daily_Task/assets/148859965/866d69f7-79a4-44a9-8d24-53cbb462166e" />
</div>
<div align="center">
<a href="https://github.com/YashuPatel1724/Resume_Daily_Task/tree/master/lib/Login%20Page">-> 📂 Go To Dart File 📂 <-</a>
</div>
