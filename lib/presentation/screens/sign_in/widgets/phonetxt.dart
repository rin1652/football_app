import 'package:flutter/material.dart';

class PhoneTxt extends StatefulWidget {
  const PhoneTxt({super.key});

  @override
  State<PhoneTxt> createState() => _PhoneTxtState();
}

class _PhoneTxtState extends State<PhoneTxt> {
  final _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: 48,
        child: TextField(
          keyboardType: TextInputType.phone,
          controller: _phoneController,
          decoration: InputDecoration(
            hintText: 'Số điện thoại',
            labelStyle: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
