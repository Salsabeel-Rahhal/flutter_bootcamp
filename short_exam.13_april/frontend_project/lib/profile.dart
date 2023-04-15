import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController(text: 'johndoe');
    _emailController = TextEditingController(text: 'johndoe@example.com');
    _passwordController = TextEditingController(text: 'password123');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              setState(() {
                _isEditing = true;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Username'),
            TextField(
              controller: _usernameController,
              enabled: _isEditing,
            ),
            SizedBox(height: 16.0),
            Text('Email'),
            TextField(
              controller: _emailController,
              enabled: _isEditing,
            ),
            SizedBox(height: 16.0),
            Text('Password'),
            TextField(
              controller: _passwordController,
              obscureText: true,
              enabled: _isEditing,
            ),
            SizedBox(height: 16.0),
            if (_isEditing)
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement save functionality
                  setState(() {
                    _isEditing = false;
                  });
                },
                child: Text('Save'),
              ),
          ],
        ),
      ),
    );
  }
}
