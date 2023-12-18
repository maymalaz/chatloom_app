import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static String screenRoute = 'chat_screen';

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],

        title:  Row(
          children: [
            SizedBox(
              width: 25,
            ),

            Text(
              'ChatLoom',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              //add here logout function
              onPressed: () {},
              icon: const Icon(Icons.close,
              color: Colors.white,)),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value){},
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20
                        ),
                        hintText: 'Write your message here...',
                        border: InputBorder.none
                      ),
                    ),

                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text('Send',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
