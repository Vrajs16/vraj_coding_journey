import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      scrollbarOrientation: ScrollbarOrientation.right,
      thumbVisibility: true,
      trackVisibility: true,
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext content, int index) {
          return ListTile(
              title: Text('Item ${index + 1}'),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.select_all),
              onTap: () {
                debugPrint('Item ${index + 1} tapped');
              });
        },
      ),
    );
  }
}
