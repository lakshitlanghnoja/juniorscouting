<?php
/* Template Name: Player Profile Page */
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
$current_user = '';
if(is_user_logged_in()){
    $current_user = wp_get_current_user();
}

    
    if(in_array( 'player', (array) $current_user->roles )){
    $user_id = $current_user->ID;
    
    $profileImage = wp_get_attachment_image_src(get_user_meta($user_id,'profile_picture')[0],'full');
    $rankings = get_user_meta($user_id,'rankings')[0];

    
    $no_of_yellow_cards = 0;
    $no_of_red_cards = 0;
    
    while( have_rows('weekly_details',  'user_'.$user_id) ): the_row();

       $no_of_yellow_cards = $no_of_yellow_cards + (int)get_sub_field('number_of_yellow_cards');
       $no_of_red_cards = $no_of_red_cards + (int)get_sub_field('number_of_red_cards');

    endwhile;
?>

<div class="gray_bar">
    <div class="container">


        <div class="border_content">
        <h6><?php echo get_user_meta($user_id,'player_name')[0]; ?><Span>
        <?php 
        for($i = 1;$i <= $rankings; $i++ ){ ?>
            <img src="<?php echo get_template_directory_uri(); ?>/images/star.png" />
        <?php }
        ?>
        </Span></h6>
            <h6 class="pull-right">FEYENOORD</h6>
        </div>
        <div class="avatar"> <img src="<?php echo $profileImage[0]; ?>"></div>
    </div>
</div>

<div class="inner_wrapper">
    <div class="container">


        <div class="row">
            <div class="col-md-4 col-xs-12">
                <div class="list_wrapper">
                    <p class="list_header">ALGEMENE INFO</p>
                    <ul>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Leeftijd</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'age')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Woonplaats</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'house_number')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Positie veld</div>
                            <div class="col-md-6 col-xs-6 "><?php echo $position = get_user_meta($user_id,'position')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Club</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'club_name')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Klasse</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'class')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Lengte</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'length')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Gewicht</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'mass')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Speelvoet</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'play_foot')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Rode kaarten</div>
                            <div class="col-md-6 col-xs-6 "><?php echo $no_of_red_cards; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Gele kaarten</div>
                            <div class="col-md-6 col-xs-6 "><?php echo $no_of_yellow_cards; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Speeltijd</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'playtimes')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Strafschoppen</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'penalities')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Corners</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'corners')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Vrije trappen</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'free_kicks')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Doelpunten</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'goals')[0]; ?></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Rugnummer</div>
                            <div class="col-md-6 col-xs-6 "><?php echo get_user_meta($user_id,'back_number')[0]; ?></div>
                        </li>
                    </ul>
                    <a href="mailto:<?php echo $current_user->user_email;?>"><div class="bottm_btn">CONTACTEER   SPELER
                    </div> </a>
                </div>
            </div>

            <div class="col-md-8 col-xs-12">
                <div class="veld_wrapper">
                    <p class="section_title">POSITIE VELD</p>
                    <div class="section_content">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/<?php echo $position; ?>.png" /  >
                    </div>
                </div>

                <div class="TIJDLIJN_wrapper">
                    <p class="section_title">TIJDLIJN</p>
                    <div class="section_content">
                        <div class="table-responsive">
                            <div class="filter_wrapper">
                                <div class="year">
                                    <select class="year" name="year">
                                    <?php 
                                    if(get_field('weekly_details','user_'.$user_id)){
                                        while( has_sub_field('weekly_details','user_'.$user_id) ):
                                            $select = get_sub_field_object('year');
                                            foreach( $select['choices'] as $k => $v ){ 
                                                ?>
                                                <option value="<?php echo $v; ?>"><?php echo $k; ?></option>
                                            <?php }
                                        endwhile;
                                    }
                                    ?>
                                    </select>
                                    

                                </div>
                                <div class="week">
                                    <select class="weekname" name="weekname" multiple>
                                    <?php 
                                    if(get_field('weekly_details','user_'.$user_id)){
                                        while( has_sub_field('weekly_details','user_'.$user_id) ):
                                            $select = get_sub_field_object('week_name');
                                            foreach( $select['choices'] as $k => $v ){ 
                                                ?>
                                                <option value="<?php echo $v; ?>"><?php echo $k; ?></option>
                                            <?php }
                                            break;
                                        endwhile;
                                    }
                                    ?>
                                    </select>
                                    

                                </div>
                                <button class=" form-control btn btn-danger btn_WEERGEVEN weekdetails-btn">WEERGEVEN</button>

                            </div>
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
                                    <td><div class=" form-control btn btn-danger meer_info_btn">MEER INFO</div></td>
                                </tr>
                                <?php while( have_rows('weekly_details',  'user_'.$user_id) ): the_row(); ?>

