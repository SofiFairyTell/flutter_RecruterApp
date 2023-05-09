import 'package:flutter/material.dart';
import 'package:recruterapp/main.dart';
import 'package:recruterapp/screens/VacancScreen.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/owl.jpg'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Имя пользователя', style: TextStyle(fontSize: 16)),
                    Text('example@mail.com', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings),
            title: Text('Панель'),
            onTap: ()=> Navigator.pushNamed(context,'/profile'),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Вакансии'),
            onTap: ()=> Navigator.pushNamed(context,'/vac'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Кандидаты'),
            onTap: () {
              // TODO: Обработчик нажатия на элемент "Кандидаты"
            },
          ),
          ListTile(
            leading: Icon(Icons.analytics),
            title: Text('Аналитика'),
            onTap: () {
              // TODO: Обработчик нажатия на элемент "Аналитика"
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Чаты'),
            onTap: () {
              // TODO: Обработчик нажатия на элемент "Чаты"
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Настройки'),
            onTap: ()=> Navigator.pushNamed(context,'/settings'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Выход'),
            onTap: () => goToScreen(context,'/')),
        ],
      ),
    );
  }
}


void goToScreen(BuildContext context, String route) {
  Navigator.pushNamed(context, route);
}

void goToVacanScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => VacancScreen(),
    ),
  );
}