class Trial extends StatefulWidget {
  const Trial({super.key});

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Future<String> getUser() async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('trial');
      final snapshot = await users.doc(email).get();
      final data = snapshot.data() as Map<String, dynamic>;
      return data;
      // return data['full_name'];
    } catch (e) {
      return 'Error fetching user';
    }
  }
}
