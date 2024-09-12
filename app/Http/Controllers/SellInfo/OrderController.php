<?php

namespace App\Http\Controllers\SellInfo;

use App\Http\Controllers\Controller;
use App\Models\SellInfo\Order;
use App\Models\SellInfo\OrderDtl;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'customerId' => 'required|numeric',
            'total_amount' => 'required|numeric',
            'vat_amount' => 'required|numeric',
            'discount_amount' => 'required|numeric',
            'received_amount' => 'required|numeric',
            'revised_amount' => 'required|numeric',
            'payment_status' => 'required|string',
            'payment_method' => 'required|string',

            'items.*.id' => 'required|exists:products,id',
            'items.*.quantity' => 'required|integer|min:1',
            'items.*.price' => 'required|numeric',
            'items.*.title' => 'nullable|string',
            'items.*.imageUrl' => 'nullable|string',
            'items.*.special_request' => 'nullable|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'statusCode' => 204,
                'statusMsg' => 'Validation Error.',
                'errors' => $validator->errors()
            ]);
        }

        \DB::beginTransaction();

        try {
            $order = Order::create([
                'order_number' => 'ORD-' . time(),
                'order_date' => now(),
                'cust_id' => $request->input('customerId'),
                'vat_amount' => $request->input('vat_amount'),
                'discount_amount' => $request->input('discount_amount'),
                'received_amount' => $request->input('received_amount'),
                'revised_amount' => $request->input('revised_amount'),
                'total_amount' => $request->input('total_amount'),
                'status' => $request->input('payment_status'),
                'payment_status' => $request->input('payment_status'),
                'payment_method' => $request->input('payment_method'),
                'create_by' => auth()->user()->id,
                'create_date' => $this->getCurrentDateTime()
            ]);
            $jsonString = $request->input('items');
            $decodedJsonData = html_entity_decode($jsonString, ENT_QUOTES, 'UTF-8');
            $decodedData = json_decode($decodedJsonData, true);

            foreach ($decodedData as $item) {
                OrderDtl::create([
                    'order_id' => $order->id,
                    'pro_id' => $item['id'],
                    'quantity' => $item['quantity'],
                    'price' => $item['price'],
                    'total_price' => $item['quantity'] * $item['price'],
                    'special_request' => '',
                    'create_by' => auth()->user()->id,
                    'create_date' => $this->getCurrentDateTime()
                ]);
            }
            \DB::commit();
            return response()->json([
                'statusCode' => 200,
                'statusMsg' => 'Order created successfully',
                'order_number' => $order->order_number
            ]);
        } catch (\Exception $e) {
            \DB::rollBack();
            return response()->json([
                'statusCode' => 500,
                'statusMsg' => 'Failed to create order',
                'error' => $e->getMessage(),
                'data' =>$request->all(),
            ]);
        }
    }

}
