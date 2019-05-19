<?php

Breadcrumbs::register('gallery.index', function ($trail) {
    $trail->push('Galerie', action('GalleriesController@index'));
});

Breadcrumbs::register('gallery.create', function ($trail) {
    $trail->parent('gallery.index');
    $trail->push('Nowa galeria', action('GalleriesController@create'));
});

Breadcrumbs::register('gallery.edit', function ($trail, $gallery ) {
    $trail->parent('gallery.index');
    $trail->push('Edycja galerii: ' . $gallery->comment, action('GalleriesController@edit', [$gallery->id] ));
});


Breadcrumbs::register('reference.index', function ($trail) {
    $trail->push('Referencje', action('ReferencesController@index'));
});

Breadcrumbs::register('reference.create', function ($trail) {
    $trail->parent('reference.index');
    $trail->push('Nowa referencja', action('ReferencesController@create'));
});

Breadcrumbs::register('reference.edit', function ($trail, $reference ) {
    $trail->parent('reference.index');
    $trail->push('Edycja referencji: ' . $reference->full_name, action('ReferencesController@edit', [$reference->id] ));
});




Breadcrumbs::register('experiance.index', function ($trail) {
    $trail->push('Doświadczenie', action('ExperiancesController@index'));
});

Breadcrumbs::register('experiance.create', function ($trail) {
    $trail->parent('experiance.index');
    $trail->push('Nowy wpis', action('ExperiancesController@create'));
});

Breadcrumbs::register('experiance.edit', function ($trail, $experiance ) {
    $trail->parent('experiance.index');
    $trail->push('Edycja wpisu: ' . $experiance->name, action('ExperiancesController@edit', [$experiance->id] ));
});


Breadcrumbs::register('dictionary.index', function ($trail) {
    $trail->push('Słowniki', action('DictionariesController@index'));
});

Breadcrumbs::register('dictionary.edit', function ($trail, $dict ) {
    $trail->parent('experiance.index');
    $trail->push('Edycja: ' . $dict->value, action('DictionariesController@edit', [$dict->id] ));
});





Breadcrumbs::register('experiance_groups.index', function ($trail) {
    $trail->push('Grupy', action('ExperiancesGroupsController@index'));
});
 
Breadcrumbs::register('experiance_groups.create', function ($trail) {
    $trail->parent('experiance_groups.index');
    $trail->push('Nowa grupa', action('ExperiancesGroupsController@create'));
});

Breadcrumbs::register('experiance_groups.edit', function ($trail, $group ) {
    $trail->parent('experiance_groups.index');
    $trail->push('Edycja grupy: ' . $group->title, action('ExperiancesGroupsController@edit', [$group->id] ));
});


Breadcrumbs::register('news.index', function ($trail) {
    $trail->push('Newsy', action('NewsController@index'));
});

Breadcrumbs::register('news.create', function ($trail) {
    $trail->parent('news.index');
    $trail->push('Nowy news', action('NewsController@create'));
});

Breadcrumbs::register('news.edit', function ($trail, $news ) {
    $trail->parent('news.index');
    $trail->push('Edycja newsa: ' . $news->title, action('NewsController@edit', [$news->id] ));
});
