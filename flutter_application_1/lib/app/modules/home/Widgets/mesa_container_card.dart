import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/Themes/app_colors.dart';


class MesaConatainerWidget extends StatelessWidget {
  final String numeroMesa;
  final String status;
  final int? notificacao;
  final Function()? onTap;


  const MesaConatainerWidget({
    Key? key,
    required this.numeroMesa,
    required this.status,
    this.onTap,
    this.notificacao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 100,
      decoration: BoxDecoration(
        boxShadow: [AppColors.clickShadow],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(        
        children: [
          Image(image: null),
          Container(
            color: Colors.blue,
            child: Text(''),
          )


      ]),
    );
  }
}
