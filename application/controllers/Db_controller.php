<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Db_controller extends Home_Core_Controller
{
    public function __construct()
    {
        parent::__construct();
        // Load the database library with the default connection
        $this->load->database();
        // Load the second database connection
        $this->load->database('second_db', TRUE);
    }

    public function dbcopy() {
        // Get the second database connection
        $second_db = $this->load->database('second_db', TRUE);

        // Example query on the second database
        $query = $second_db->query("SELECT * FROM category");
        $categories = $query->result_array();

        // Check if there are categories to copy
        if (!empty($categories)) {
            foreach ($categories as $category) {
                // Check if the category already exists in the primary database
                $this->db->where('name', $category['category_name']);
                $exists = $this->db->count_all_results('categories') > 0;
                // Insert only if the category does not exist
                if (!$exists) {
                    $data_to_insert = array(
                        'name' => $category['category_name'], 
                        'name_slug' => $category['cat_url'],
                        'keywords' => $category['meta_key'],
                    );
                    // Insert data into the primary database
                    $this->db->insert('categories', $data_to_insert);
                }
            }
        }

        /*--------copy newz--------------------------------*/
        // Example query on the second database
        $query_new = $second_db->query("SELECT * FROM news");
        $allnews = $query_new->result_array();
        if (!empty($allnews)) {
            foreach ($allnews as $newz) {
                // Check if the category already exists in the primary database
                $this->db->where('title_slug', $newz['url']);
                $post_exists = $this->db->count_all_results('posts') > 0;
                // Insert only if the category does not exist
                if (!$post_exists) {
                    // The prefix to remove
                    $prefix_to_remove = "https://indiangrapevine.com/assets/Images/News_Images/";

                    $new_prefix = "uploads/images/";

                    $path_without_prefix = str_replace($prefix_to_remove, '', $newz['image']);

                    $image_big = $new_prefix . $path_without_prefix;
                    
                    $cat = NULL;
                    $category_id = NULL;
                    $cat_query = $second_db->select('*')
                   ->from('category')
                   ->where('cat_id', $newz['catid'])
                   ->get();
                    if ($cat_query->num_rows() > 0) {
                        $cat = $cat_query->row();
                        $fisrt_table_cat_query = $this->db->select('*')
                       ->from('categories')
                       ->where('name',$cat->category_name)
                       ->get();
                        if ($fisrt_table_cat_query->num_rows() > 0) {
                            $catinfo = $fisrt_table_cat_query->row();
                            $category_id = $catinfo->id;
                        }

                    }
                    $data_post_insert = array(
                        'title' => $newz['title'], 
                        'title_slug' => $newz['url'],
                        'content' => $newz['content'],
                        'category_id' => $category_id,
                        'keywords' => $newz['meta_tag'],
                        'image_big' => $image_big,
                        'image_default' => $image_big,
                        'image_mid' => $image_big,
                        'image_small' => $image_big,
                        'image_slider' => $image_big,
                        'user_id' =>  '1',
                    );

                     ;
                    // Insert data into the primary database
                    $this->db->insert('posts', $data_post_insert);
                }
            }
            echo "done";
        }

    }
}
