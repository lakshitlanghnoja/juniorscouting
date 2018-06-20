<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); 
$postId = get_the_ID();
$content_post = get_post($postId);
// echo '<pre>';print_r($content_post);exit;
$content = $content_post->post_content;
$search = realpath(__DIR__ ).'\template-parts\search-widget.php';
$slider = realpath(__DIR__ ).'\template-parts\common-slider.php';

if (file_exists($slider)) {
    // echo "in if";exit;
    require( $slider );
}

//echo $search;exit;
if (file_exists($search)) {
     echo "in if";exit;
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
        <div class="row">
            <div class="col-md-5 col-sm-5 col-xs-12">
                <div class="agenda_item_wrapper">

                    <div class="left_part">
					<?php 
					$featImage = wp_get_attachment_image_src(get_post_thumbnail_id($postId), 'thumbnail');
					// $alt_text = get_post_meta(get_post_thumbnail_id($res->ID), '_wp_attachment_image_alt', true);
					?>
                        <img src="<?php echo $featImage[0]; ?>"/>
                    </div>
                </div>
            </div>
            <div class="col-md-7 col-sm-7 col-xs-12">
                <div class="agenda_item_wrapper">
                    <div class="right_part">
                        <h5><?php echo get_the_title();?></h5>
                        <h6><?php echo date("d M Y",strtotime($content_post->post_date)); ?></h6>
                        <?php echo wpautop($content); ?>
                    </div>

                </div>
            </div>


        </div>

    </div>

</div>

<?php get_footer();
