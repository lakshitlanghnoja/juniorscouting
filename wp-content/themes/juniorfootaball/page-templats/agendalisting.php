<?php
/* Template Name: Agenda Listing Page */
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
$pageID = get_the_ID();
?>
<?php
$search = realpath(__DIR__ . '/..').'\template-parts\search-widget.php';


if (file_exists($search)) {
    // echo "in if";exit;
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
        $wpAgendaQuery = new WP_Query(array(
            'post_per_page' => -1,
            'post_type' => 'agendas',
            'post_status' => "publish"
        ));
    
        // echo '<pre>';print_r($wpAgendaQuery);exit;
        $i = 0;
        ?>
        <div class="row">
        <?php 
        if ($wpAgendaQuery->have_posts()) :
            while ($wpAgendaQuery->have_posts()) : $wpAgendaQuery->the_post();
                $agendaId = get_the_ID();
                $featImage = wp_get_attachment_image_src(get_post_thumbnail_id($agendaId), 'full');
                // echo 'test<pre>';print_r($post);exit;
                ?>
                <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="agenda_item_wrapper">
                    <div class="top_part">
                        <h5><?php echo $post->post_tile;?></h5>
                        <h6><?php echo date('d M Y',strtotime($post->post_date)) ;?></h6>
                    </div>
                    <div class="bottom_part">
                        <img src="<?php echo $featImage[0]; ?>" />
                    </div>
                </div>
            </div>
            <?php 
            if($i % 3 == 0 && $i != 0){ ?>
                </div>
                <div class="row">
            <?php }
        $i++;    
        endwhile;
        endif;
        wp_reset_postdata();    
        ?>
        
        </div>
    </div>
</div>


<?php get_footer();
