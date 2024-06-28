import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;

  void _toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Settings",style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.grey.shade900,
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpansionTile(title: Text("Account",style: TextStyle(color: Colors.white,fontSize: 20)),
                childrenPadding: EdgeInsets.only(left: 40),
                children: [
                  ListTile(
                    title: Text("Free Plan",style: TextStyle(color: Colors.white,fontSize: 15)),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Text("Email",style: TextStyle(color: Colors.white,fontSize: 15)),
                    onTap: (){},
                  )
                ],
              ),
              ExpansionTile(title: Text("Content Preference",style: TextStyle(color: Colors.white,fontSize: 20)),
                childrenPadding: EdgeInsets.only(left: 40),
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Text("Allow Explicit content",style: TextStyle(color: Colors.white,fontSize: 15)),
                        SizedBox(width: 75,),
                        Switch(
                          value: isSwitched,
                          onChanged: _toggleSwitch,
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    onTap: (){},
                  ),
                ],
              ),
              ExpansionTile(title: Text("Playback",style: TextStyle(color: Colors.white,fontSize: 20)),
                childrenPadding: EdgeInsets.only(left: 40),
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Text("Gapless",style: TextStyle(color: Colors.white,fontSize: 15)),
                        SizedBox(width: 170,),
                        Switch(
                          value: isSwitched,
                          onChanged: _toggleSwitch,
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Text("Automix",style: TextStyle(color: Colors.white,fontSize: 15)),
                        SizedBox(width:170,),
                        Switch(
                          value: isSwitched,
                          onChanged: _toggleSwitch,
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Text("Show unplayable songs",style: TextStyle(color: Colors.white,fontSize: 15)),
                        SizedBox(width: 65,),
                        Switch(
                          value: isSwitched,
                          onChanged: _toggleSwitch,
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Text("Canvas",style: TextStyle(color: Colors.white,fontSize: 15)),
                        SizedBox(width: 180,),
                        Switch(
                          value: isSwitched,
                          onChanged: _toggleSwitch,
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    onTap: (){},
                  )
                ],
              ),
              ExpansionTile(title: Text("Languages",style: TextStyle(color: Colors.white,fontSize: 20)),
                childrenPadding: EdgeInsets.only(left: 40),
                children: [
                  ListTile(
                    title: Text("App language",style: TextStyle(color: Colors.white,fontSize: 15)),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Text("Language for music",style: TextStyle(color: Colors.white,fontSize: 15)),
                    onTap: (){},
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text("About",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text("Log out",style: TextStyle(color: Colors.white,fontSize: 20),)),
              )
            ],),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
