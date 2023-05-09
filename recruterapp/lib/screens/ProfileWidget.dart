import 'package:flutter/material.dart';
import 'DrawerWidget.dart';
import 'Widgets/CustomButton.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({Key key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(' '),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            if (scaffoldKey.currentState?.isDrawerOpen) {
              scaffoldKey.currentState?.openEndDrawer();
            } else {
              scaffoldKey.currentState?.openDrawer();
            }
            ;
          },
        ),
      ),
      backgroundColor: Colors.white,
      body:  SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        firstText: 'Вакансии',
                        secondText:'Получите данные от проектной команды',
                        onPressed: () => print('Pressed Вакансии'),
                      ),
                      const SizedBox(width: 10),
                      CustomButton(
                        firstText: 'Кандидаты',
                        secondText:'Подходящие участники команд',
                        onPressed: () => print('Pressed Кандидаты'),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        firstText: 'Аналитика',
                        secondText:'Выполните подбор проектной команды',
                        onPressed: () => print('Pressed Аналитика'),
                      ),
                      const SizedBox(width: 10),
                      CustomButton(
                        firstText: 'Чаты',
                        secondText:'Общайтесь с проектной командой',
                        onPressed: () => print('Pressed Чаты'),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
