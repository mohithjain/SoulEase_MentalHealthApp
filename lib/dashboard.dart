import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class Dashboard extends StatefulWidget {
  final String token;
  const Dashboard({required this.token, Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late String email;

  @override
  void initState() {
    super.initState();
    print(widget.token);
    Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);
    print(jwtDecodedToken);
    email = jwtDecodedToken['email'] ?? 'Unknown User'; // Handle cases where 'username' might not be present
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(email),
          ],
        ),
      ),
    );
  }
}
