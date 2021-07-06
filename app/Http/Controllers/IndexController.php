<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ThailandProvince;
use DB;

class IndexController extends Controller
{
    public function apiV1()
    {
        $thailandProvinces = ThailandProvince::all();
        return response()->json($thailandProvinces, 200, [], JSON_NUMERIC_CHECK);
    }

    public function farm()
    {
        $google_api_key = env('GOOGLE_API_KEY', "");
        return view('farm', ['google_api_key' => $google_api_key]);
    }

    public function province()
    {
        $provinces = DB::table('thailand_province')
            ->select('*')
            ->orderBy('id')
            ->get();

        $plants = DB::table('plant')
            ->select('*')
            ->orderBy('id')
            ->get();

        $rows = DB::select("
        SELECT 
            thailand_province.id as province_id,
            thailand_province.province_name,
            plant_production.production_ton as production_ton
        FROM thailand_province
        LEFT JOIN plant_production ON plant_production.province_id = thailand_province.id");

        return view('province', [
            'provinces' => $provinces,
            'plants' => $plants,
            'rows' => $rows
        ]);
        return view('province');
    }

    public function blank()
    {
        return view('blank');
        // return view('app.stats-map1', [
        //     'provinces' => $provinces,
        //     'products' => $products,
        //     'branchs' => $branchs,
        //     'rows' => $rows
        // ]);
    }

    public function logout()
    {
        return view('logout');
    }
}
