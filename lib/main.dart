import 'package:flutter/material.dart';
// Импортируем наши новые экраны
import 'phone_page.dart';
import 'message_page.dart';
import 'email_page.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile', // Название приложения
      debugShowCheckedModeBanner: false, // Убираем баннер "Debug" в правом верхнем углу
      home: ProfilePage(), // Указываем, что стартовым окном будет ProfilePage
    );
  }
}

class ProfilePage extends StatelessWidget { 
  String name = "UNIKDOOS"; 
  String bio = "Beginner developer exploring JAVA, FLUTTER and KOTLIN";
  String city = "Bishkek";
  int age = 16;
  String email = "m2501469@gmail.com";
  String phoneNumber = "+996700112355";

  @override 
  Widget build(BuildContext context) {
    return Scaffold( // Основная структура приложения
      backgroundColor: Colors.black, // Цвет фона приложения
      appBar: AppBar( // Шапка приложения в самом верху
        title: Text('Profile'), 
        titleTextStyle: TextStyle(
          fontFamily: 'FascinateInline', // Задаем шрифт для текста
          fontSize: 24, // Размер шрифта текста
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: () { // Действие при нажатии на кнопку назад
            Navigator.maybePop(context); // Пытаемся вернуться на предыдущий экран, если он есть
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ), 
        ],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), // Отступы по бокам, чтобы текст не прилипал к краям
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/donatelo.jpg'),
              ),

              SizedBox(height: 20), // Отступ между аватаркой и текстом
              
              Text(
                "Name: " + name,
                style: TextStyle(
                  fontFamily: 'FascinateInline', // Задаем шрифт для текста
                  fontSize: 24, // Размер шрифта текста
                  fontWeight: FontWeight.bold, // Переключит на FascinateInline-Bold.ttf
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 8), // Отступ между именем и возрастом

              Text(
                "Age: " + age.toString() + " years old✨", 
                style: TextStyle(
                  fontFamily: 'FascinateInline', // Задаем шрифт для текста
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 8), // Отступ между возрастом и городом

              Text(
                "City: I live in " + city + " city🏢",
                style: TextStyle(
                  fontFamily: 'FascinateInline', // Задаем шрифт для текста
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 12), // Отступ между текстом и биографией

              Text(
                bio, 
                textAlign: TextAlign.center, // Выравниваем биографию по центру
                style: TextStyle(
                  fontFamily: 'FascinateInline', // Исправлено имя шрифта
                  fontSize: 18, 
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 20), // Отступ между биографией и кнопками
                  
              Text(
                "Contacts: " + email, 
                style: TextStyle(
                  fontFamily: 'FascinateInline', // Задаем шрифт для текста
                  fontSize: 18, 
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 8), // Отступ между текстом контактов и номером телефона

              Text(
                "Phone number: " + phoneNumber,
                style: TextStyle(
                  fontFamily: 'FascinateInline',
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 20), // Отступ между текстом контактов и кнопками

              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Выравниваем кнопки по центру
                children: [
                  IconButton( // Кнопка звонка -> Второй экран
                    onPressed: () {
                      Navigator.push( // Переход на экран звонков
                        context, 
                        MaterialPageRoute(builder: (context) => const PhonePage()), // Переход на экран звонков
                      );
                    },
                    icon: Icon(Icons.phone),
                    iconSize: 30,
                    color: Colors.blue,
                  ),

                  SizedBox(width: 20), // Отступ между кнопкой звонка и кнопкой сообщения

                  IconButton( // Кнопка сообщения -> Третий экран
                    onPressed: () { // Код для перехода на экран сообщений
                      Navigator.push( // Переход на экран сообщений
                        context, 
                        MaterialPageRoute(builder: (context) => const MessagePage()), // Переход на экран сообщений
                      );
                    },
                    icon: Icon(Icons.message),
                    iconSize: 30,
                    color: Colors.blue,
                  ),

                  SizedBox(width: 20), // Отступ между кнопкой сообщения и кнопкой почты

                  IconButton( // Кнопка почты -> Четвертый экран
                    onPressed: () { // Код для перехода на экран почты
                      Navigator.push( // Переход на экран почты
                        context,
                        MaterialPageRoute(builder: (context) => const EmailPage()), // Переход на экран почты
                      );
                    },
                    icon: Icon(Icons.email),
                    iconSize: 30,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}