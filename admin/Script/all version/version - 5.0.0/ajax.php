<?php
/**
 * all ajax call will be handle from here
 * */
class Updator{

    private $db;

    public function __construct() {
        if (method_exists($this,$_POST['action_type'])){
            $this->{$_POST['action_type']}($_POST);
        }
    }


    public function replace_app_file(){
        $update_file_path = 'app';
        $old_file_path = '../app';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);

        $this->message([
            'type' => 'success',
            'msg' => "App Files Updated Successfully"
        ]);

    }

    public function replace_bootstrap_file(){
        $update_file_path = 'bootstrap';
        $old_file_path = '../bootstrap';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);

        $this->message([
            'type' => 'success',
            'msg' => "Bootstrap Files Updated Successfully"
        ]);

    }

    public function replace_public_asset_file(){
        $update_file_path = 'public';
        $old_file_path = '../public';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);

        $this->message([
            'type' => 'success',
            'msg' => "Public Files Updated Successfully"
        ]);
    }

    public function replace_vendor_zip_file(){
        $update_file_path = 'vendor.zip';
        $old_file_path = '../';

        $updateFilePath = 'vendor.zip'; // Path to the zip file
        $rootDirectory = '../';  // Root directory of the Laravel project
        $tempVendorDir = $rootDirectory . '/vendor2';  // Temporary vendor folder
        $mainVendorDir = $rootDirectory . '/vendor';   // Main vendor folder
        $backupVendorDir = $rootDirectory . '/vendor_old';  // Backup folder

        try {
            // Step 1: Unzip vendor.zip to the vendor2 folder
            $zip = new ZipArchive();
            if ($zip->open($updateFilePath) === TRUE) {
                // Create the temp vendor2 folder if it doesn't exist
                if (!is_dir($tempVendorDir)) {
                    if (!mkdir($tempVendorDir, 0755, true)) {
                        throw new Exception('Failed to create temporary vendor2 directory.');
                    }
                }

                // Extract files to the temp vendor2 folder
                if (!$zip->extractTo($tempVendorDir)) {
                    throw new Exception('Failed to extract vendor.zip to vendor2.');
                }
                $zip->close();

                // Check if there's an extra 'vendor' folder inside vendor2
                if (is_dir($tempVendorDir . '/vendor')) {
                    // Move the files from vendor2/vendor/* to vendor2/*
                    $this->moveDirectoryContents($tempVendorDir . '/vendor', $tempVendorDir);
                    // Remove the extra vendor folder
                    rmdir($tempVendorDir . '/vendor');
                }

                // Step 2: Rename the current vendor folder to vendor_old
                if (is_dir($mainVendorDir)) {
                    if (!rename($mainVendorDir, $backupVendorDir)) {
                        throw new Exception('Failed to rename vendor folder to vendor_old.');
                    }
                }

                // Step 3: Rename vendor2 to vendor
                if (!rename($tempVendorDir, $mainVendorDir)) {
                    throw new Exception('Failed to rename vendor2 folder to vendor.');
                }

            } else {
                throw new Exception('Failed to open vendor.zip file.');
            }

        } catch (Exception $e) {
            // Handle any errors during the process
            echo 'Error: ' . $e->getMessage();
        }


        $this->message([
            'type' => 'success',
            'msg' => "Vendor Files Unziped Successfully"
        ]);

    }

    private function moveDirectoryContents($source, $destination) {
        $files = scandir($source);
        foreach ($files as $file) {
            if ($file != '.' && $file != '..') {
                rename($source . '/' . $file, $destination . '/' . $file);
            }
        }
    }


    public function replace_config_file(){
        $update_file_path = 'config';
        $old_file_path = '../config';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);

        $this->message([
            'type' => 'success',
            'msg' => "Config Files Updated Successfully"
        ]);
    }

    public function replace_database_file(){
        $update_file_path = 'database';
        $old_file_path = '../database';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);

        $this->message([
            'type' => 'success',
            'msg' => "Database Files Updated Successfully"
        ]);
    }

    public function replace_module_file(){
        $update_file_path = 'Modules';
        $old_file_path = '../Modules';

        // $update_file_path = __DIR__.'/Modules';
        // $old_file_path = __DIR__.'/../@core/Modules';

        if (!is_dir('../Modules') && !file_exists(  '../Modules')) {
            if (!mkdir($concurrentDirectory =  '../Modules' , 0755, true) && !is_dir($concurrentDirectory)) {
                throw new \RuntimeException(sprintf('Directory "%s" was not created', $concurrentDirectory));
            }
        }

        $this->ReplaceFileFolder($update_file_path,$old_file_path);

        $this->message([
            'type' => 'success',
            'msg' => "Modules Files Updated Successfully"
        ]);

    }

    public function replace_resources_file(){
        $update_file_path = 'resources';
        $old_file_path = '../resources';

        $this->ReplaceFileFolder($update_file_path,$old_file_path);

        $this->message([
            'type' => 'success',
            'msg' => "Resource Files Updated Successfully"
        ]);

    }

    public function replace_routes_file(){
        $update_file_path = 'routes';
        $old_file_path = '../routes';

        $this->ReplaceFileFolder($update_file_path,$old_file_path);

        $this->message([
            'type' => 'success',
            'msg' => "Route Files Updated Successfully"
        ]);

    }

    public function replace_vendor_file(){
        $update_file_path = 'vendor';
        $old_file_path = '../vendor';

        $this->ReplaceVendorFileFolder($update_file_path,$old_file_path);

        $this->message([
            'type' => 'success',
            'msg' => "Vendor Files Updated Successfully"
        ]);

    }

    public function replace_custom_file(){
        $change_log_file = file_get_contents('custom_file.json');
        $change_log_list = json_decode($change_log_file);
        $custom_files = $change_log_list->custom;

        foreach ($custom_files as $file){
            if (is_dir('../' . $file->path) && file_exists(  '../' . $file->path)) {
                $update_file_content = file_get_contents( 'custom/' . $file->filename);
                // file_put_contents( '../' . $file->path . '/' . $file->filename, $update_file_content);
                file_put_contents( '../' . $file->filename, $update_file_content);
            } else {
                if (!mkdir($concurrentDirectory =  '../' . $file->path, 0755, true) && !is_dir($concurrentDirectory)) {
                    throw new \RuntimeException(sprintf('Directory "%s" was not created', $concurrentDirectory));
                }
                $update_file_content = file_get_contents(  'custom/' . $file->filename);
                file_put_contents( '../' . $file->filename, $update_file_content);
            }
        }

        $this->message([
            'type' => 'success',
            'msg' => "Custom Files Updated Successfully"
        ]);

    }


    public function ReplaceFileFolder($update_file_path,$old_file_path){

        $all_update_views = $this->get_file_list_by_directory($update_file_path);
        $all_old_views = $this->get_file_list_by_directory($old_file_path);

        foreach ($all_update_views as $new_file){


            $not_allow_to_update_files_list = [
              "dynamic-style.css",
              "dynamic-style.js",
              ".git",
                ".idea",
                ".DS_Store",
            ]; //only file/folder

            if (in_array($new_file,$not_allow_to_update_files_list)){
                continue;
            }



            if (is_dir($update_file_path.'/'.$new_file)){
                $old_file = array_search($new_file,$all_old_views);

                $folder_name = isset($all_old_views[$old_file]) ? $all_old_views[$old_file] : '';

                if (!file_exists($old_file_path.'/'.$new_file)){
                    if (!mkdir($concurrentDirectory = $old_file_path . '/' . $new_file) && !is_dir($concurrentDirectory)) {
                        throw new \RuntimeException(sprintf('Directory "%s" was not created', $concurrentDirectory));
                    }
                    $folder_name = $new_file;
                }
                $this->ReplaceFileFolder($update_file_path.'/'.$new_file,$old_file_path.'/'.$folder_name);
            }else{
                $file_index = array_search($new_file, $all_old_views);
                $update_file_path_new = $update_file_path ;
                $script_old_file_path = $old_file_path ;

                $folder_name = $all_old_views[$file_index] ?? $new_file;
                $update_able_file_size = $this->get_file_size($update_file_path_new .'/'.$new_file);
                $script_able_file_size = $this->get_file_size($script_old_file_path.'/'.$folder_name);


                $this->update_file($update_file_path.'/'.$new_file, $script_old_file_path.'/'.$folder_name);
                if(!is_dir($script_old_file_path) && !file_exists($script_old_file_path.'/'.$new_file)){
                    file_put_contents($script_old_file_path.'/'.$new_file,file_get_contents($update_file_path_new.'/'.$new_file));
                }
            }
        }
    }

    public function get_file_list_by_directory($dir){
        $get_file = array_diff(scandir($dir), array('.', '..', '.DS_Store',".git"));
        return $get_file;
    }


    public function get_file_size($file_path){
        return  file_exists($file_path) ? filesize($file_path) : 0;
    }


    public function update_file($update_file, $old_file)
    {
        $update_data = file_get_contents($update_file);
        file_put_contents($old_file, $update_data);
    }


    public function ReplaceVendorFileFolder($update_file_path,$old_file_path){

        $all_update_views = $this->get_file_list_by_directory($update_file_path);
        $all_old_views = $this->get_file_list_by_directory($old_file_path);
        foreach ($all_update_views as $new_file){
            if (is_dir($update_file_path.'/'.$new_file)){
                $old_file = array_search($new_file,$all_old_views);
                $folder_name = isset($all_old_views[$old_file]) ? $all_old_views[$old_file] : '';
                if (!file_exists($old_file_path.'/'.$new_file)){
                    if (!mkdir($concurrentDirectory = $old_file_path . '/' . $new_file) && !is_dir($concurrentDirectory)) {
                        throw new \RuntimeException(sprintf('Directory "%s" was not created', $concurrentDirectory));
                    }
                    $folder_name = $new_file;
                }
                $this->ReplaceFileFolder($update_file_path.'/'.$new_file,$old_file_path.'/'.$folder_name);
            }else{
                $file_index = array_search($new_file, $all_old_views);
                $update_file_path_new = $update_file_path ;
                $script_old_file_path = $old_file_path ;

                $folder_name = $all_old_views[$file_index] ?? $new_file;
                $update_able_file_size = $this->get_file_size($update_file_path_new .'/'.$new_file);
                $script_able_file_size = $this->get_file_size($script_old_file_path.'/'.$folder_name);


                $this->update_file($update_file_path.'/'.$new_file, $script_old_file_path.'/'.$folder_name);

                if(!is_dir($script_old_file_path) && !file_exists($script_old_file_path.'/'.$new_file)){
                    file_put_contents($script_old_file_path.'/'.$new_file,file_get_contents($update_file_path_new.'/'.$new_file));
                }
            }
        }
    }


    public function language_generate(){

        // start admin validation language
        $admin_valid_custom_language = [];
        $admin_valid_new_languages = include('resources/lang/en/admin_validation.php');
        $admin_valid_existing_languages = include('../resources/lang/en/admin_validation.php');
        foreach($admin_valid_existing_languages as $admin_valid_exist_key => $admin_valid_exist_language){
            $admin_valid_custom_language[$admin_valid_exist_key] = $admin_valid_exist_language;
        }
        foreach($admin_valid_new_languages as $admin_valid_new_key => $admin_valid_new_language){
            $admin_valid_custom_language[$admin_valid_new_key] = $admin_valid_new_language;
        }
        file_put_contents('../resources/lang/en/admin_validation.php', "");
        $admin_valid_custom_language = var_export($admin_valid_custom_language, true);
        file_put_contents('../resources/lang/en/admin_validation.php', "<?php\n return {$admin_valid_custom_language};\n ?>");
        // end admin validation language

         // start admin blade language
         $admin_custom_language = [];
         $new_languages = include('resources/lang/en/admin.php');
 
         $existing_languages = include('../resources/lang/en/admin.php');
 
         foreach($existing_languages as $exist_key => $exist_language){
             $admin_custom_language[$exist_key] = $exist_language;
         }
 
         foreach($new_languages as $new_key => $new_language){
             $admin_custom_language[$new_key] = $new_language;
         }
 
         file_put_contents('../resources/lang/en/admin.php', "");
         $admin_custom_language = var_export($admin_custom_language, true);
         file_put_contents('../resources/lang/en/admin.php', "<?php\n return {$admin_custom_language};\n ?>");
 
         // end admin blade language



        $this->message([
            'type' => 'success',
            'msg' => "Language Generated Successfully"
        ]);
    }



    public function message($msg){
        echo json_encode($msg);
    }

}

new Updator();
