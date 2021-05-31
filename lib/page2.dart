import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Dotenv Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Dotenv Demo'),
          ),
          body: SingleChildScrollView(
            child: FutureBuilder<String>(
              // future: rootBundle.loadString('assets/.env'),
              initialData: '',
              builder: (context, snapshot) => Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    Text(
                      'Env map: ${dotenv.env['ESCAPED_DOLLAR_SIGN']}',
                    ),
                    Divider(thickness: 5),
                    Text('Original'),
                    Divider(),
                    // Text(snapshot.data ?? ''),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
