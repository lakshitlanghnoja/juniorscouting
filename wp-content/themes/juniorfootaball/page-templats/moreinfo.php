<?php
/* Template Name: More Info Page */
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
//echo '<pre>';print_r(stripslashes($_REQUEST['year']));exit;
$year = stripslashes($_REQUEST['yearval']);
?>

<div class="inner_wrapper">
    <div class="container">

        <div class="row">
            <div class="col-md-12 col-xs-12">
                <h3 class="header"><?php echo get_the_title(); ?></h3>
            </div>


        </div>
        <div class="row">

                  <?php while ( have_posts() ) : the_post(); ?>
            <div class="col-md-6 col-xs-12">
            <?php echo the_content(); ?>
            </div>
            <?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query

    ?>
            <div class="TIJDLIJN_wrapper">
                    <p class="section_title">TIJDLIJN</p>
                    <div class="section_content">
                        <div class="table-responsive">
                            
                
			<table width="100%" border="0" class="weekdetails-table">
                                <tbody>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/club-1.png" /></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/laag-1.png" /></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/trainer-1.png" /></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/doelpunten-1.png" /></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/geel-1.png" /></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/rood-1.png" /></td>
                                    <td>Score</td>
                                    <td>Playtime</td>
                                    <td>Played/Not Played</td>
                                    <td>Reason</td>
                                    <td>PDF</td>
                                    
                                </tr>
                                <?php while( have_rows('weekly_details',  'user_'.$_GET['playerid']) ): the_row();
                                // var_dump((int)$year);exit; 
                                if(get_sub_field('week_name') == $_GET['weekname'] && get_sub_field('year') == (int)$year) {
                                ?>

<tr>
                                    <td><strong><?php echo get_sub_field('week_name'); ?></strong> </td>
                                    <td><?php echo get_sub_field('football_group_name'); ?></td>
                                    <td><?php echo get_sub_field('against_club_name'); ?></td>
                                    <td><?php echo get_sub_field('coach_name'); ?></td>
                                    <td><?php echo get_sub_field('result_of_the_game'); ?></td>
                                    <td><?php echo get_sub_field('number_of_yellow_cards'); ?></td>
                                    <td><?php echo get_sub_field('number_of_red_cards'); ?></td>
                                    <td><?php echo get_sub_field('scores'); ?></td>
                                    <td><?php echo get_sub_field('playtime_on_field'); ?></td>
                                    <td><?php echo get_sub_field('play_match_or_not'); ?></td>
                                    <td><?php echo get_sub_field('reason'); ?></td>
                                    <?php if(get_sub_field('upload_report') != ''){ 
                                        //echo '<pre>';print_r(get_sub_field('upload_report'));exit;
                                        $filearray = get_sub_field('upload_report');
                                        ?>
                                        <td><a href="javascript:downloadfile('<?php echo $filearray['url']; ?>')">Download Report</a></td>
                                    <?php }else{ ?>
                                        <td></td>
                                    <?php }?>
                                    
                                </tr>
                                <?php 
                            }
                            endwhile; ?>                                
                                
                                </tbody>
                            </table>
                            </div>
                            </div>
    </div>
    <script>
    function downloadfile(filepath){
        window.location.href="<?php echo get_site_url(); ?>"+"/download.php/?filename="+filepath;
    }
    </script>
<?php get_footer();
