import 'package:flutter_meals_app/models/meal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
        (ref) => FavoriteMealsNotifier());

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    if (state.contains(meal)) {
      state = List.from(state)..remove(meal);
      return false;
    } else {
      state = List.from(state)..add(meal);
      return true;
    }
  }
}
