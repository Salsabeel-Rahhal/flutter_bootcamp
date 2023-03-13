import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xff3b5998),
          title: Text("Facebook"),
        ),
        body: Column(
          children: <Widget>[
            Card(
              elevation: 0,
              child: Container(
                height: 700.0,
                width: 500.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://th.bing.com/th/id/OIP.3yvt2N0OrThHK4B3OShJzgHaKe?pid=ImgDet&rs=1"),
                      ),
                      title: Text(
                        "Maximilian Güth",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Just . Cologno"),
                      trailing: Icon(
                        Icons.public,
                        size: 20,
                      ),
                    ),
                    ListTile(title: Text("This looks awesome!")),
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 500,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "Super awesome chees toast!",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            subtitle: Text(
                              "Lorem ipsum dolor sit amet .conseletur sadipscing elitr,sed diam nonumy eirmod lampor invidunt ul.",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "    GRANDCENTRIX.NET",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        // mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.thumb_up, color: Colors.grey),
                              SizedBox(width: 10.0),
                              Text(
                                "Like",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.comment, color: Colors.grey),
                              SizedBox(width: 8.0),
                              Text("Comment",
                                  style: TextStyle(color: Colors.grey))
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.share, color: Colors.grey),
                              SizedBox(width: 8.0),
                              Text("Share",
                                  style: TextStyle(color: Colors.grey))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 25,
                      child: ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          'Chuck Norris',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            height: 100,
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/aa.jpeg'),
                                ),
                                Expanded(
                                  flex: 60,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        labelText: 'Comment..',
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        suffixIcon: GestureDetector(
                                          //  onTap: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.emoji_emotions)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.camera_alt)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.gif_box_outlined)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.photo)
                                                ],
                                              )
                                            ],
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
