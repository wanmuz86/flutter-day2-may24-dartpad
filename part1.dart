void main() {
  // 1) Implicit vs Explicit declaration
  
  double weight = 70; 
  // Explicit declaration
  // In Explicit declaration we specify the data type
  
  print(weight);
  
  var bmi = 0; 
  // Implicit declaration
  // We don't specify the data type
  // The compiler/dart imply/assume the data type based on initial value
  // In this case, 0 is implied as integer
  print(bmi);
  
  // Dart is a type safe language
  
  // bmi = weight; // bmi is int, weight is double, we cannot assign double into int 
  // In exercise, this happen when we try to calculate the bmi.. (the formula was in double)
  
  
  String name = "Muzaffar";
  print(name);
  
  int age = 30;
  print(age);
  double height = 170.5;
  print(height);
  
  bool hungry = true;
  print(hungry);
  
  
  /// List -> To define a collection of items/data (Array, ArrayList)
  
  var scores = [90,100,30,80,70]; // List<int>
  print(scores);

  print(scores[0]);
  
  scores.add(90); // Adding an item at the end of the list
  print(scores.length); // The number of item in a list 
  
  scores.insert(2,80); // Insert at index 2, item 80
  print(scores);
  
  scores.removeLast(); 
  print(scores);
  
  scores.removeAt(1);
  print(scores);
  
//   scores.remove(80); // Remove the first 80
//   print(scores);
  
  scores.removeWhere((item) => item >= 80); // remove all the 80
  print(scores);
  
  
  // Map <- Key value pairing item // (Object, HashMap, Dictionary, array associative)
  
  // Map<String,String>
  var info = {"name":"Muzaffar","profession":"trainer","location":"Bangi"};
  print(info);
  
  print(info["name"]!); // specify the key + !
  print(info["profession"]!);
  print(info["location"]!);
  
  // dynamic
  // This is the data type that can take any data type value
  
  dynamic anyType = "hello";
  print(anyType);
  anyType = 100;
  print(anyType);
  
  // If there is a scenario where you need to mix the data type, you may use dynamic
  // But using dynamic will make your code prone to data type related error, for example you have limited access to the autocorrect
  
  List<dynamic> mixItems = ["hello",30,true];
  print(mixItems);
  
  // It will be implied as Map<String,dynamic>
  var additionalInfo = {"name":"Muzaffar","age":30,"location":"Bangi","married":false};
  print(additionalInfo);
  
  
  // String interpolation
  
  // name, age and height
  
  print(name); // Bringing out the value right away  // Text(name);
  print("My name is $name"); // Concatenate to My name is ("My name is "+name);
  print("My name is $name, I am $age years old and my height is $height");
  print("My name is ${name.toUpperCase()}, I am ${age + 8} years old and my height is ${height.round()} cm"); // Concatenante + doing operation
  
 
  
  // TO DO ITEM List<Map<String,String>>
  
  List<Map<String,String>> todos = [{
    "name":"Navigation",
    "desc":"Basic Navigation, Pass forward, Pass back data",
    "place":"Online meeting"
  },
                                    {
                                      "name":"ListView",
                                      "desc":"Listview, ListTile, Card",
                                      "place":"Online Meeting"
                                    },
                                    {
                                      "name":"Lunch",
                                      "desc":"Grab something for lunch",
"place":"On place/ home"
                                    },
                                    {
                                      "name":"Shared Preference",
                                      "desc":"Local way of storing data",
                                      "place":"Online meeting"
                                    }
                                   
                                   ];
  
  print(todos);
  print(todos[0]);
  print(todos[0]["name"]!); // Name of the first item
  print("The description of second item is ${todos[1]["desc"]}");
  print("The name of third item is ${todos[2]["name"]} and the place is ${todos[2]["place"]}");
  
}
