<?php

use Illuminate\Support\Facades\Route;


Route::get('alert', [\App\Http\Controllers\DashboardController::class, 'alert'])->name('alert');
Route::get('button', [\App\Http\Controllers\DashboardController::class, 'button'])->name('button');
Route::get('form1', [\App\Http\Controllers\DashboardController::class, 'form'])->name('form1');
Route::get('form2', [\App\Http\Controllers\DashboardController::class, 'form'])->name('form2');
Route::get('table1', [\App\Http\Controllers\DashboardController::class, 'form'])->name('table1');
Route::get('table2', [\App\Http\Controllers\DashboardController::class, 'form'])->name('table2');
Route::get('chart1', [\App\Http\Controllers\DashboardController::class, 'form'])->name('chart1');
Route::get('chart2', [\App\Http\Controllers\DashboardController::class, 'form'])->name('chart2');
Route::get('test', [\App\Http\Controllers\DashboardController::class, 'test'])->name('test');


Route::post('/orders', [App\Http\Controllers\SellInfo\OrderController::class, 'store']);
Route::middleware(['xss.protection'])->group(function () {
    Route::get('login', [\App\Http\Controllers\UserConfig\UsersController::class, 'LoginFrom'])->name('login');
    Route::post('requestLogin',[\App\Http\Controllers\UserConfig\UsersController::class,'authenticate']);
    Route::get('getBrandInfo', [App\Http\Controllers\WebSetup\BrandNameController::class, 'getBrandInfo']);
    Route::get('WebSettings', [App\Http\Controllers\DashboardController::class, 'WebSettings'])->name('WebSettings');

    Route::group(['middleware' => 'auth'], function () {
        Route::get('Dashboard', [\App\Http\Controllers\DashboardController::class, 'index'])->name('welcome');
        Route::get('/', [\App\Http\Controllers\DashboardController::class, 'index'])->name('Dashboard');
        Route::post('/logout',[\App\Http\Controllers\UserConfig\UsersController::class,'logout'])->name('logout');

        Route::resource('SidebarNav', App\Http\Controllers\WebSetup\SidebarNavController::class);
        Route::post('/get/all/SidebarNav', [App\Http\Controllers\WebSetup\SidebarNavController::class, 'getData'])->name('all.SidebarNav');

        Route::resource('BrandName', App\Http\Controllers\WebSetup\BrandNameController::class);
        Route::post('/get/all/BrandName', [App\Http\Controllers\WebSetup\BrandNameController::class, 'getData'])->name('all.BrandName');

        Route::resource('BranchInfo', App\Http\Controllers\UserConfig\BranchInfoController::class);
        Route::post('/get/all/BranchInfo', [App\Http\Controllers\UserConfig\BranchInfoController::class, 'getData'])->name('all.BranchInfo');

        Route::resource('Permission', App\Http\Controllers\UserConfig\PermissionController::class);
        Route::post('/get/all/Permission', [App\Http\Controllers\UserConfig\PermissionController::class, 'getData'])->name('all.Permission');

        Route::resource('Roles', App\Http\Controllers\UserConfig\RolesController::class);
        Route::post('/get/all/Roles', [App\Http\Controllers\UserConfig\RolesController::class, 'getData'])->name('all.Roles');
        Route::get('/addpermission/{roleid}', [\App\Http\Controllers\UserConfig\RolesController::class, 'addPermissionToRole']);
        Route::post('GivePermissionToRole', [\App\Http\Controllers\UserConfig\RolesController::class, 'GivePermissionToRole']);

        Route::resource('User', \App\Http\Controllers\UserConfig\UsersController::class);
        Route::get('GetRoles', [\App\Http\Controllers\UserConfig\UsersController::class, 'GetRoles']);
        Route::get('GetBranch', [\App\Http\Controllers\UserConfig\UsersController::class, 'GetBranch']);
        Route::post('/get/all/User', [\App\Http\Controllers\UserConfig\UsersController::class, 'getData'])->name('all.User');


        Route::resource('ProInfo', App\Http\Controllers\ProductSetup\ProInfoController::class);
        Route::post('/get/all/ProInfo', [App\Http\Controllers\ProductSetup\ProInfoController::class, 'getData'])->name('all.ProInfo');
        Route::post('getProductList', [App\Http\Controllers\ProductSetup\ProInfoController::class, 'getProductList'])->name('all.ProductList');

        Route::resource('ProCategory', App\Http\Controllers\ProductSetup\ProCategoryController::class);
        Route::post('/get/all/ProCategory', [App\Http\Controllers\ProductSetup\ProCategoryController::class, 'getData'])->name('all.ProCategory');

        Route::resource('ProBrand', App\Http\Controllers\ProductSetup\ProBrandController::class);
        Route::post('/get/all/ProBrand', [App\Http\Controllers\ProductSetup\ProBrandController::class, 'getData'])->name('all.ProBrand');

        Route::resource('ProSubCategory', App\Http\Controllers\ProductSetup\ProSubCategoryController::class);
        Route::post('/get/all/ProSubCategory', [App\Http\Controllers\ProductSetup\ProSubCategoryController::class, 'getData'])->name('all.ProSubCategory');

        Route::resource('ProType', App\Http\Controllers\ProductSetup\ProTypeController::class);
        Route::post('/get/all/ProType', [App\Http\Controllers\ProductSetup\ProTypeController::class, 'getData'])->name('all.ProType');

        Route::resource('SellInfo', App\Http\Controllers\SellInfo\SellInfoController::class);
        Route::post('/get/all/SellInfo', [App\Http\Controllers\SellInfo\SellInfoController::class, 'getData'])->name('all.SellInfo');
        Route::get('POS', [App\Http\Controllers\SellInfo\SellInfoController::class, 'POS'])->name('POS');

        Route::get('print-invoice/{order_number}', [App\Http\Controllers\SellInfo\SellInfoController::class, 'printInvoice'])->name('print.invoice');


    });

});
