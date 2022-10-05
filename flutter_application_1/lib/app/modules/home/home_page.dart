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
                padding: const EdgeInsets.fromLTRB(8, 24, 8, 16),
                child: Center(child: ContainerNameWidget(name: 'Mesas Ativas', cor: Color.fromARGB(255, 44, 180, 78),)),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 3.1/2
                              ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.listaMesas.length,
                      itemBuilder: (context, index) {
                        return MesaConatainerWidget(
                          opacidade: 1,
                          numeroMesa: controller.listaMesas[index].numero,
                          notificacao: controller.listaMesas[index].notificacao,
                          status: controller.listaMesas[index].ativa,
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: ContainerNameWidget(name: 'Mesas Inativas', cor: Color.fromARGB(255, 201, 39, 39),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 3.1/2
                              ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.listaMesas.length,
                      itemBuilder: (context, index) {
                        return MesaConatainerWidget(
                          opacidade: 0.5,
                          numeroMesa: controller.listaMesas[index].numero,
                          notificacao: '0',
                          status: controller.listaMesas[index].ativa,
                        );
                      }),
                ),
            ],
          ),
        ));
  }
}
