<?php
namespace Crater;

use Illuminate\Database\Eloquent\Model;
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
        return $query->where('practices.name', 'LIKE', '%'.$search.'%');
    }

    public function scopeWhereEmail($query, $email)
    {
        return $query->where('practices.email', $email);
    }

    public function scopeWherePhone($query, $phone)
    {
        return $query->where('practices.phone', $phone);
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

        if ($filters->get('email')) {
            $query->whereEmail($filters->get('email'));
        }

        if ($filters->get('phone')) {
            $query->wherePhone($filters->get('phone'));
        }

        if ($filters->get('orderByField') || $filters->get('orderBy')) {
            $field = $filters->get('orderByField') ? $filters->get('orderByField') : 'name';
            $orderBy = $filters->get('orderBy') ? $filters->get('orderBy') : 'asc';
            $query->whereOrder($field, $orderBy);
        }
    }
}
