void main() {

  // A variable in Flutter cannot be declared as null
  // It needs to be initialized or provided a way to be initalized (via constructor/initializer)
  
  // If i want to declare a nullable variable.. I will use ? to indicate that it is nullable
  
 String? name;
  
  print(name);
  name = "Muzaffar";
  // A nullable variable, need to be taken care of when we are trying to access the value
  // if else
  
if (name != null){
  print(name);
}
  
  
  // ?? (Null aware operation)
  // In the scenario where you do not need to modify the value you can use ??
  // This is normally used inside a widgetm eg Text
  
  print(name ?? "");  // (? : ) - ??
  // If name is not equal to null , show name, if not show ""
  
  // Force unwrap
  // If you are SURE that the nullable variable has a value / will NEVER be null, you can use !
  
  print(name!);  
  
  
  // A Map will always have Nullable data type as value <key,value>
  
  // Map<String,String> = The value is always nullable
  var info = {"name":"Muzaffar", "location":"Bangi", "email":"wanwan@gmail.com"};
  
  print(info["occupation"]); // This needs to return null
    
}
