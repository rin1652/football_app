import 'package:flutter/material.dart';

class ChoiceCountry extends StatelessWidget {
  const ChoiceCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: DropdownButtonFormField(
          isExpanded: true,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          value: 'vietnam',
          items: [
            DropdownMenuItem(
              value: 'vietnam',
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Image.asset('assets/icons/VN.png'),
                    const SizedBox(
                      width: 4,
                    ),
                    Text('+84',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 16)),
                  ],
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'vietnam2',
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Image.asset('assets/icons/VN.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text('+82',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 18)),
                  ],
                ),
              ),
            ),
          ],
          onChanged: (value) {},
        ),
      ),
    );
  }
}
