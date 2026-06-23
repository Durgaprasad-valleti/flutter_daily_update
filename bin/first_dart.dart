import 'dart:io';
import 'package:http/http.dart' as http;

// // main() {
// //   stdout.write("Enter age :");
// //   int age = int.parse(stdin.readLineSync()!);
// //   print("Your age is $age");
// // }




const version = '0.0.1'; 
void main(List<String> arguments){
  if (arguments.isEmpty||arguments.first == 'help'){
    printUsage();
  }
  else if (arguments.first == 'version'){
    print('Dart CLI version $version');
  }
  else if (arguments.first == 'search'){
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  }
  else{
    printUsage();
  }
}

Future<String> getWikipediaArticle(String articleTitle) async{
  final url = Uri.https(
    'en.wikipedia.org',
    'api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url);

  if (response.statusCode == 200){
    return response.body;
  }
  return 'Error fetching article "$articleTitle". Status code : ${response.statusCode}';
}

void printUsage(){
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}
void searchWikipedia(List<String>? arguments) async{
  final String articleTitle;
  if (arguments == null || arguments.isEmpty){
    print('Please provide an article title');
    articleTitle = stdin.readLineSync() ?? '';
  }
  else{
    articleTitle = arguments.join(' ');
  }
  print('Current article title : $articleTitle');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}




// class Num{
//   int num = 10;
// }

// main() {
//   var n ;
//   int number;
 
//   number = n?.num ?? 0;

//   print(number);
// }



// main(){
//   int? number;
//   print(number ??= 100);
//   print(number);
// }



// main(){
//   int n = 10;
//   switch(n){
//     case 10: 
//     case 10:
//     print('odd');
//     default:
//     print('hi');
//   }
// }



// void main(){
//   for (int i = 1; i<= 10; i++){
//     print(i);
//   }
// }

// void main(){
//   var arr = [1,2,3];
//   arr.forEach((i)=> print('hello, $i'));
// }

// void main(){
//   for (var i=10;i>0;i--){
//     if (i%2==0) continue;
//     print(i.runtimeType);
//   }
// }

// main(){
//   var a = <String>{};
//   print(a.runtimeType);
// }


// void main(){
//   var names = ['hello',1,2.321,'jo'];
//   names[1] = 'james';
  
//   var n2 = [...names]; //spread operator
//   names[3] = 0;
//   for (var i in names){
//     print(i);
//   }
//   for (var i in n2){
//     print(i);
//   }
// }



// main(){
//   var oneAsString = 1.234.toStringAsFixed(2);
//   assert(oneAsString == '1');
//   print("my age is $oneAsString");
//   print(oneAsString.runtimeType);
// }
