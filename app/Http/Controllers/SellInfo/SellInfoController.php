<?php

namespace App\Http\Controllers\SellInfo;

use App\Http\Controllers\Controller;
use App\Models\SellInfo\Order;
use App\Models\SellInfo\OrderDtl;

class SellInfoController extends Controller
{
    public function POS()
    {
        return view('SellInfo.create');
    }
    public function printInvoice($order_number)
    {
        $orderData = Order::where('order_number', $order_number)->firstOrFail();
        $orderDtlData = OrderDtl::where('order_id', $orderData->id)->get(); // Use get() for multiple items

        // Pass the data to the view
        return view('reports.invoice', compact('orderData', 'orderDtlData'));
    }
}
