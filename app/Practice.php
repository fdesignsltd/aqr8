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
        'address2',
        'address3',
        'county',
        'city',
        'post_code',
        'phone',
        'fax',
        'email',
        'website',
        'invoice_note',
        'nhs_normal',
        'nhs_ooh',
        'nhs_unpensioned',
        'privatenote',
        'partners',
        'notes',
        'user_id'
    ];

  

    public function scopeWhereSearch($query, $search)
    {
        return $query->where('practices.name', 'LIKE', '%'.$search.'%');
    }

    public function scopeWhereEmail($query, $email)
    {
        return $query->where('practices.email',  'LIKE', '%'.$email.'%');
    }

    public function scopeWherePhone($query, $phone)
    {
        return $query->where('practices.phone',  'LIKE', '%'.$phone.'%');
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


    public static function deletePractice($id)
    {
        $practice = Practice::find($id);

   
        $practice->delete();

        return true;
    }
}
