import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/Themes/app_colors.dart';
import 'package:flutter_application_1/shared/Themes/app_text.dart';

class ContainerNameWidget extends StatelessWidget {
  final String name;
  final Color? cor;

  const ContainerNameWidget({
    Key? key,
    required this.name,
    this.cor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [AppColors.clickShadow],
        color: cor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 1,
      height: 50,
      child: Center(
        child: Text('$name',
            style: AppTextStyles.bodyH4.copyWith(
              fontSize: 21,
              color: Colors.white,
            )),
      ),
    );
  }
}
