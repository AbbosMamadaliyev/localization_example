import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app'),
      ),
      body: Column(
        children: [
          Text('appBarTitle').tr(),
          Text('appName').tr(),
          Text('start').tr(),
          Text('category').tr(),
          Text('history').tr(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    context.setLocale(const Locale('uz', 'UZ'));
                  });
                },
                child: const Text('uz'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    context.setLocale(const Locale('ru', 'RU'));
                  });
                },
                child: const Text('kr'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    context.setLocale(const Locale('en', 'US'));
                  });
                },
                child: const Text('en'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime(2022),
                firstDate: DateTime(1950),
                lastDate: DateTime(2200),
              );
            },
            child: const Text('calendar'),
          ),
        ],
      ),
    );
  }
}
