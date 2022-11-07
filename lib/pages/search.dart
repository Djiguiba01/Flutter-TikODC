import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  // const SearchPage({super.key});

  // Sa nous permet de controller le text ecrit dans le champs (Effacer,Ajouter, Recuperer..)
  TextEditingController queryTextEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recherche')),
      // Barre de recherche
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: queryTextEditingController,
                        decoration: InputDecoration(
                            // icon: Icon(Icons.logout),
                            suffixIcon: Icon(Icons.visibility),
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.deepOrange,
                                ))),
                      )),
                ),
                // Creation Button
                IconButton(
                    onPressed: () {
                      //  Pour pouvoir recuperer la valeur
                      String query = queryTextEditingController.text;
                      print(query);
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.deepOrange,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
