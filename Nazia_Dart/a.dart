// void main()
// {
//     String? name;

//     name = "Alice";
//     name = null;  
//     print(name)
    
// }



// late String name;

// void main() {
//   name = "Nazia"; // Initialized later
//   print(name);
// }


// late String name = getName();

// String getName() {
//   print("Called");
//   return "Nazia";
// }

// void main() {
//   print("Start");
//   print(name);
// }



// void main() {
//   int a = 10;
//   int b = 3;

//   print(a + b);  
//   print(a - b);  
//   print(a * b);  
//   print(a / b);  
//   print(a ~/ b); 
//   print(a % b);  
// }


void main()
{
    var name = "Nazia";

    print(name is String); 
    print(name is int);    



    Object obj = "Hello";

    String s = obj as String;

    print(s);



    var sb = StringBuffer()
    ..write("Hello ")
    ..write("Dart");

    print(sb);
}

