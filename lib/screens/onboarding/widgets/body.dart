import 'package:flutter/material.dart';
import 'package:football_app/screens/onboarding/widgets/splash_content.dart';
import 'package:football_app/screens/sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late PageController _pageController;
  void _goToSignIn() {
    Navigator.pushNamed(context, SignInScreen.routeName);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Map<String, String>> splashData = [
    {
      "image": 'assets/images/onboar1.png',
      "title": "Bắt kèo nhanh chóng",
      "text":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit",
    },
    {
      "image": 'assets/images/onboar2.png',
      "title": "Tạo trận dễ dàng",
      "text":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit",
    },
    {
      "image": 'assets/images/onboar3.png',
      "title": "Giao lưu kết bạn",
      "text":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit",
    },
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemCount: splashData.length,
            itemBuilder: (context, index) => SplashContent(
                image: splashData[index]['image'] as String,
                title: splashData[index]['title'] as String,
                text: splashData[index]['text'] as String),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    _goToSignIn();
                  },
                  child: Text(
                    'Skip',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
                Row(
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      if (currentPage < splashData.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                        setState(() {
                          currentPage++;
                        });
                      } else {
                        _goToSignIn();
                      }
                    },
                    icon: Image.asset(
                      "assets/icons/btnNext.png",
                      width: 46,
                      height: 46,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot({required int index}) {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      height: 4,
      width: currentPage == index ? 16 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Theme.of(context).colorScheme.primary
            : const Color(0xFFE1E1E1),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
