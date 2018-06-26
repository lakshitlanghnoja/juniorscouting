<?php
/* Template Name: Home Page */
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
$search = realpath(__DIR__ . '/..').'\template-parts\serach-widget.php';
$slider = realpath(__DIR__ . '/..').'\template-parts\common-slider.php';


if (file_exists($slider)) {
    // echo "in if";exit;
    require( $slider );
}
if (file_exists($search)) {
     //echo "in if";exit;
    require( $search );
}
?>
<div class="middlepart_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="header">Wordt nu lid van Junior Scouting</h3>
            </div>

            <div class="col-md-6 leftpart">
            <?php $imgArray = get_field('player_member_image',$pageID); ?>
                <img class="icon_image" src="<?php echo $imgArray['url']; ?>"/>
                <h5 class="header"><?php echo get_field('player_member_title',$pageID); ?></h5>
                <h6>€ <?php echo get_field('player_membership_price',$pageID); ?> / jaar </h6>
                <a class="btn btn-theme btn-sm btn-min-block" href="<?php echo esc_url(get_permalink(get_page_by_path('Player Register Page'))); ?>">Lid worden als speler</a>
                <p class="bodytxt"><?php echo get_field('player_membership_details',$pageID); ?> </p>
                <ul>
                <?php 
                if(have_rows('player_membership_benifits',$pageID)){
                    while(have_rows('player_membership_benifits',$pageID)) : the_row(); ?>
                    <li><?php echo get_sub_field('benifits',$pageID);?></li>
                <?php endwhile;
                }
                ?>
                </ul>
            </div>
            <div class="col-md-6 rightpart">
            <?php $imgArray = get_field('club_member_image',$pageID); ?>
                <img class="icon_image" src="<?php echo $imgArray['url']; ?>"/>
                <h5 class="header"><?php echo get_field('club_member_title',$pageID); ?></h5>
                <h6>€ <?php echo get_field('club_membership_price',$pageID); ?> / jaar </h6>
                <a class="btn btn-theme btn-sm btn-min-block" href="<?php echo esc_url(get_permalink(get_page_by_path('Club Register Page'))); ?>">Lid worden als speler</a>
                <p class="bodytxt"><?php echo get_field('club_membership_details',$pageID); ?> </p>
                <ul>
                <?php 
                if(have_rows('club_membership_benifits',$pageID)){
                    while(have_rows('club_membership_benifits',$pageID)) : the_row(); ?>
                    <li><?php echo get_sub_field('benifits',$pageID);?></li>
                <?php endwhile;
                }
                ?>
                </ul>
            </div>
        </div>
    </div>

</div>

<?php 

$commonSponsor = realpath(__DIR__ . '/..').'/template-parts/common-sponsor.php';
$commonCards = realpath(__DIR__ . '/..').'/template-parts/common-cards.php';

if (file_exists($commonSponsor)) {
    // echo "in if";exit;
    require( $commonSponsor );
}
if (file_exists($commonCards)) {
    // echo "in if";exit;
    require( $commonCards );
}

?>
<script>
$(".search-btn").click(function(){
    var playername = $(".playername").val();
    var age = $(".age").val();
    var agenda = $(".agenda").val();
    console.log(playername);
    // return false;
    var param = "?playername="+playername+"&age="+age+"&agenda="+agenda;
    var url = "<?php echo get_site_url();?>"+"/search-result"+param;
    // console.log(url);
    // return false;
    window.location.href=url;
    
});

</script>
<?php get_footer();
