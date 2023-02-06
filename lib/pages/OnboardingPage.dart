import 'package:flutter/material.dart';
import 'package:onboard/data/contents_onboarding.dart';
import 'HomePage.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? kay}) : super(key: kay);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Image.asset(contents[i].image),
                        const SizedBox(height: 20),
                        Text(
                          contents[i].text,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 96, 5, 112),
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          contents[i].descripcion,
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  contents.length, (index) => buildpage(index, context)),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: MaterialButton(
              onPressed: () async {
                if (currentIndex == contents.length - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                  );
                }
                _controller.nextPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeOut,
                );
              },
              color: Colors.white,
              textColor: Colors.grey,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                currentIndex == contents.length - 1 ? "Continuar" : "Siguiente",
                style: const TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildpage(int index, BuildContext context) {
    return Container(
      height: 5,
      width: currentIndex == index ? 30 : 20,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index
              ? Colors.pink
              : Colors.pink.withOpacity(0.2)),
    );
  }
}
