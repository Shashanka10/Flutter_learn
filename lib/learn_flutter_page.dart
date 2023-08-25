import "package:flutter/material.dart";
import "package:info_popup/info_popup.dart";

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: InfoPopupWidget(
              contentMaxWidth: 250,
              contentTheme: InfoPopupContentTheme(
                infoTextStyle: TextStyle(color: Colors.green),
                infoContainerBackgroundColor:
                    Color.fromARGB(255, 255, 255, 255),
                contentPadding: EdgeInsets.all(20),
              ),
              contentTitle:
                  'Information on the widgets that can be used in flutter',
              child: Icon(Icons.info_outline_rounded),
            ),
          ),
        ],
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/flutter_einstein.png"),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: const Color.fromARGB(255, 50, 94, 95),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "This is a text widget",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint("Elevated buton clicked");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined buton clicked");
              },
              child: const Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Textbutton buton clicked");
              },
              child: const Text("Textbutton Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is the row");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_airport,
                    color: Color.fromARGB(255, 21, 97, 159),
                  ),
                  Text(
                    "Row Widget",
                    style: TextStyle(color: Color.fromARGB(255, 81, 10, 93)),
                  ),
                  Icon(
                    Icons.fire_truck,
                    color: Color.fromARGB(255, 141, 30, 22),
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newbool) {
                setState(() {
                  isSwitch = newbool;
                });
              },
            ),
            Checkbox(
                value: isCheck,
                onChanged: (bool? newbool) {
                  setState(() {
                    isCheck = newbool;
                  });
                }),
            Image.network(
                "https://miro.medium.com/v2/resize:fit:828/format:webp/1*oiJQQh8fv7HeRgKjLYIG4A.png")
          ],
        ),
      ),
    );
  }
}
