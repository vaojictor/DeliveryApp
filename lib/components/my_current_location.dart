import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Sua localizção "),
        content: const TextField(
          decoration: InputDecoration(hintText: "Procurar endereço..."),
        ),
        actions: [
          // cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancelar"),
          ),

          // save button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Salvar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver Now',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // address
                Text(
                  "Rua, Número, Cidade",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),

                // drop down menu
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
