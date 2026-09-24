<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {

    $user = Auth::user();

    if (!$user) {
        return redirect('/user');
    }

    if ($user->hasAnyRole(['Admin', 'Super Admin'])) {
        return redirect('/admin');
    }

    return redirect('/user');
});
