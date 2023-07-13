import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';

class FirstPage extends GetView<FirstController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FirstController>(builder: (builderContext) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
            child: SizedBox(
              height: context.height,
              width: context.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                    height: 116,
                    onTap: () {},
                    borderRadius: BorderRadius.circular(context.height),
                    margin: const EdgeInsets.only(bottom: 50),
                    child: Opacity(
                      opacity: 0.9,
                      child: Image.asset("assets/images/user.png"),
                    ),
                  ),
                  RoundTextField(
                    hintText: "Name",
                    height: 40,
                    width: context.width - 60,
                    borderRadius: BorderRadius.circular(12),
                    hintStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                      fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontStyle: Theme.of(context).textTheme.bodySmall!.fontStyle,
                    ),
                  ),
                  RoundTextField(
                    hintText: "Palindrome",
                    height: 40,
                    width: context.width - 60,
                    borderRadius: BorderRadius.circular(12),
                    margin: const EdgeInsets.only(bottom: 45),
                    hintStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                      fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontStyle: Theme.of(context).textTheme.bodySmall!.fontStyle,
                    ),
                  ),
                  CustomButton(
                    height: 41,
                    onTap: () {},
                    width: context.width - 60,
                    margin: const EdgeInsets.only(bottom: 15),
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.primary,
                    child: Text(
                      "CHECK",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
                        fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                        fontStyle: Theme.of(context).textTheme.bodySmall!.fontStyle,
                      ),
                    ),
                  ),
                  CustomButton(
                    height: 41,
                    onTap: () {},
                    width: context.width - 60,
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.primary,
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
                        fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                        fontStyle: Theme.of(context).textTheme.bodySmall!.fontStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
