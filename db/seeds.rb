# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create(
  [
    {
      title: 'Lettuce Salad',
      instructions: 'Wash all produce before you use it. Only break up enough lettuce for each meal as it lasts longer whole.  Break up iceburg lettuce, romaine lettuce and fresh baby spinach into bite size pieces.  Mix together and place in either a large salad bowl or individual bowls. The cucumber can be peeled or not to taste. Slice it in medallions or long along the axis. Extra cucumber can be saved in an air tight bowl with a little water in it.  Cut the tops and bottoms off your radishes and slice them into medallions. Extra radishes can be saved in an open bowl with water in the bottom. Add grape tomatoes to salad. Save extras in the container they came in or a zip lock baggie. Allow diners to apply dressing of thier choice.  Optional toppings -- boiled eggs, shredded cheese, seeds, dried fruit, crutons, olives.'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Iceburg Lettuce',
      measurement: '1 head',
      recipe_ids: '1'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Romaine Lettuce',
      measurement: '1 Bunch',
      recipe_ids: '1'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Fresh Baby Spinach',
      measurement: '1 Bunch',
      recipe_ids: '1'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Cucumber',
      measurement: '1',
      recipe_ids: '1'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Radish',
      measurement: '1 bunch',
      recipe_ids: '1'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Grape Tomatoes',
      measurement: '1 container',
      recipe_ids: '1'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Dressing',
      measurement: 'Variable',
      recipe_ids: '1'
    }
  ]
)




Recipe.create(
  [
    {
      title: 'Fast Iced Tea',
      instructions: 'Boil 1 qt water and pour over tea bags into jar.  Wait 5 minutes.  Fill up your gallon pitcher half way with ice.  Pour over ice into pitcher and fill to top with cold water.  You can leave in the tea bags or throw them away.'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Tea Bags',
      measurement: '5',
      recipe_ids: '2'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Water',
      measurement: '1 Gallon',
      recipe_ids: '2'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Ice',
      measurement: '1/2 Gallon',
      recipe_ids: '2'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Gallon Pitcher',
      measurement: '1',
      recipe_ids: '2'
    }
  ]
)

Ingredient.create(
  [
    {
      name: 'Quart Jar',
      measurement: '1',
      recipe_ids: '2'
    }
  ]
)

