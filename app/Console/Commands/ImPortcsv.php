<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\ThailandProvince;
use App\Models\Plant;
use App\Models\PlantProduction;

class ImportCSV extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'import:csv-1';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    private function readCSV($csvFile, $array)
    {
        $file_handle = fopen($csvFile, 'r');
        while (!feof($file_handle)) {
            $line_of_text[] = fgetcsv($file_handle, 0, $array['delimiter']);
        }
        fclose($file_handle);
        return $line_of_text;
    }

    private function addToDatabase($results, $plant_id)
    {
        foreach($results as $result) {
            $rec = ThailandProvince::where('province_name', $result[0])->get();
            
            if($rec) {
                echo $rec[0]->id;
                echo " ";
                echo $rec[0]->province_name;
                echo " Added \n";

                $plant_production = new PlantProduction();
                $plant_production->plant_id = $plant_id;
                $plant_production->province_id = $rec[0]->id;
                $plant_production->year = 2562;
                $plant_production->production_ton = $result[1];
                $plant_production->ratio = $result[2];
                $plant_production->land_rai = $result[3];
                $plant_production->production_per_land_kg = $result[4];
                $plant_production->save();
            }
        }
    }
    
    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        PlantProduction::truncate();

        $csvFileName = "1_mangosteen_2562.csv";
        $csvFile = public_path('csv_assets/' . $csvFileName);
        $results = $this->readCSV($csvFile, array('delimiter' => ','));

        self::addToDatabase($results, 1);

        $csvFileName = "2_durian_2562.csv";
        $csvFile = public_path('csv_assets/' . $csvFileName);
        $results = $this->readCSV($csvFile, array('delimiter' => ','));

        self::addToDatabase($results, 2);

        $csvFileName = "3_maize_2562.csv";
        $csvFile = public_path('csv_assets/' . $csvFileName);
        $results = $this->readCSV($csvFile, array('delimiter' => ','));

        self::addToDatabase($results, 3);

        $csvFileName = "4_garlic_2562.csv";
        $csvFile = public_path('csv_assets/' . $csvFileName);
        $results = $this->readCSV($csvFile, array('delimiter' => ','));

        self::addToDatabase($results, 4);

        $csvFileName = "5_onion_2562.csv";
        $csvFile = public_path('csv_assets/' . $csvFileName);
        $results = $this->readCSV($csvFile, array('delimiter' => ','));

        self::addToDatabase($results, 5);

        return 0;
    }
}
