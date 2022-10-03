import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/Widgets/cointainer_name_widget.dart';
import 'package:flutter_application_1/app/modules/home/Widgets/mesa_container_card.dart';
import 'package:flutter_application_1/app/modules/home/home_controller.dart';
import 'package:flutter_application_1/shared/Components/app_bar_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titulo: 'Mesa de Clientes',
          icon: Icons.restaurant,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: ContainerNameWidget(name: 'Mesas Ativas')),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 40),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.listaMesas.length,
                      itemBuilder: (context, index) {
                        return MesaConatainerWidget(
                          numeroMesa: controller.listaMesas[index].numero,
                          notificacao: controller.listaMesas[index].notificacao,
                          onTap: () {
                            Modular.to.pushNamed('/home/mesa',
                                arguments: controller.listaMesas[index]);
                          },
                        );
                      }),
                );
            ],
          ),
        ));
  }
}
