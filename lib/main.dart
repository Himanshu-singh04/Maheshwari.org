// import 'package:flutter/material.dart';
// // import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:webview_flutter/webview_flutter.dart';

// // Model class for success stories
// class SuccessStory {
//   final String title;
//   final String description;
//   final String imageUrl;
//   final String storyUrl;

//   SuccessStory({
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//     required this.storyUrl,
//   });
// }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Success Stories',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SuccessStoriesPage(),
//     );
//   }
// }

// class SuccessStoriesPage extends StatefulWidget {
//   @override
//   _SuccessStoriesPageState createState() => _SuccessStoriesPageState();
// }

// class _SuccessStoriesPageState extends State<SuccessStoriesPage> {
//   List<SuccessStory> successStories = [];
//   int pageNumber = 1;

//   @override
//   void initState() {
//     super.initState();
//     fetchSuccessStories();
//   }

//   Future<void> fetchSuccessStories() async {
//     try {
//       final url =
//           'https://www.maheshwari.org/api/successstory/list?PageNumber=$pageNumber';
//       final response = await http.get(Uri.parse(url));

//       if (response.statusCode == 200) {
//         final jsonData = json.decode(response.body);

//         if (jsonData['data'] != null && jsonData['data'] is List) {
//           setState(() {
//             successStories = (jsonData['data'] as List)
//                 .map((item) => SuccessStory(
//                       title: item['title'],
//                       description: item['description'],
//                       imageUrl: item['imageUrl'],
//                       storyUrl: item['storyUrl'],
//                     ))
//                 .toList();
//           });
//         }
//       } else {
//         throw Exception('Failed to fetch success stories');
//       }
//     } catch (error) {
//       print('Error fetching success stories: $error');
//     }
//   }

//   Future<void> goToStoryDetails(String storyUrl) async {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (_) => StoryDetailsPage(storyUrl: storyUrl),
//       ),
//     );
//   }

//   void navigateToPreviousPage() {
//     if (pageNumber > 1) {
//       setState(() {
//         pageNumber--;
//         fetchSuccessStories();
//       });
//     }
//   }

//   void navigateToNextPage() {
//     setState(() {
//       pageNumber++;
//       fetchSuccessStories();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Success Stories'),
//       ),
//       body: ListView.builder(
//         itemCount: successStories.length,
//         itemBuilder: (ctx, index) {
//           final story = successStories[index];
//           return ListTile(
//             leading: Image.network(story.imageUrl),
//             title: Text(story.title),
//             subtitle: Text(story.description),
//             onTap: () => goToStoryDetails(story.storyUrl),
//           );
//         },
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: navigateToPreviousPage,
//               child: Text('Back'),
//             ),
//             SizedBox(width: 10),
//             ElevatedButton(
//               onPressed: navigateToNextPage,
//               child: Text('Forward'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class StoryDetailsPage extends StatelessWidget {
//   final String storyUrl;

//   const StoryDetailsPage({required this.storyUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Story Details'),
//         ),
//         body: SafeArea(
//             child: WebView(
//                 initialUrl: storyUrl,
//                 javascriptMode: JavascriptMode.unrestricted,
//                 onWebResourceError: (error) {
//                   print('WebView error: ${error.description}');
//                   // Handle the error and display appropriate messages or fallback content
//                   showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       title: Text('Error'),
//                       content: Text('Failed to load the web page.'),
//                       actions: [
//                         TextButton(
//                           onPressed: () {
//                             Navigator.pop(context); // Close the dialog
//                             // Perform additional error handling if needed
//                           },
//                           child: Text('OK'),
//                         ),
//                       ],
//                     ),
//                   );
//                 })));
//   }
// }

import 'package:flutter/material.dart';

import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
