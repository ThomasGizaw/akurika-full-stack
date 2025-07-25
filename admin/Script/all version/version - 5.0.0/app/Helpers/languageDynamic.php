<?php
function getAllResourceFiles($dir, &$results = array()) {
    $files = scandir($dir);
    foreach ($files as $key => $value) {
        $path = $dir ."/". $value;
        if (!is_dir($path)) {
            $results[] = $path;
        } else if ($value != "." && $value != "..") {
            getAllResourceFiles($path, $results);
        }
    }
    return $results;
}

function getRegexBetween($content) {

    preg_match_all("%\{{__\(['|\"](.*?)['\"]\)}}%i", $content, $matches1, PREG_PATTERN_ORDER);
    preg_match_all("%\@lang\(['|\"](.*?)['\"]\)%i", $content, $matches2, PREG_PATTERN_ORDER);
    preg_match_all("%trans\(['|\"](.*?)['\"]\)%i", $content, $matches3, PREG_PATTERN_ORDER);
    $Alldata = [$matches1[1], $matches2[1], $matches3[1]];
    $data = [];
    foreach ($Alldata as  $value) {
        if(!empty($value)){
            foreach ($value as $val) {
                $data[$val] = $val;
            }
        }
    }
    return $data;
}

function generateLang($path = ''){

    // user panel
    // $paths = getAllResourceFiles(resource_path('views/user'));
    // $paths = array_merge($paths, getAllResourceFiles(resource_path('views/seller')));
    // $paths = array_merge($paths, getAllResourceFiles(resource_path('views/errors')));
    // $paths = array_merge($paths, getAllResourceFiles(resource_path('views/test')));
    // end user panel

    // user validation
    $paths = getAllResourceFiles(app_path('Http/Controllers/User'));
    $paths = array_merge($paths, getAllResourceFiles(app_path('Http/Controllers/test')));
    $paths = array_merge($paths, getAllResourceFiles(app_path('Http/Controllers/Auth')));
    // end user validation

    // admin panel
    // $paths = getAllResourceFiles(resource_path('views/admin'));
    // $paths = array_merge($paths, getAllResourceFiles(resource_path('views/seller')));
    // end admin panel

    // admin validation
    // $paths = getAllResourceFiles(app_path('Http/Controllers/WEB/Admin'));
    // $paths = array_merge($paths, getAllResourceFiles(app_path('Http/Controllers/WEB/Seller')));
    // end validation
    $AllData= [];
    foreach ($paths as $key => $path) {
    $AllData[] = getRegexBetween(file_get_contents($path));
    }
    $modifiedData = [];
    foreach ($AllData as  $value) {
        if(!empty($value)){
            foreach ($value as $val) {
                $modifiedData[$val] = $val;
            }
        }
    }

    // file_put_contents(resource_path('lang/en.json'), json_encode($modifiedData, JSON_PRETTY_PRINT));

    $modifiedData = var_export($modifiedData, true);
    file_put_contents(resource_path('lang/en/user_validation.php'), "<?php\n return {$modifiedData};\n ?>");

}

if (!function_exists('calculateDistance')) {
    function calculateDistance($lat1, $lon1, $lat2, $lon2)
    {
        $earthRadius = 6371; // Radius of the Earth in kilometers

        $lat1 = deg2rad($lat1);
        $lon1 = deg2rad($lon1);
        $lat2 = deg2rad($lat2);
        $lon2 = deg2rad($lon2);

        $latDifference = $lat2 - $lat1;
        $lonDifference = $lon2 - $lon1;

        $a = sin($latDifference / 2) * sin($latDifference / 2) +
            cos($lat1) * cos($lat2) *
            sin($lonDifference / 2) * sin($lonDifference / 2);

        $c = 2 * atan2(sqrt($a), sqrt(1 - $a));

        $distance = $earthRadius * $c; // Distance in kilometers

        return $distance;
    }
}

