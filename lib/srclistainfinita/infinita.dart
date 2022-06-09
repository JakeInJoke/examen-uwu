import 'dart:math';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Infinita extends StatefulWidget {
  static const String routeName = "/infinita";
  Infinita({Key? key}) : super(key: key);

  @override
  State<Infinita> createState() => _InfinitaState();
}

class _InfinitaState extends State<Infinita> {
  final suggestions = <WordPair>[];

  final saved = <WordPair>[];

  ListTile buildRow(WordPair pair) {
    return ListTile(
      trailing: Icon(Icons.shopping_cart),
      //leading: Icon(Icons.shopping_cart),
      title: Text(pair.asPascalCase),
      //subtitle: Text("Precio: ${(Random().nextInt(500))} USD"),
      onTap: () {
        setState(() {
          saved.add(pair);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    void pushSaved() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        final title = saved
            .map((pair) => ListTile(
                  title: Text(pair.asPascalCase),
                ))
            .toList();
        return Scaffold(
          appBar: AppBar(
            title: Text("Guardados"),
          ),
          // body: ListView.builder(
          //   itemBuilder: (context, i) {
          //     return buildRow(saved[i]);
          //   },
          //   itemCount: saved.length,
          // ),
          body: ListView(
            children: title,
          ),
        );
      }));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista Infinita"),
        actions: [IconButton(onPressed: pushSaved, icon: Icon(Icons.list))],
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        if (i.isOdd) {
          return Divider();
        }
        if (i >= suggestions.length) {
          suggestions.addAll(generateWordPairs().take(10));
        }
        return buildRow(suggestions[i]);
      }),
    );
  }
}
