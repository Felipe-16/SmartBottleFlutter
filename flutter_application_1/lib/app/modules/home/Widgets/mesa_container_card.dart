import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/Themes/app_colors.dart';

class MesaConatainerWidget extends StatelessWidget {
  final String numeroMesa;
  final bool status;
  final String? notificacao;
  final Function()? onTap;
  final double opacidade;
 
  const MesaConatainerWidget({
    Key? key,
    required this.numeroMesa,
    required this.status,
    this.onTap,
    this.notificacao,
    required this.opacidade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacidade,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 120,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [AppColors.clickShadow],
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(10),
          ),
          child: notificacao == '1' ? Badge(
            elevation: 0,
                    position: BadgePosition.topEnd(),
                    padding: EdgeInsetsDirectional.all(8),
                    badgeColor: Colors.orange,
                    badgeContent: Icon(Icons.back_hand_rounded, size: 27),
            child: Stack(
              children: [
                Column(
                  children: [
                    Image.network('https://th.bing.com/th/id/OIP.Ag7P0ZN8km7J1c6cxoo2zgHaEK?pid=ImgDet&rs=1', fit: BoxFit.fitHeight),
                    Text('Número da mesa: $numeroMesa', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ) :
          Stack(
              children: [
                Column(
                  children: [
                    Image.network('https://th.bing.com/th/id/OIP.Ag7P0ZN8km7J1c6cxoo2zgHaEK?pid=ImgDet&rs=1', fit: BoxFit.fitHeight),
                    Text('Número da mesa: $numeroMesa', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
        ),
      ),
    );
  }
}
