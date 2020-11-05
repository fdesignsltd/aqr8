<?php
namespace Crater\Http\Controllers;

use Illuminate\Http\Request;
use Crater\Http\Requests;
use Crater\Practice;
use Crater\User;
use Auth;

class PracticesController extends Controller
{
    public function index(Request $request)
    {

        $limit = $request->has('limit') ? $request->limit : 10;

        $practices = Practice::select('practices.*')
            ->where('user_id', Auth::id())
            ->applyFilters($request->only([
                'search',
                'name',
                'email',
                'phone',
                'orderByField',
                'orderBy'
            ]))
            ->latest()
            ->paginate($limit);

        return response()->json([
            'practices' => $practices
        ]);


    }

    public function edit(Request $request, $id)
    {
        $practice = Practice::find($id);

        return response()->json([
            'practice' => $practice
        ]);
    }


     /**
     * Create Practice.
     *
     * @param  Crater\Http\Requests\PracticesRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Requests\PracticesRequest $request)
    {

        $practice = new Practice();
        $practice->name = $request->name;
        $practice->practice_code = $request->practice_code;
        $practice->pct = $request->pct;
        $practice->mileage = $request->mileage;
        $practice->manager = $request->manager;
        $practice->address = $request->address;
        $practice->address2 = $request->address2;
        $practice->address3 = $request->address3;
        $practice->county = $request->county;
        $practice->city = $request->city;
        $practice->post_code = $request->post_code;
        $practice->phone = $request->phone;
        $practice->fax = $request->fax;
        $practice->email = $request->email;
        $practice->website = $request->website;
        $practice->invoice_note = $request->invoice_note;
        $practice->nhs_normal = $request->nhs_normal;
        $practice->nhs_ooh = $request->nhs_ooh;
        $practice->nhs_unpensioned = $request->nhs_unpensioned;
        $practice->privatenote = $request->privatenote;
        $practice->partners = $request->partners;
        $practice->notes = $request->notes;
        $practice->user_id = Auth::id();
        $practice->save();

        $practice = Practice::find($practice->id);

        return response()->json([
            'practice' => $practice,
            'success' => true
        ]);
    }

    /**
     * Update an existing Practice.
     *
     * @param  Crater\Http\Requests\PracticesRequest $request
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Requests\PracticesRequest $request, $id)
    {
        $practice = Practice::find($id);
        $practice->name = $request->name;
        $practice->practice_code = $request->practice_code;
        $practice->pct = $request->pct;
        $practice->mileage = $request->mileage;
        $practice->manager = $request->manager;
        $practice->address = $request->address;
        $practice->address2 = $request->address2;
        $practice->address3 = $request->address3;
        $practice->county = $request->county;
        $practice->post_code = $request->post_code;
        $practice->phone = $request->phone;
        $practice->fax = $request->fax;
        $practice->email = $request->email;
        $practice->website = $request->website;
        $practice->invoice_note = $request->invoice_note;
        $practice->nhs_normal = $request->nhs_normal;
        $practice->nhs_ooh = $request->nhs_ooh;
        $practice->nhs_unpensioned = $request->nhs_unpensioned;
        $practice->privatenote = $request->privatenote;
        $practice->partners = $request->partners;
        $practice->notes = $request->notes;
        $practice->user_id = Auth::id();


        $practice->save();

        return response()->json([
            'practice' => $practice,
            'success' => true
        ]);
    }


    /**
     * Delete an existing Practice.
     *
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $data = Practice::deletePractice($id);

        if (!$data) {
            return response()->json([
                'error' => 'practice_attached'
            ]);
        }

        return response()->json([
            'success' => $data
        ]);
    }



    /**
     * Delete a list of existing Practices.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function delete(Request $request)
    {
        $practices = [];
        foreach ($request->id as $id) {
            $practice = Practice::deletePractice($id);
            if ($practice) {
                array_push($practices, $id);
            }
        }

        if (empty($practices)) {
            return response()->json([
                'success' => true
            ]);
        }

        return response()->json([
            'practices' => $practices
        ]);
    }
}
