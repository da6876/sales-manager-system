<?php

namespace App\Exports;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class SmsOrdersExport implements FromCollection, WithHeadings
{
    public function collection()
    {
        return DB::table('sms_orders as o')
            ->join('sms_customers as c', 'o.cust_id', '=', 'c.id')
            ->select('o.order_number', 'c.name', 'c.phone', 'c.email','o.total_amount','o.vat_amount','o.discount_amount',
                'o.received_amount','o.revised_amount','o.payment_status','o.payment_method','o.order_date')
            ->get();
    }

    public function headings(): array
    {
        return [
            'Order Number',
            'Customer Name',
            'Customer Phone',
            'Customer Email',
            'Total Amount',
            'Vat Amount',
            'Discount Amount',
            'Received Amount',
            'Return Amount',
            'Payment Status',
            'Payment Method',
            'Order Date',
        ];
    }
}
