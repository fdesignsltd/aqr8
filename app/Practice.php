<?php
namespace Crater;

use Illuminate\Database\Eloquent\Model;
use Crater\InvoiceItem;
use Crater\EstimateItem;
use Carbon\Carbon;

class Practice extends Model
{
    protected $fillable = [
        'name',
        'practice_code',
        'pct',
        'mileage',
        'manager',
        'address',
        'post_code',
        'phone',
        'fax',
        'email',
        'website',
        'user_id'
    ];

  

    public function scopeWhereSearch($query, $search)
    {
        return $query->where('items.name', 'LIKE', '%'.$search.'%');
    }

    public function scopeWherePrice($query, $price)
    {
        return $query->where('items.price', $price);
    }

    public function scopeWhereUnit($query, $unit_id)
    {
        return $query->where('items.unit_id', $unit_id);
    }

    public function scopeWhereOrder($query, $orderByField, $orderBy)
    {
        $query->orderBy($orderByField, $orderBy);
    }

    public function scopeApplyFilters($query, array $filters)
    {
        $filters = collect($filters);

        if ($filters->get('search')) {
            $query->whereSearch($filters->get('search'));
        }

        if ($filters->get('price')) {
            $query->wherePrice($filters->get('price'));
        }

        if ($filters->get('unit_id')) {
            $query->whereUnit($filters->get('unit_id'));
        }

        if ($filters->get('orderByField') || $filters->get('orderBy')) {
            $field = $filters->get('orderByField') ? $filters->get('orderByField') : 'name';
            $orderBy = $filters->get('orderBy') ? $filters->get('orderBy') : 'asc';
            $query->whereOrder($field, $orderBy);
        }
    }

    public function getFormattedCreatedAtAttribute($value)
    {
        $dateFormat = CompanySetting::getSetting('carbon_date_format', $this->company_id);
        return Carbon::parse($this->created_at)->format($dateFormat);
    }

   


    public static function deleteItem($id)
    {
        $item = Item::find($id);

        if ($item->taxes()->exists() && $item->taxes()->count() > 0) {
            return false;
        }

        if ($item->invoiceItems()->exists() && $item->invoiceItems()->count() > 0) {
            return false;
        }

        if ($item->estimateItems()->exists() && $item->estimateItems()->count() > 0) {
            return false;
        }

        $item->delete();

        return true;
    }
}
