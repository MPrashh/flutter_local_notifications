import 'package:flutter/material.dart';
import 'package:local_notification/notification_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Click Below Button to get the Notification",
              ),
            ),
            ElevatedButton(
              child: const Text(
                'Press Here :)',
              ),
              onPressed: () {
                NotificationService().showNotification(
                  title: 'Hello, Welcome',
                  body: 'This is message from Local Notification',
                );
                //NotificationService().scheduleNotification();
              },
            ),
          ],
        ),
      ),
    );
  }
}
