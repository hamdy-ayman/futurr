import 'package:flutter/material.dart';

main() {
  // print(1);
  // Future(() => int.parse('hallo world'))
  //     .then((value) => print(value))
  //     .catchError((e) {
  //   print(e.toString());
  // });
  // var x = Stream.periodic(Duration(seconds: 1), (x) => x).listen((_) {});
  // x.onData((data) {
  //   if (data == 5) {
  //     x.cancel();
  //   } else {
  //     print(data);
  //   }
  // });
}

class MyUi extends StatefulWidget {
  const MyUi({Key? key}) : super(key: key);

  @override
  State<MyUi> createState() => _MyUiState();
}

class _MyUiState extends State<MyUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: FutureBuilder(
            future: Future(() => 4),
            builder: (context, snapshot) {
              return Center(
                  child: snapshot.hasData?Text(
                snapshot.data == 4 ? 'hamdy' : snapshot.data.toString(),
                style: const TextStyle(color: Colors.green),
              ):const CircularProgressIndicator(),
              );
            },
          )),
    );
  }
}
