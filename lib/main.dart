// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'providers/pokemon_provider.dart';
// import 'models/pokemon.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => PokemonProvider()),
//       ],
//       child: MaterialApp(
//         title: 'Flutter PokeAPI Demo',
//         home: PokemonListScreen(),
//       ),
//     );
//   }
// }

// class PokemonListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pokémon List'),
//       ),
//       body: Consumer<PokemonProvider>(
//         builder: (context, provider, child) {
//           if (provider.isLoading) {
//             return Center(child: CircularProgressIndicator());
//           }

//           return ListView.builder(
//             itemCount: provider.pokemonList.length,
//             itemBuilder: (context, index) {
//               Pokemon pokemon = provider.pokemonList[index];
//               return ListTile(
//                 title: Text(pokemon.name),
//                 onTap: () {
                  
//                 },
//               );
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Provider.of<PokemonProvider>(context, listen: false).fetchPokemon();
//         },
//         child: Icon(Icons.refresh),
//      ),
// );
// }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_4/providers/instagram_provider.dart';
import 'package:flutter_application_4/screens/instagram_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => InstagramProvider()),
      ],
      child: MaterialApp(
        home: InstagramScreen(),
      ),
    );
  }
}
