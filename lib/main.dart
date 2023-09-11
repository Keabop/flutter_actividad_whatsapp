import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 7, 94, 84),
              title: const Text("WhatsApp"),
              actions: [
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text('Cámara')));
                  },
                  icon: const Icon(Icons.camera_alt_outlined),
                  tooltip: 'Cámara',
                ),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Buscador')));
                  },
                  icon: const Icon(Icons.search),
                  tooltip: 'Buscar',
                ),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Opciones')));
                  },
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'Buscar',
                ),
              ],
              bottom: const TabBar(
                tabs: [
                  Icon(Icons.groups),
                  Text("Chat"),
                  Text("Estados"),
                  Text("Llamadas"),
                ],
                indicatorColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          body: Container(
            margin: const EdgeInsets.all(10.0),
            child: ListView(children: const [
              //Mi Novia <3
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/mi novia.jpg"),
                ),
                title: Text(
                  "Lunita<3333",
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.done_all,
                      color: Colors.blue,
                      size: 18,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Te amare toda mi vida...")
                  ],
                ),
                trailing: Column(
                  children: [Text("9:24 p.m.")],
                ),
              ),
              SizedBox(height: 10.0),
              //Familia
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/familia.jpg'),
                ),
                title: Text(
                  "Familia 🐷",
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.done_all,
                      size: 18,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Ama: Ya esta la comida."),
                  ],
                ),
                trailing: Column(
                  children: [Text("4:56 p.m.")],
                ),
              ),
              SizedBox(height: 10.0),
              //Naty
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/naty.jpg'),
                ),
                title: Text("Naty :3"),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.done_all,
                      size: 18,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Esta es la dirección para...")
                  ],
                ),
                trailing: Column(
                  children: [Text("3:48 p.m.")],
                ),
              ),
              SizedBox(height: 10.0),
              //Elian
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 29, 185, 84),
                  child: Padding(
                    padding: EdgeInsets.all(3),
                    child: ClipOval(
                      child: Image(image: AssetImage("assets/elian.jpg")),
                    ),
                  ),
                ),
                title: Text("Elian Playtard"),
                subtitle: Text("Esta es la tarea sapo..."),
                trailing: Column(
                  children: [Text("1:20 p.m.")],
                ),
              ),
              SizedBox(height: 10.0),
              //MAGS
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/magy.jpg"),
                ),
                title: Text("MAGS"),
                subtitle: Row(
                  children: [Text("Mañana en la cafetería...")],
                ),
                trailing: Column(
                  children: [
                    Text(
                      "1:10 p.m.",
                      style: TextStyle(color: Color.fromARGB(255, 29, 185, 84)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 29, 185, 84),
                      radius: 10,
                      child: Text(
                        "3",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              //José Luis
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 29, 185, 84),
                  child: Padding(
                    padding: EdgeInsets.all(3),
                    child: ClipOval(
                      child: Image(image: AssetImage("assets/jose lui.jpg")),
                    ),
                  ),
                ),
                title: Text(
                  "José Luis",
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.image,
                      color: Color.fromARGB(255, 29, 185, 84),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("A que hora es chaval?")
                  ],
                ),
                trailing: Column(
                  children: [
                    Text(
                      "12:10 p.m.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 185, 84),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 29, 185, 84),
                      radius: 10,
                      child: Text(
                        "1",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              //Lalo
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/lalo.jpg'),
                ),
                title: Text("Eduardo (lalo)"),
                subtitle: Text("Acompañame a fumar prro"),
                trailing: Column(
                  children: [Text("10:56 p.m.")],
                ),
              ),
              SizedBox(height: 10.0),
              //Sahira
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/Sahira.jpg'),
                ),
                title: Text("Sahira Morales"),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.sticky_note_2,
                      color: Color.fromARGB(255, 29, 185, 84),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Sticker"),
                  ],
                ),
                trailing: Column(
                  children: [Text("Ayer")],
                ),
              ),
              SizedBox(height: 10.0),
              //Mis amigos
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/mis amigos.jpg"),
                ),
                title: Text(
                  "Los cueritos la resurección",
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.done_all,
                      size: 18,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Tú: PASEN PNO")
                  ],
                ),
                trailing: Column(
                  children: [Text("Ayer")],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
