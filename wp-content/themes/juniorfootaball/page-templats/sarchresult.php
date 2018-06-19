<?php
/* Template Name: Search Result Page */
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); 
error_reporting(0);
$pageID = get_the_ID();
// echo '<pre>';print_r($_REQUEST);exit;
?>
<?php
$search = realpath(__DIR__ . '/..').'\template-parts\serach-widget.php';

// echo $search;exit;
if (file_exists($search)) {
    //  echo "in if";exit;
    require( $search );
}
?>
<div class="middlepart_wrapper_innerpages">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>AGENDA</h4>
            </div>
        </div>
        <?php 
        
            $namearray = array();
            $args = array('role' => 'player');
        
            $args1 = array (
            'role'       => 'Player',
            'order'      => 'ASC',
            'orderby'    => 'display_name',
            'search'     => '*' . esc_attr( $_REQUEST['playername'] ) . '*',
            // 'meta_key' => 'age',
            // 'meta_value' => array($ageArray[0],$ageArray[1]),
            // 'compare' => 'BETWEEN' 
            'meta_query' => array(
                'relation' => 'OR',
                array(
                    'key'     => 'age',
                    'value'   => array($ageArray[0],$ageArray[1]),
                    'compare' => 'BETWEEN'
                ),
                array(
                    'key'     => 'agenda',
                    'value'   => array($_REQUEST['agenda']),
                    'compare' => 'IN'
                ),
            )
        );
        
            
            if(isset($_REQUEST['playername']) && $_REQUEST['playername'] != ''){
                $args['search'] = '*' . esc_attr( $_REQUEST['playername'] ) . '*';
                $args['search_columns'] = 'user_login';
                        
            }
            if(isset($_REQUEST['agenda']) && $_REQUEST['agenda'] != ''){
                $agenda = 1;
                $metaarray = array('key'     => 'agenda',
                'value'   => array($_REQUEST['agenda']),
                 'compare' => 'IN');
            }
            if(isset($_REQUEST['age']) && $_REQUEST['age'] != ''){
                $age = 1;
                $ageArray = explode("-",$_REQUEST['age']);
                
                $metaarrayage = array('key'     => 'age',
                'value'   => array($ageArray[0],$ageArray[1]),
                 'compare' => 'BETWEEN');
        
                //  echo '<pre>';print_r($metaarrayage);exit;
            }
            $args['meta_query'] = array($metaarray);
            if(!empty($metaarray) && empty($metaarrayage))
                $args['meta_query'] = $metaarray;
            if(!empty($metaarrayage) && empty($metaarray))
            $args['meta_query'] = $metaarrayage;
            if(!empty($metaarrayage) && !empty($metaarray))
                $args['meta_query']= array('relation'=>'OR',$metaarray,$metaarrayage);
            
        
            // var_dump($args);exit;
        $user_query = new WP_User_Query( $args );
        
        
        $i = 0;
        ?>
        <div class="row">
        <?php 
        if ( ! empty( $user_query->get_results() ) ) {
            foreach ( $user_query->get_results() as $user ) {
                // echo '<pre>';print_r($user);exit;
                
                ?>
                <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="agenda_item_wrapper">
                    <div class="top_part">
                        <h5><?php echo $user->data->display_name;?></h5>
                        
                    </div>
                    <div class="bottom_part">
                    <?php $imgUrl = get_user_meta($user->data->ID,'profile_picture'); 
                    // echo '<pre>';print_r($imgUrl);exit; 
                    ?>
                    
                        <!-- <img src="<?php //echo get_user_meta($user->data->ID,'profile_picture'); ?>" /> -->
                    </div>
                </div>
            </div>
            <?php 
            if($i % 3 == 0 && $i != 0){ ?>
                </div>
                <div class="row">
            <?php }
        $i++;    
            }
        }
        wp_reset_postdata();    
        ?>
        
        </div>
    </div>
</div>


<?php get_footer();
