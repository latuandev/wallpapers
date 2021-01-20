<?php

namespace App\Http\Controllers;

use App\Http\Resources\Wallpapers as ResourcesWallpapers;
use Illuminate\Http\Request;
use App\Type;
use Illuminate\Support\Facades\DB;

class APIController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $types = DB::table('types')->join('wallpapers', 'types.id', '=', 'wallpapers.type_id')->select('types.*', 'wallpapers.img_url')->get();
        return ResourcesWallpapers::collection($types);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $findId = Type::find($id);
        $idExist = $findId->id;

        for ($i=1; $i <= 50; $i++) {
            if($idExist == $i) {
                $types = DB::table('types')->where('types.id', $idExist)->join('wallpapers', 'types.id', '=', 'wallpapers.type_id')->select('types.*', 'wallpapers.img_url')->get();
            }
        }

        return ResourcesWallpapers::collection($types);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
