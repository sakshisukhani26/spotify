import 'package:flutter/material.dart';
import 'package:spotify/UiHelper.dart';

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
        title:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child:
          UiHelper.customText("Settings",color: Colors.white),
          // Text("Settings",style: TextStyle(color: Colors.white),),
        ),
        backgroundColor: Colors.grey.shade900,
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10),
              //   child: Row(
              //     children: [
              //       CircleAvatar(child: Icon(Icons.person),),
              //       SizedBox(width: 20,),
              //       Column(
              //         children: [
              //           Text("Accountname",style: TextStyle(color: Colors.white,fontSize: 25)),
              //           TextButton(onPressed: (){},child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 15)),),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: const Icon(Icons.person,size: 40,),
                      title:
                      UiHelper.customText("Accountname", color: Colors.white, fontsize: 25),
                      // Text(
                      //       "Accountname",
                      //       style: TextStyle(color: Colors.white, fontSize: 25),),
                    subtitle: Row(
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text(
                            "Edit profile",
                            style: TextStyle(color: Colors.white, fontSize: 15),),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              ExpansionTile(title:
              UiHelper.customText("Account",color: Colors.white,fontsize: 20),
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
              ExpansionTile(title:
              UiHelper.customText("Content Preference",color: Colors.white,fontsize: 20),
              // Text("Content Preference",style: TextStyle(color: Colors.white,fontSize: 20)),
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
              ExpansionTile(title:
              UiHelper.customText("Playback",color: Colors.white,fontsize: 20),
                // Text("Playback",style: TextStyle(color: Colors.white,fontSize: 20)),
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
                child:
                  UiHelper.customTextButton("About",color: Colors.white,fontsize: 20),
                // TextButton(onPressed: (){}, child: Text("About",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                UiHelper.customTextButton("Log out",color: Colors.white,fontsize: 20),
                // TextButton(onPressed: (){}, child: Text("Log out",style: TextStyle(color: Colors.white,fontSize: 20),)),
              )
            ],),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
