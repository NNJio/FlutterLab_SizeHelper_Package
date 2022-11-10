import 'package:flutter/material.dart';
import 'package:size_helper/size_helper.dart';

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
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return //_buildExample2(context);
        _buildExample1(context);
  }

  Widget _buildExample1(BuildContext context) {
    return Scaffold(
      body: SizeHelper.of(context, printScreenInfo: true).helpBuilder(
        mobileNormal: (_) => TestPackage(),
        mobileLarge: (_) => TestPackage(),
        mobileExtraLarge: (_) => TestPackage(),
        tabletSmall: (_) => TestPackage(),
        tabletNormal: (_) => TestPackage(),
        tabletLarge: (_) => TestPackage(),
        tabletExtraLarge: (_) => TestPackage(),
        desktopSmall: (_) => TestPackage(),
        desktopNormal: (screenInfo) => TestPackage(),
      ),
    );
  }

  // ignore: unused_element
  Widget _buildExample2(BuildContext context) {
    final dataList = List.generate(15, (index) => 'Card ${index + 1}');
    final cardsList = dataList.map((e) => CardWidget(text: e)).toList();
    return Scaffold(
      body: context.sizeHelperBuilder(
        mobileExtraLarge: (_) => SingleChildScrollView(
            child: Column(
          children: cardsList,
        )),
        tabletLarge: (_) => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: cardsList,
            )),
        desktopSmall: (_) => Wrap(
          children: cardsList,
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 200,
      margin: const EdgeInsets.all(16.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.grey[200],
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 24.0, color: Colors.green),
      ),
    );
  }
}

//!------------------------------------------------------
// ignore: must_be_immutable
class TestPackage extends StatelessWidget {
  TestPackage({super.key});
  var sizeF = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test SizeHelper Package'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.pink.shade50),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Dummy(),
                SizedBox(width: 50),
                Dummy(),
                SizedBox(width: 50),
                Dummy(),
                SizedBox(width: 50),
                Dummy(),
                SizedBox(width: 50),
                Dummy(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//!------------------------------------------------------
class Dummy extends StatelessWidget {
  const Dummy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'dummy text',
          style: TextStyle(
            fontSize: SizeHelper.of(context).help(
              mobileLarge: 8.0,
              tabletNormal: 14.0,
              desktopSmall: 30.0,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'dummy text',
          style: TextStyle(
            fontSize: SizeHelper.of(context).help(
              mobileLarge: 8.0,
              tabletNormal: 14.0,
              desktopSmall: 30.0,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'dummy text',
          style: TextStyle(
            fontSize: SizeHelper.of(context).help(
              mobileLarge: 8.0,
              tabletNormal: 14.0,
              desktopSmall: 30.0,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'dummy text',
          style: TextStyle(
            fontSize: SizeHelper.of(context).help(
              mobileLarge: 8.0,
              tabletNormal: 14.0,
              desktopSmall: 30.0,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'dummy text',
          style: TextStyle(
            fontSize: SizeHelper.of(context).help(
              mobileLarge: 8.0,
              tabletNormal: 14.0,
              desktopSmall: 30.0,
            ),
          ),
        ),
      ],
    );
  }
}
