<?php

Breadcrumbs::for('gallery.index', function ($trail) {
    $trail->push('Galerie', action('GalleriesController@index'));
});

Breadcrumbs::for('gallery.create', function ($trail) {
    $trail->parent('gallery.index');
    $trail->push('Nowa galeria', action('GalleriesController@create'));
});

Breadcrumbs::for('gallery.edit', function ($trail, $gallery ) {
    $trail->parent('gallery.index');
    $trail->push('Edycja galerii: ' . $gallery->comment, action('GalleriesController@edit', [$gallery->id] ));
});


Breadcrumbs::for('reference.index', function ($trail) {
    $trail->push('Referencje', action('ReferencesController@index'));
});

Breadcrumbs::for('reference.create', function ($trail) {
    $trail->parent('reference.index');
    $trail->push('Nowa referencja', action('ReferencesController@create'));
});

Breadcrumbs::for('reference.edit', function ($trail, $reference ) {
    $trail->parent('reference.index');
    $trail->push('Edycja referencji: ' . $reference->full_name, action('ReferencesController@edit', [$reference->id] ));
});




Breadcrumbs::for('experiance.index', function ($trail) {
    $trail->push('Doświadczenie', action('ExperiancesController@index'));
});

Breadcrumbs::for('experiance.create', function ($trail) {
    $trail->parent('experiance.index');
    $trail->push('Nowy wpis', action('ExperiancesController@create'));
});

Breadcrumbs::for('experiance.edit', function ($trail, $experiance ) {
    $trail->parent('experiance.index');
    $trail->push('Edycja wpisu: ' . $experiance->name, action('ExperiancesController@edit', [$experiance->id] ));
});


Breadcrumbs::for('dictionary.index', function ($trail) {
    $trail->push('Słowniki', action('DictionariesController@index'));
});

Breadcrumbs::for('dictionary.edit', function ($trail, $dict ) {
    $trail->parent('experiance.index');
    $trail->push('Edycja: ' . $dict->value, action('DictionariesController@edit', [$dict->id] ));
});





Breadcrumbs::for('experiance_groups.index', function ($trail) {
    $trail->push('Grupy', action('ExperiancesGroupsController@index'));
});
 
Breadcrumbs::for('experiance_groups.create', function ($trail) {
    $trail->parent('experiance_groups.index');
    $trail->push('Nowa grupa', action('ExperiancesGroupsController@create'));
});

Breadcrumbs::for('experiance_groups.edit', function ($trail, $group ) {
    $trail->parent('experiance_groups.index');
    $trail->push('Edycja grupy: ' . $group->title, action('ExperiancesGroupsController@edit', [$group->id] ));
});


