import 'dart:convert';
import 'package:p1/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {'limit': '18', 'start': '0', 'tag': 'list.recipe.popular'});

    final response = await http.get(uri, headers: {
      'x-rapidapi-key': "0a9bd9ad36msh9da804e09688e05p1fcfcejsne6c5cc60e965",
      'x-rapidapi-host': "yummly2.p.rapidapi.com",
      'useQueryString': "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
