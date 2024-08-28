import 'package:flutter/material.dart';
import 'package:nutriapp/constant/colors.dart';
import 'package:nutriapp/providers/getdishprovider.dart';
import 'package:provider/provider.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SmartSearch extends StatefulWidget {
  const SmartSearch({Key? key}) : super(key: key);

  @override
  State<SmartSearch> createState() => _SmartSearchState();
}

class _SmartSearchState extends State<SmartSearch> {
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  @override
  void initState() {
    super.initState();
    _initSpeech();
  }
  void _initSpeech() async {
    await _speechToText.initialize(
      onStatus: (status) {
        print("status$status");
        if (status == 'listening') {
          _speechToText.listen(
            onResult: _onSpeechResult,
            listenFor: const Duration(minutes: 10),
            localeId: 'en_US', // Set the locale during listening
          );
        }
      },
    );

    // Ensure _lastWords is empty when the page is loaded

    _speechEnabled = true;
    setState(() {});
  }

  void _startListening() async {
    Provider.of<GetDishProvider>(context, listen: false).clearfunction();
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
    Provider.of<GetDishProvider>(context, listen: false)
        .getLastword(_lastWords);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GetDishProvider>(
      builder: (context, getdishprovider, child) {
        return Scaffold(
          appBar: AppBar(backgroundColor: ColorClass.baseColor),
          drawer: Drawer(
            backgroundColor: ColorClass.baseColor,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.search,
                  ),
                  title: const Text('Smart Search'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/smartsearch');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.draw_rounded,
                  ),
                  title: const Text('Dashboard'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.menu,
                  ),
                  title: const Text('Menu'),
                  onTap: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.food_bank,
                  ),
                  title: const Text(
                    'Food Banks',
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        _speechToText.isListening
                            ? '$_lastWords'
                            : _speechEnabled
                                ? 'Tap the microphone to start listening...'
                                : 'Speech not available',
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome ",
                        style: TextStyle(
                          color: ColorClass.baseColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "to Smart Search",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: ColorClass.baseColor,
                                    shape: CircleBorder(),
                                    fixedSize: Size(80, 80),
                                    padding: EdgeInsets.all(14),
                                  ),
                                  onPressed: _startListening,
                                  child: const Icon(
                                    Icons.mic,
                                    color: Colors.white,
                                    size: 25,
                                  )),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: CircleBorder(),
                                    fixedSize: Size(80, 80),
                                    padding: EdgeInsets.all(14),
                                  ),
                                  onPressed: () {
                                    _stopListening();
                                    getdishprovider
                                        .selectedWord(getdishprovider.wordlast);
                                    Navigator.pushNamed(
                                        context, '/customizesearch');
                                  },
                                  child: const Icon(
                                    Icons.stop,
                                    color: Colors.white,
                                    size: 25,
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          'Press To Start',
                          style: TextStyle(
                              color: ColorClass.baseColor,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Colors.black26,
                                  blurRadius: 1.0,
                                  offset: Offset(1.0, 1.0),
                                ),
                              ],
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