<tr>
                                    <td><strong><?php echo get_sub_field('week_name'); ?></strong> </td>
                                    <td><?php echo get_sub_field('football_group_name'); ?></td>
                                    <td><?php echo get_sub_field('against_club_name'); ?></td>
                                    <td><?php echo get_sub_field('coach_name'); ?></td>
                                    <td><?php echo get_sub_field('result_of_the_game'); ?></td>
                                    <td><?php echo get_sub_field('number_of_yellow_cards'); ?></td>
                                    <td><?php echo get_sub_field('number_of_red_cards'); ?></td>
                                    <td><button class=" form-control btn btn-danger meer_info_btn" onclick="javascript:moreinfo(<?php echo $user_id;?>,'<?php echo get_sub_field('week_name'); ?>','<?php echo get_sub_field('year'); ?>')">MEER INFO</></td>
                                </tr>
<?php endwhile; ?>                                
                                
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="video_wrapper">
                    <p class="section_title">VIDEOS</p>
                    <div class="section_content">
                        <iframe width="100%" height="400" src="<?php echo get_field('youtube_video_url','user_'.$user_id); ?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </div>
                </div>

            </div>

        </div>



    </div>

<?php 
}else{ ?>

<div class="gray_bar">
    <div class="container">


        <div class="border_content">
            <h6>RAMIZ DEMIREL<Span> <img src="<?php echo get_template_directory_uri(); ?>/images/star.png"/>
            <img src="<?php echo get_template_directory_uri(); ?>/images/star.png"/>
            <img src="<?php echo get_template_directory_uri(); ?>/images/star.png"/>
            <img src="<?php echo get_template_directory_uri(); ?>/images/star.png"/>
            <img src="<?php echo get_template_directory_uri(); ?>/images/star.png"/></Span></h6>
            <h6 class="pull-right">FEYENOORD</h6>
        </div>
        <div class="avatar"><img src="<?php echo get_template_directory_uri(); ?>/images/ramez.png"></div>
    </div>
</div>

<div class="inner_wrapper">
    <div class="container">


        <div class="row">
            <div class="col-md-4 col-xs-12">
                <div class="list_wrapper">
                    <p class="list_header">ALGEMENE INFO</p>
                    <ul>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Leeftijd</div>
                            <div class="col-md-6 col-xs-6 "></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Woonplaats</div>
                            <div class="col-md-6 col-xs-6 "></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Positie veld</div>
                            <div class="col-md-6 col-xs-6 "></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Club</div>
                            <div class="col-md-6 col-xs-6 "></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Klasse</div>
                            <div class="col-md-6 col-xs-6 "></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Lengte</div>
                            <div class="col-md-6 col-xs-6 "></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Gewicht</div>
                            <div class="col-md-6 col-xs-6 "></div>
                        </li>
                        <li>
                            <div class="col-md-6 col-xs-6 title">Speelvoet</div>
                            <div class="col-md-6 col-xs-6 "></div>
                        </li>

                    </ul>
                    <a href="">
                        <div class="bottm_btn">CONTACTEER SPELER
                        </div>
                    </a>
                    <div class="lock_section"><img src="<?php echo get_template_directory_uri(); ?>/images/lock_icon.png" width="80px" /></div>
                </div>
            </div>

            <div class="col-md-8 col-xs-12">
                <div class="veld_wrapper">
                    <p class="section_title">POSITIE VELD</p>
                    <div class="section_content">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/veld_image.png" / >
                        <div class="lock_section"><img src="<?php echo get_template_directory_uri(); ?>/images/lock_icon.png" width="80px" /></div>
                    </div>
                </div>

                <div class="TIJDLIJN_wrapper">
                    <p class="section_title">TIJDLIJN</p>
                    <div class="section_content">
                        <div class="table-responsive">
                            <div class="filter_wrapper">
                                <div class="year">
                                    <i class="fa fa-caret-left"></i>
                                    <span>2017</span>
                                    <i class="fa fa-caret-right"></i>

                                </div>
                                <div class="week">
                                    <i class="fa fa-caret-left"></i>
                                    <span>Week 1-4</span>
                                    <i class="fa fa-caret-right"></i>

                                </div>
                                <div class=" form-control btn btn-danger btn_WEERGEVEN">WEERGEVEN</div>

                            </div>
                            <table width="100%" border="0">
                                <tbody>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/club-1.png"/></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/laag-1.png"/></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/trainer-1.png"/></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/doelpunten-1.png"/></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/geel-1.png"/></td>
                                    <td><img src="<?php echo get_template_directory_uri(); ?>/images/rood-1.png"/></td>
                                    <td>

                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>WEEK 1</strong></td>
                                    <td>Feyenoord</td>
                                    <td>Ajax</td>
                                    <td>Trainer Jan</td>
                                    <td>1 - 2</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>
                                        <div class=" form-control btn btn-danger meer_info_btn">MEER INFO</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>WEEK 2</strong></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><strong>WEEK 3</strong></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><strong>WEEK 4</strong></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="lock_section"><img src="<?php echo get_template_directory_uri(); ?>/images/lock_icon.png" width="80px" /></div>
                    </div>
                </div>

                <div class="video_wrapper">
                    <p class="section_title">VIDEOS</p>
                    <div class="section_content">
                        <iframe width="100%" height="400" src="https://www.youtube.com/embed/fIZR5Ib1p_w"
                                frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        <div class="lock_section"><img src="<?php echo get_template_directory_uri(); ?>/images/lock_icon.png" width="80px" /></div>
                    </div>


                </div>

            </div>

        </div>


    </div>

<?php } ?>
<script>
$(".weekdetails-btn").click(function(){
    //console.log($('.year').find(":selected").text());
    //return false;
    $.ajax({
                url: $('#ajax_url').val()+"?action=fetchweekdetails",
                type: "POST",
                data: {'year':$('.year').find(":selected").text(),"week":$(".weekname").val(),'playerid':<?php echo $user_id; ?>},
                success: function (responseText) {
                  var result = jQuery.parseJSON(responseText);
                  console.log(result);
                  if(result.status == 1){
                    jQuery(".weekdetails-table tbody").html("");
                      jQuery(".weekdetails-table tbody").html(result.html);
                      //jQuery(".playermsg").css("color","green");
                  }else{
                    //jQuery(".playermsg").html(result.message);
                    //jQuery(".playermsg").css("color","red");
                  }  
                }
            });
        
        return false;
});
$(document).ready(function() {

var last_valid_selection = null;

$('.weekname').change(function(event) {

  if ($(this).val().length > 3) {

    $(this).val(last_valid_selection);
  } else {
    last_valid_selection = $(this).val();
  }
});
});

function moreinfo(playerid,weekname,year){
window.location.href = '<?php echo get_site_url(); ?>'+'/moreinfo/?year='+year+'&playerid='+playerid+'&weekname='+weekname;
}
</script>
<?php get_footer();
