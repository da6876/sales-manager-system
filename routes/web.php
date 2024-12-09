<?php

use Illuminate\Support\Facades\Route;


Route::middleware(['xss.protection'])->group(function () {
    Route::get('login', [\App\Http\Controllers\UserConfig\UsersController::class, 'LoginFrom'])->name('login');
    Route::post('requestLogin',[\App\Http\Controllers\UserConfig\UsersController::class,'authenticate']);
    Route::get('getBrandInfo', [App\Http\Controllers\settings\BrandNameController::class, 'getBrandInfo']);
    Route::get('WebSettings', [App\Http\Controllers\DashboardController::class, 'WebSettings'])->name('WebSettings');

    Route::get('reset-email', [App\Http\Controllers\settings\UserProfileController::class, 'showLinkRequestForm']);
    Route::post('sendResetLinkEmail', [App\Http\Controllers\settings\UserProfileController::class, 'sendResetLinkEmail']);
    Route::post('reset', [App\Http\Controllers\settings\UserProfileController::class, 'reset']);
    Route::get('password-reset/{token}/{email}', [App\Http\Controllers\settings\UserProfileController::class, 'showResetForm'])->name('password.reset');
    Route::post('password/reset', [App\Http\Controllers\settings\UserProfileController::class, 'reset'])->name('password.update');

    Route::group(['middleware' => 'auth'], function () {
        Route::get('dashboard', [\App\Http\Controllers\DashboardController::class, 'index'])->name('welcome');
        Route::get('/top-selling-products-dashbord', [\App\Http\Controllers\DashboardController::class, 'topSellingProducts'])->name('top.selling.products');
        Route::get('/recent-sales', [\App\Http\Controllers\DashboardController::class, 'getRecentSales'])->name('recent.sales');

        Route::get('/', [\App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard');
        Route::post('/logout',[\App\Http\Controllers\UserConfig\UsersController::class,'logout'])->name('logout');

        /*----------------------------------  Start Web Setup   ---------------------------------------*/
        Route::get('/operation-logs', [App\Http\Controllers\settings\OperationLogController::class, 'index']);
        Route::get('/operation-logs-notification', [App\Http\Controllers\settings\OperationLogController::class, 'indexs']);
        Route::resource('SidebarNav', App\Http\Controllers\settings\SidebarNavController::class);
        Route::post('/get/all/SidebarNav', [App\Http\Controllers\settings\SidebarNavController::class, 'getData'])->name('all.SidebarNav');

        Route::resource('BrandName', App\Http\Controllers\settings\BrandNameController::class);

        Route::resource('user-profile', App\Http\Controllers\settings\UserProfileController::class);
        Route::post('upload-image', [App\Http\Controllers\settings\UserProfileController::class, 'updateProfileImage']);
        Route::post('user-profile-update', [App\Http\Controllers\settings\UserProfileController::class, 'updateProfile']);
        Route::post('user-password-change', [App\Http\Controllers\settings\UserProfileController::class, 'changePassword']);
        Route::post('/get/all/BrandName', [App\Http\Controllers\settings\BrandNameController::class, 'getData'])->name('all.BrandName');

        /*----------------------------------  End Web Setup   ---------------------------------------*/



        /*----------------------------------  Start User Config   ---------------------------------------*/
        Route::resource('User', \App\Http\Controllers\UserConfig\UsersController::class);
        Route::get('GetBranchFreeUser', [\App\Http\Controllers\UserConfig\UsersController::class, 'GetBranchFreeUser']);
        Route::get('GetRoles', [\App\Http\Controllers\UserConfig\UsersController::class, 'GetRoles']);
        Route::get('GetBranch', [\App\Http\Controllers\UserConfig\UsersController::class, 'GetBranch']);
        Route::post('/get/all/User', [\App\Http\Controllers\UserConfig\UsersController::class, 'getData'])->name('all.User');

        Route::resource('BranchInfo', App\Http\Controllers\UserConfig\BranchInfoController::class);
        Route::post('/get/all/BranchInfo', [App\Http\Controllers\UserConfig\BranchInfoController::class, 'getData'])->name('all.BranchInfo');

        Route::resource('Permission', App\Http\Controllers\UserConfig\PermissionController::class);
        Route::post('/get/all/Permission', [App\Http\Controllers\UserConfig\PermissionController::class, 'getData'])->name('all.Permission');

        Route::resource('Roles', App\Http\Controllers\UserConfig\RolesController::class);
        Route::post('/get/all/Roles', [App\Http\Controllers\UserConfig\RolesController::class, 'getData'])->name('all.Roles');
        Route::get('/addpermission/{roleid}', [\App\Http\Controllers\UserConfig\RolesController::class, 'addPermissionToRole']);
        Route::post('GivePermissionToRole', [\App\Http\Controllers\UserConfig\RolesController::class, 'GivePermissionToRole']);
        Route::get('addMenuPermision/{id}', [\App\Http\Controllers\UserConfig\RolesController::class, 'getRolePermissions']);
        Route::post('/saveMenuPermissions', [\App\Http\Controllers\UserConfig\RolesController::class, 'saveMenuPermissions'])->name('saveMenuPermissions');

        /*----------------------------------  End User Config   ---------------------------------------*/


        /*----------------------------------  Start Product Setup   ---------------------------------------*/
        Route::resource('ProType', App\Http\Controllers\ProductSetup\ProTypeController::class);
        Route::post('/get/all/ProType', [App\Http\Controllers\ProductSetup\ProTypeController::class, 'getData'])->name('all.ProType');

        Route::resource('ProBrand', App\Http\Controllers\ProductSetup\ProBrandController::class);
        Route::post('/get/all/ProBrand', [App\Http\Controllers\ProductSetup\ProBrandController::class, 'getData'])->name('all.ProBrand');

        Route::resource('ProCategory', App\Http\Controllers\ProductSetup\ProCategoryController::class);
        Route::post('/get/all/ProCategory', [App\Http\Controllers\ProductSetup\ProCategoryController::class, 'getData'])->name('all.ProCategory');

        Route::resource('ProSubCategory', App\Http\Controllers\ProductSetup\ProSubCategoryController::class);
        Route::post('/get/all/ProSubCategory', [App\Http\Controllers\ProductSetup\ProSubCategoryController::class, 'getData'])->name('all.ProSubCategory');

        Route::resource('ProInfo', App\Http\Controllers\ProductSetup\ProInfoController::class);
        Route::post('/get/all/ProInfo', [App\Http\Controllers\ProductSetup\ProInfoController::class, 'getData'])->name('all.ProInfo');
        Route::post('getProductList', [App\Http\Controllers\ProductSetup\ProInfoController::class, 'getProductList'])->name('all.ProductList');
        Route::post('getProductLists', [App\Http\Controllers\ProductSetup\ProInfoController::class, 'getProductLists'])->name('getProductList');


        Route::resource('Purchase', App\Http\Controllers\PurchaseController::class);
        Route::get('dropdownSelect',[App\Http\Controllers\PurchaseController::class,'dropdownSelect']);
        Route::post('/get/all/Purchase', [App\Http\Controllers\PurchaseController::class, 'getData'])->name('all.Purchase');

        /*----------------------------------  End Product Setup   ---------------------------------------*/

        /*----------------------------------  Start report Routes   ---------------------------------------*/
        Route::resource('SellInfo', App\Http\Controllers\SaleInfo\SaleInfoController::class);
        Route::post('/get/all/SellInfo', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'getData'])->name('all.SellInfo');
        Route::get('POS', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'POS'])->name('POS');
        Route::get('getSaleInfoData', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'getSaleInfoData']);

        Route::resource('customer', App\Http\Controllers\SaleInfo\CustomerController::class);
        Route::post('/get/all/customer', [App\Http\Controllers\SaleInfo\CustomerController::class, 'getData'])->name('all.customer');
        Route::get('/search-customers', [App\Http\Controllers\SaleInfo\CustomerController::class, 'searchByPhone']);

        Route::get('/customer/export/csv', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'exportCsv'])->name('customer.export.csv');
        Route::get('/customer/export/pdf', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'exportPdf'])->name('customer.export.pdf');
        Route::get('/customer/export/excel', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'exportExcel'])->name('customer.export.excel');

        Route::get('print-invoice/{order_number}', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'printInvoice'])->name('PrintInvoice');

        Route::get('/sale/export/csv', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'exportCsv'])->name('sale.export.csv');
        Route::get('/sale/export/pdf', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'exportPdf'])->name('sale.export.pdf');
        Route::get('/sale/export/excel', [App\Http\Controllers\SaleInfo\SaleInfoController::class, 'exportExcel'])->name('sale.export.excel');

        Route::get('/top-customers', [\App\Http\Controllers\report\ReportController::class, 'topCustomers'])->name('Reports.topCustomers');
        Route::get('/top-selling-products', [\App\Http\Controllers\report\ReportController::class, 'topSellingProducts'])->name('Reports.topSellingProducts');
        Route::get('/sales-report', [\App\Http\Controllers\report\ReportController::class, 'salesReport'])->name('Reports.salesReport');
        Route::get('/sales-info-report', [\App\Http\Controllers\report\ReportController::class, 'salesInfoReport'])->name('Reports.salesInfoReport');
        Route::get('/customer-report', [\App\Http\Controllers\report\ReportController::class, 'customerReport'])->name('Reports.customer');
        Route::get('/product-report', [\App\Http\Controllers\report\ReportController::class, 'productReport'])->name('Reports.product');
        Route::get('/due-report', [\App\Http\Controllers\report\ReportController::class, 'dueReport'])->name('Reports.dues');
        Route::get('/reports-data', [\App\Http\Controllers\report\ReportController::class, 'getChatData']);
        /*----------------------------------  End report Routes   ---------------------------------------*/
    });
});
Route::resource('orders', App\Http\Controllers\SaleInfo\OrderController::class);
