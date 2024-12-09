import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        dividerTheme: const DividerThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 30, 33, 33),
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromARGB(255, 0, 0, 0)),
        textTheme: GoogleFonts.latoTextTheme(
          const TextTheme(
            bodyMedium: TextStyle(fontSize: 16),
            titleLarge: TextStyle(fontWeight: FontWeight.w900, fontSize:32),
            titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('saeed app'),
          actions: const [
            Icon(CupertinoIcons.chat_bubble),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: Icon(CupertinoIcons.ellipsis_vertical),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset('assets/images/imag.png',
                          width: 100, height: 100)),
                  const SizedBox(
                    width: 16,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name and Last Name', style: TextStyle(fontSize: 18), ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('Saeed jeddi '),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Icon(CupertinoIcons.placemark, size: 20,),
                            SizedBox(
                              width: 4,
                            ),
                            Text('IRAN', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: Color.fromARGB(255, 238, 255, 0)),),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Icon(CupertinoIcons.heart, color: Color.fromARGB(255, 255, 136, 144),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 16, 8),
              child: Text(
                  'Lorem ipsum odor amet, consectetuer adipiscing elit. Quisque lorem dapibus congue nascetur dignissim mus. Torquent semper nam eros non suspendisse habitant posuere inceptos. Facilisis justo ullamcorper, viverra nec congue suspendisse nullam. Venenatis eros ad massa, mauris dui luctus nisi. Hac commodo maecenas; luctus ligula dolor eros. ', style: TextStyle(color: Color.fromARGB(255, 160, 243, 243)),),
            ),
            const Divider(),
          ],
          
        ));
  }
}
