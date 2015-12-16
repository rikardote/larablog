<?php
use App\User;
use App\Comment;
use Faker\Generator;
/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/*$factory->define(User::class, function(Generator $faker) {
	$array = [
		'name' => $faker->name,
		'email' => $faker->email,
		'password' => bcrypt('carlos'),

	];
	return $array;
});
*/
$factory->define(Comment::class, function(Generator $faker) {
	$array = [
		'name' => $faker->name,
		'email' => $faker->email,
		'comment' => $faker->realText($maxNbChars = 80, $indexSize = 2),
		'article_id' => $faker->numberBetween($min = 1, $max = 8),

	];
	return $array;
});