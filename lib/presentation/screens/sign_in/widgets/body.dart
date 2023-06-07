import 'package:flutter/material.dart';
import 'package:football_app/presentation/screens/sign_in/widgets/choice_country.dart';
import 'package:football_app/presentation/screens/sign_in/widgets/phonetxt.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 100, left: 24, right: 54),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Đăng nhập',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              Text('Nhập số điện thoại của bạn để nhận mã xác minh',
                  style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
        const SizedBox(height: 68),
        Row(
          children: const [
            Expanded(
              flex: 2,
              child: ChoiceCountry(),
            ),
            SizedBox(width: 8),
            Expanded(
              flex: 3,
              child: PhoneTxt(),
            ),
          ],
        ),
      ],
    );
  }
}
