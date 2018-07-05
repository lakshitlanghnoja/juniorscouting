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
$search = realpath(__DIR__ . '/..').'/template-parts/serach-widget.php';
$slider = realpath(__DIR__ . '/..').'/template-parts/common-slider.php';


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

    endwhile; ?>
<div class="gray_bar">
    <div class="container playerprofilediv">


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
                <div class="list_wrapper playrdetails">
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
                    <div class="section_content positiondiv">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/<?php echo $position; ?>.png" /  >
                    </div>
                </div>

                <div class="TIJDLIJN_wrapper">
                    <p class="section_title">TIJDLIJN</p>
                    <div class="section_content">
                        <div class="table-responsive">
                            <div class="filter_wrapper">
                                <div class="year">
                                    <select class="year custom" name="year">
                                    <option value="">Selecteer jaar</option>
                                    <?php 
                                        $yeararray = array("2017","2018","2019","2020","2021","2022","2023");
                                        $i = 0;
                                        for($i = 0;$i < count($yeararray);$i++){ 
                                                    ?>
                                                    <option value="<?php echo $yeararray[$i]; ?>"><?php echo $yeararray[$i]; ?></option>
                                                <?php }
                                        ?>
                                    </select>
                                    

                                </div>
		
                                <div class="week">
                                    <select id="dates-field2" class="multiselect-ui form-control custom" multiple="multiple">
                                    <?php 
                                        $weekarray = array("week 1"=>"week 1",
                                        "week 2"=>"week 2",
                                        "week 3" =>"week 3",
                                        "week 4"=>"week 4",
                                        "week 5"=>"week 5",
                                        "week 6"=>"week 6",
                                        "week 7"=>"week 7",
                                        "week 8"=>"week 8",
                                        "week 9"=>"week 9",
                                        "week 10"=>"week 10");
                                        foreach( $weekarray as $k => $v ){ 
                                                    ?>
                                                    <option value="<?php echo $v; ?>"><?php echo $k; ?></option>
                                                <?php }
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
                                    <td></td>
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
                    <div class="section_content videodiv">
                        <iframe width="100%" height="400" src="<?php echo get_field('youtube_video_url','user_'.$user_id); ?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </div>
                </div>

            </div>

        </div>



    </div>
    <input type="hidden" value="<?php echo $user_id; ?>" class="userid">
<?php }else{ 
	?>
    <input type="hidden" value="" class="userid">
<div class="gray_bar">
    <div class="container playerprofilediv">

        

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
    <?php 
    if(is_user_logged_in()){
        $current_user = wp_get_current_user();
    
if(in_array( 'administrator', (array) $current_user->roles )){
        			$args = array('role'=> 'Player','orderby'=>'display_name','order'=>ASC);
                    $players = get_users( $args ); 
                    // echo '<pre>';print_r($clubs);exit;
                    foreach($players AS $player){
                        $firstletter = substr($player->data->display_name, 0, 1);
                        // echo $firstletter;
                        $playerarray[$firstletter][] = $player;
                    }
                                $user_query = new WP_User_Query( $args1 );
                                 $i = 0;
     ?>
        <div class="row">
        <div class="atoz_wrapper">

        <div class="col-md-12 col-xs-12">
        <?php 
        $i = 0;
        $firstplayerid = '';
        foreach($playerarray AS $key => $playera){?>
            <div class="atoz">
            <div class="atoz line "></div>
            <div class="atoz char"><?php echo $key; ?></div>
            <ul>
            <?php foreach($playera AS $player){ 
                if($i == 0)
                $firstplayerid = $player->data->ID;
                ?>
                <li><a href="javascript:fetchauthor(<?php echo $player->data->ID; ?>);"><?php echo $player->data->display_name; ?></a></li>
            <?php 
        $i++;
        }?>
                
            </ul>
        </div>
        <?php }?>
            
        </div>
            </div>

    </div>
            <?php }}?>
        <div class="row">
            <div class="col-md-4 col-xs-12">
                <div class="list_wrapper playrdetails">
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
                    <div class="section_content positiondiv">
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
                                    <select class="year custom" name="year">
                                    <option value="">Selecteer jaar</option>
                                    <?php 
                                        $yeararray = array("2017","2018","2019","2020","2021","2022","2023");
                                        $i = 0;
                                        for($i = 0;$i < count($yeararray);$i++){ 
                                                    ?>
                                                    <option value="<?php echo $yeararray[$i]; ?>"><?php echo $yeararray[$i]; ?></option>
                                                <?php }
                                        ?>
                                    </select>
                                    

                                </div>
                                <div class="week">
                                    <select id="dates-field2" class="weekname multiselect-ui form-control custom" multiple="multiple">
                                    <?php 
                                        $weekarray = array("week 1"=>"week 1",
                                        "week 2"=>"week 2",
                                        "week 3" =>"week 3",
                                        "week 4"=>"week 4",
                                        "week 5"=>"week 5",
                                        "week 6"=>"week 6",
                                        "week 7"=>"week 7",
                                        "week 8"=>"week 8",
                                        "week 9"=>"week 9",
                                        "week 10"=>"week 10");
                                        foreach( $weekarray as $k => $v ){ 
                                                    ?>
                                                    <option value="<?php echo $v; ?>"><?php echo $k; ?></option>
                                                <?php }
                                        ?>
                                        
                                    </select>
                                    

                                </div>
                                <button class=" form-control btn btn-danger btn_WEERGEVEN weekdetails-btn">WEERGEVEN</button>

                            </div>
                            <table width="100%" border="0" class="weekdetails-table">
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
                    <div class="section_content videodiv">
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
    <?php if($firstplayerid != '' && $firstplayerid != null){ ?>
        fetchauthor(<?php echo $firstplayerid; ?>);
    <?php }?>
    function fetchauthor($authorid){
        $.ajax({
                url: $('#ajax_url').val()+"?action=fetchauthordetails",
                type: "POST",
                data: {'id':$authorid},
                success: function (responseText) {
                    console.log(responseText);
                    var result = jQuery.parseJSON(responseText);
                    $(".playrdetails").html(result.profile);
                    $(".weekdetails-table").html(result.week);
                    $(".videodiv").html(result.video);   
                    $(".playerprofilediv").html(result.detail);
                    $(".positiondiv").html(result.position);
                    $(".userid").val(result.user);
                    $(".lock_section").remove();
                }
            });
    }
$(".weekdetails-btn").click(function(){
    //console.log($('.year').find(":selected").text());
    //return false;
    var userid = '';
    userid = $(".userid").val();
    $.ajax({
                url: $('#ajax_url').val()+"?action=fetchweekdetails",
                type: "POST",
                data: {'year':$('.year').find(":selected").text(),"week":$(".weekname").val(),'playerid':userid},
                success: function (responseText) {
                  var result = jQuery.parseJSON(responseText);
                  console.log(result);
                  if(result.status == 1){
                    jQuery(".weekdetails-table tbody").html("");
                      jQuery(".weekdetails-table tbody").html(result.html);
                      //jQuery(".playermsg").css("color","green");
                  }else{
                      console.log("in else");
                      jQuery(".weekdetails-table tbody").html(result.html);
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
window.location.href = '<?php echo get_site_url(); ?>'+'/moreinfo/?yearval='+year+'&playerid='+playerid+'&weekname='+weekname;
}
</script>

<script type="text/javascript">
$(function() {
    $('.multiselect-ui').multiselect({
        includeSelectAllOption: true
    });
});
</script>


<script type="text/javascript">

!function ($) {
    "use strict";// jshint ;_;

    if (typeof ko !== 'undefined' && ko.bindingHandlers && !ko.bindingHandlers.multiselect) {
        ko.bindingHandlers.multiselect = {
            after: ['options', 'value', 'selectedOptions', 'enable', 'disable'],

            init: function(element, valueAccessor, allBindings, viewModel, bindingContext) {
                var $element = $(element);
                var config = ko.toJS(valueAccessor());

                $element.multiselect(config);

                if (allBindings.has('options')) {
                    var options = allBindings.get('options');
                    if (ko.isObservable(options)) {
                        ko.computed({
                            read: function() {
                                options();
                                setTimeout(function() {
                                    var ms = $element.data('multiselect');
                                    if (ms)
                                        ms.updateOriginalOptions();//Not sure how beneficial this is.
                                    $element.multiselect('rebuild');
                                }, 1);
                            },
                            disposeWhenNodeIsRemoved: element
                        });
                    }
                }

                //value and selectedOptions are two-way, so these will be triggered even by our own actions.
                //It needs some way to tell if they are triggered because of us or because of outside change.
                //It doesn't loop but it's a waste of processing.
                if (allBindings.has('value')) {
                    var value = allBindings.get('value');
                    if (ko.isObservable(value)) {
                        ko.computed({
                            read: function() {
                                value();
                                setTimeout(function() {
                                    $element.multiselect('refresh');
                                }, 1);
                            },
                            disposeWhenNodeIsRemoved: element
                        }).extend({ rateLimit: 100, notifyWhenChangesStop: true });
                    }
                }

                //Switched from arrayChange subscription to general subscription using 'refresh'.
                //Not sure performance is any better using 'select' and 'deselect'.
                if (allBindings.has('selectedOptions')) {
                    var selectedOptions = allBindings.get('selectedOptions');
                    if (ko.isObservable(selectedOptions)) {
                        ko.computed({
                            read: function() {
                                selectedOptions();
                                setTimeout(function() {
                                    $element.multiselect('refresh');
                                }, 1);
                            },
                            disposeWhenNodeIsRemoved: element
                        }).extend({ rateLimit: 100, notifyWhenChangesStop: true });
                    }
                }

                var setEnabled = function (enable) {
                    setTimeout(function () {
                        if (enable)
                            $element.multiselect('enable');
                        else
                            $element.multiselect('disable');
                    });
                };

                if (allBindings.has('enable')) {
                    var enable = allBindings.get('enable');
                    if (ko.isObservable(enable)) {
                        ko.computed({
                            read: function () {
                                setEnabled(enable());
                            },
                            disposeWhenNodeIsRemoved: element
                        }).extend({ rateLimit: 100, notifyWhenChangesStop: true });
                    } else {
                        setEnabled(enable);
                    }
                }

                if (allBindings.has('disable')) {
                    var disable = allBindings.get('disable');
                    if (ko.isObservable(disable)) {
                        ko.computed({
                            read: function () {
                                setEnabled(!disable());
                            },
                            disposeWhenNodeIsRemoved: element
                        }).extend({ rateLimit: 100, notifyWhenChangesStop: true });
                    } else {
                        setEnabled(!disable);
                    }
                }

                ko.utils.domNodeDisposal.addDisposeCallback(element, function() {
                    $element.multiselect('destroy');
                });
            },

            update: function(element, valueAccessor, allBindings, viewModel, bindingContext) {
                var $element = $(element);
                var config = ko.toJS(valueAccessor());

                $element.multiselect('setOptions', config);
                $element.multiselect('rebuild');
            }
        };
    }

    function forEach(array, callback) {
        for (var index = 0; index < array.length; ++index) {
            callback(array[index], index);
        }
    }

    /**
     * Constructor to create a new multiselect using the given select.
     *
     * @param {jQuery} select
     * @param {Object} options
     * @returns {Multiselect}
     */
    function Multiselect(select, options) {

        this.$select = $(select);
        this.options = this.mergeOptions($.extend({}, options, this.$select.data()));

        // Placeholder via data attributes
        if (this.$select.attr("data-placeholder")) {
            this.options.nonSelectedText = this.$select.data("placeholder");
        }

        // Initialization.
        // We have to clone to create a new reference.
        this.originalOptions = this.$select.clone()[0].options;
        this.query = '';
        this.searchTimeout = null;
        this.lastToggledInput = null;

        this.options.multiple = this.$select.attr('multiple') === "multiple";
        this.options.onChange = $.proxy(this.options.onChange, this);
        this.options.onSelectAll = $.proxy(this.options.onSelectAll, this);
        this.options.onDeselectAll = $.proxy(this.options.onDeselectAll, this);
        this.options.onDropdownShow = $.proxy(this.options.onDropdownShow, this);
        this.options.onDropdownHide = $.proxy(this.options.onDropdownHide, this);
        this.options.onDropdownShown = $.proxy(this.options.onDropdownShown, this);
        this.options.onDropdownHidden = $.proxy(this.options.onDropdownHidden, this);
        this.options.onInitialized = $.proxy(this.options.onInitialized, this);
        this.options.onFiltering = $.proxy(this.options.onFiltering, this);

        // Build select all if enabled.
        this.buildContainer();
        this.buildButton();
        this.buildDropdown();
        this.buildSelectAll();
        this.buildDropdownOptions();
        this.buildFilter();

        this.updateButtonText();
        this.updateSelectAll(true);

        if (this.options.enableClickableOptGroups && this.options.multiple) {
            this.updateOptGroups();
        }

        this.options.wasDisabled = this.$select.prop('disabled');
        if (this.options.disableIfEmpty && $('option', this.$select).length <= 0) {
            this.disable();
        }

        this.$select.wrap('<span class="multiselect-native-select" />').after(this.$container);
        this.options.onInitialized(this.$select, this.$container);
    }

    Multiselect.prototype = {

        defaults: {
            /**
             * Default text function will either print 'None selected' in case no
             * option is selected or a list of the selected options up to a length
             * of 3 selected options.
             *
             * @param {jQuery} options
             * @param {jQuery} select
             * @returns {String}
             */
            buttonText: function(options, select) {
                if (this.disabledText.length > 0
                        && (select.prop('disabled') || (options.length == 0 && this.disableIfEmpty)))  {

                    return this.disabledText;
                }
                else if (options.length === 0) {
                    return this.nonSelectedText;
                }
                else if (this.allSelectedText
                        && options.length === $('option', $(select)).length
                        && $('option', $(select)).length !== 1
                        && this.multiple) {

                    if (this.selectAllNumber) {
                        return this.allSelectedText + ' (' + options.length + ')';
                    }
                    else {
                        return this.allSelectedText;
                    }
                }
                else if (options.length > this.numberDisplayed) {
                    return options.length + ' ' + this.nSelectedText;
                }
                else {
                    var selected = '';
                    var delimiter = this.delimiterText;

                    options.each(function() {
                        var label = ($(this).attr('label') !== undefined) ? $(this).attr('label') : $(this).text();
                        selected += label + delimiter;
                    });

                    return selected.substr(0, selected.length - this.delimiterText.length);
                }
            },
            /**
             * Updates the title of the button similar to the buttonText function.
             *
             * @param {jQuery} options
             * @param {jQuery} select
             * @returns {@exp;selected@call;substr}
             */
            buttonTitle: function(options, select) {
                if (options.length === 0) {
                    return this.nonSelectedText;
                }
                else {
                    var selected = '';
                    var delimiter = this.delimiterText;

                    options.each(function () {
                        var label = ($(this).attr('label') !== undefined) ? $(this).attr('label') : $(this).text();
                        selected += label + delimiter;
                    });
                    return selected.substr(0, selected.length - this.delimiterText.length);
                }
            },
            checkboxName: function(option) {
                return false; // no checkbox name
            },
            /**
             * Create a label.
             *
             * @param {jQuery} element
             * @returns {String}
             */
            optionLabel: function(element){
                return $(element).attr('label') || $(element).text();
            },
            /**
             * Create a class.
             *
             * @param {jQuery} element
             * @returns {String}
             */
            optionClass: function(element) {
                return $(element).attr('class') || '';
            },
            /**
             * Triggered on change of the multiselect.
             *
             * Not triggered when selecting/deselecting options manually.
             *
             * @param {jQuery} option
             * @param {Boolean} checked
             */
            onChange : function(option, checked) {

            },
            /**
             * Triggered when the dropdown is shown.
             *
             * @param {jQuery} event
             */
            onDropdownShow: function(event) {

            },
            /**
             * Triggered when the dropdown is hidden.
             *
             * @param {jQuery} event
             */
            onDropdownHide: function(event) {

            },
            /**
             * Triggered after the dropdown is shown.
             *
             * @param {jQuery} event
             */
            onDropdownShown: function(event) {

            },
            /**
             * Triggered after the dropdown is hidden.
             *
             * @param {jQuery} event
             */
            onDropdownHidden: function(event) {

            },
            /**
             * Triggered on select all.
             */
            onSelectAll: function() {

            },
            /**
             * Triggered on deselect all.
             */
            onDeselectAll: function() {

            },
            /**
             * Triggered after initializing.
             *
             * @param {jQuery} $select
             * @param {jQuery} $container
             */
            onInitialized: function($select, $container) {

            },
            /**
             * Triggered on filtering.
             *
             * @param {jQuery} $filter
             */
            onFiltering: function($filter) {

            },
            enableHTML: false,
            buttonClass: 'btn btn-default',
            inheritClass: false,
            buttonWidth: 'auto',
            buttonContainer: '<div class="" />',
            dropRight: false,
            dropUp: false,
            selectedClass: 'active',
            // Maximum height of the dropdown menu.
            // If maximum height is exceeded a scrollbar will be displayed.
            maxHeight: false,
            includeSelectAllOption: false,
            includeSelectAllIfMoreThan: 0,
            selectAllText: ' Select all',
            selectAllValue: 'multiselect-all',
            selectAllName: false,
            selectAllNumber: true,
            selectAllJustVisible: true,
            enableFiltering: false,
            enableCaseInsensitiveFiltering: false,
            enableFullValueFiltering: false,
            enableClickableOptGroups: false,
            enableCollapsibleOptGroups: false,
            filterPlaceholder: 'Search',
            // possible options: 'text', 'value', 'both'
            filterBehavior: 'text',
            includeFilterClearBtn: true,
            preventInputChangeEvent: false,
            nonSelectedText: 'Select week',
            nSelectedText: 'selected',
            allSelectedText: 'All week',
            numberDisplayed: 2,
            disableIfEmpty: false,
            disabledText: '',
            delimiterText: ', ',
            templates: {
                button: '<button type="button" class="multiselect dropdown-toggle btn-block text-left" data-toggle="dropdown"><span class="multiselect-selected-text"></span> <b class="caret"></b></button>',
                ul: '<ul class="multiselect-container dropdown-menu"></ul>',
                filter: '<li class="multiselect-item multiselect-filter"><div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span><input class="form-control multiselect-search" type="text"></div></li>',
                filterClearBtn: '<span class="input-group-btn"><button class="btn btn-default multiselect-clear-filter" type="button"><i class="glyphicon glyphicon-remove-circle"></i></button></span>',
                li: '<li><a tabindex="0"><label></label></a></li>',
                divider: '<li class="multiselect-item divider"></li>',
                liGroup: '<li class="multiselect-item multiselect-group"><label></label></li>'
            }
        },

        constructor: Multiselect,

        /**
         * Builds the container of the multiselect.
         */
        buildContainer: function() {
            this.$container = $(this.options.buttonContainer);
            this.$container.on('show.bs.dropdown', this.options.onDropdownShow);
            this.$container.on('hide.bs.dropdown', this.options.onDropdownHide);
            this.$container.on('shown.bs.dropdown', this.options.onDropdownShown);
            this.$container.on('hidden.bs.dropdown', this.options.onDropdownHidden);
        },

        /**
         * Builds the button of the multiselect.
         */
        buildButton: function() {
            this.$button = $(this.options.templates.button).addClass(this.options.buttonClass);
            if (this.$select.attr('class') && this.options.inheritClass) {
                this.$button.addClass(this.$select.attr('class'));
            }
            // Adopt active state.
            if (this.$select.prop('disabled')) {
                this.disable();
            }
            else {
                this.enable();
            }

            // Manually add button width if set.
            if (this.options.buttonWidth && this.options.buttonWidth !== 'auto') {
                this.$button.css({
                    'width' : '100%', //this.options.buttonWidth,
                    'overflow' : 'hidden',
                    'text-overflow' : 'ellipsis'
                });
                this.$container.css({
                    'width': this.options.buttonWidth
                });
            }

            // Keep the tab index from the select.
            var tabindex = this.$select.attr('tabindex');
            if (tabindex) {
                this.$button.attr('tabindex', tabindex);
            }

            this.$container.prepend(this.$button);
        },

        /**
         * Builds the ul representing the dropdown menu.
         */
        buildDropdown: function() {

            // Build ul.
            this.$ul = $(this.options.templates.ul);

            if (this.options.dropRight) {
                this.$ul.addClass('pull-right');
            }

            // Set max height of dropdown menu to activate auto scrollbar.
            if (this.options.maxHeight) {
                // TODO: Add a class for this option to move the css declarations.
                this.$ul.css({
                    'max-height': this.options.maxHeight + 'px',
                    'overflow-y': 'auto',
                    'overflow-x': 'hidden'
                });
            }

            if (this.options.dropUp) {

                var height = Math.min(this.options.maxHeight, $('option[data-role!="divider"]', this.$select).length*26 + $('option[data-role="divider"]', this.$select).length*19 + (this.options.includeSelectAllOption ? 26 : 0) + (this.options.enableFiltering || this.options.enableCaseInsensitiveFiltering ? 44 : 0));
                var moveCalc = height + 34;

                this.$ul.css({
                    'max-height': height + 'px',
                    'overflow-y': 'auto',
                    'overflow-x': 'hidden',
                    'margin-top': "-" + moveCalc + 'px'
                });
            }

            this.$container.append(this.$ul);
        },

        /**
         * Build the dropdown options and binds all necessary events.
         *
         * Uses createDivider and createOptionValue to create the necessary options.
         */
        buildDropdownOptions: function() {

            this.$select.children().each($.proxy(function(index, element) {

                var $element = $(element);
                // Support optgroups and options without a group simultaneously.
                var tag = $element.prop('tagName')
                    .toLowerCase();

                if ($element.prop('value') === this.options.selectAllValue) {
                    return;
                }

                if (tag === 'optgroup') {
                    this.createOptgroup(element);
                }
                else if (tag === 'option') {

                    if ($element.data('role') === 'divider') {
                        this.createDivider();
                    }
                    else {
                        this.createOptionValue(element);
                    }

                }

                // Other illegal tags will be ignored.
            }, this));

            // Bind the change event on the dropdown elements.
            $('li:not(.multiselect-group) input', this.$ul).on('change', $.proxy(function(event) {
                var $target = $(event.target);

                var checked = $target.prop('checked') || false;
                var isSelectAllOption = $target.val() === this.options.selectAllValue;

                // Apply or unapply the configured selected class.
                if (this.options.selectedClass) {
                    if (checked) {
                        $target.closest('li')
                            .addClass(this.options.selectedClass);
                    }
                    else {
                        $target.closest('li')
                            .removeClass(this.options.selectedClass);
                    }
                }

                // Get the corresponding option.
                var value = $target.val();
                var $option = this.getOptionByValue(value);

                var $optionsNotThis = $('option', this.$select).not($option);
                var $checkboxesNotThis = $('input', this.$container).not($target);

                if (isSelectAllOption) {

                    if (checked) {
                        this.selectAll(this.options.selectAllJustVisible, true);
                    }
                    else {
                        this.deselectAll(this.options.selectAllJustVisible, true);
                    }
                }
                else {
                    if (checked) {
                        $option.prop('selected', true);

                        if (this.options.multiple) {
                            // Simply select additional option.
                            $option.prop('selected', true);
                        }
                        else {
                            // Unselect all other options and corresponding checkboxes.
                            if (this.options.selectedClass) {
                                $($checkboxesNotThis).closest('li').removeClass(this.options.selectedClass);
                            }

                            $($checkboxesNotThis).prop('checked', false);
                            $optionsNotThis.prop('selected', false);

                            // It's a single selection, so close.
                            this.$button.click();
                        }

                        if (this.options.selectedClass === "active") {
                            $optionsNotThis.closest("a").css("outline", "");
                        }
                    }
                    else {
                        // Unselect option.
                        $option.prop('selected', false);
                    }

                    // To prevent select all from firing onChange: #575
                    this.options.onChange($option, checked);

                    // Do not update select all or optgroups on select all change!
                    this.updateSelectAll();

                    if (this.options.enableClickableOptGroups && this.options.multiple) {
                        this.updateOptGroups();
                    }
                }

                this.$select.change();
                this.updateButtonText();

                if(this.options.preventInputChangeEvent) {
                    return false;
                }
            }, this));

            $('li a', this.$ul).on('mousedown', function(e) {
                if (e.shiftKey) {
                    // Prevent selecting text by Shift+click
                    return false;
                }
            });

            $('li a', this.$ul).on('touchstart click', $.proxy(function(event) {
                event.stopPropagation();

                var $target = $(event.target);

                if (event.shiftKey && this.options.multiple) {
                    if($target.is("label")){ // Handles checkbox selection manually (see https://github.com/davidstutz/bootstrap-multiselect/issues/431)
                        event.preventDefault();
                        $target = $target.find("input");
                        $target.prop("checked", !$target.prop("checked"));
                    }
                    var checked = $target.prop('checked') || false;

                    if (this.lastToggledInput !== null && this.lastToggledInput !== $target) { // Make sure we actually have a range
                        var from = $target.closest("li").index();
                        var to = this.lastToggledInput.closest("li").index();

                        if (from > to) { // Swap the indices
                            var tmp = to;
                            to = from;
                            from = tmp;
                        }

                        // Make sure we grab all elements since slice excludes the last index
                        ++to;

                        // Change the checkboxes and underlying options
                        var range = this.$ul.find("li").slice(from, to).find("input");

                        range.prop('checked', checked);

                        if (this.options.selectedClass) {
                            range.closest('li')
                                .toggleClass(this.options.selectedClass, checked);
                        }

                        for (var i = 0, j = range.length; i < j; i++) {
                            var $checkbox = $(range[i]);

                            var $option = this.getOptionByValue($checkbox.val());

                            $option.prop('selected', checked);
                        }
                    }

                    // Trigger the select "change" event
                    $target.trigger("change");
                }

                // Remembers last clicked option
                if($target.is("input") && !$target.closest("li").is(".multiselect-item")){
                    this.lastToggledInput = $target;
                }

                $target.blur();
            }, this));

            // Keyboard support.
            this.$container.off('keydown.multiselect').on('keydown.multiselect', $.proxy(function(event) {
                if ($('input[type="text"]', this.$container).is(':focus')) {
                    return;
                }

                if (event.keyCode === 9 && this.$container.hasClass('open')) {
                    this.$button.click();
                }
                else {
                    var $items = $(this.$container).find("li:not(.divider):not(.disabled) a").filter(":visible");

                    if (!$items.length) {
                        return;
                    }

                    var index = $items.index($items.filter(':focus'));

                    // Navigation up.
                    if (event.keyCode === 38 && index > 0) {
                        index--;
                    }
                    // Navigate down.
                    else if (event.keyCode === 40 && index < $items.length - 1) {
                        index++;
                    }
                    else if (!~index) {
                        index = 0;
                    }

                    var $current = $items.eq(index);
                    $current.focus();

                    if (event.keyCode === 32 || event.keyCode === 13) {
                        var $checkbox = $current.find('input');

                        $checkbox.prop("checked", !$checkbox.prop("checked"));
                        $checkbox.change();
                    }

                    event.stopPropagation();
                    event.preventDefault();
                }
            }, this));

            if (this.options.enableClickableOptGroups && this.options.multiple) {
                $("li.multiselect-group input", this.$ul).on("change", $.proxy(function(event) {
                    event.stopPropagation();

                    var $target = $(event.target);
                    var checked = $target.prop('checked') || false;

                    var $li = $(event.target).closest('li');
                    var $group = $li.nextUntil("li.multiselect-group")
                        .not('.multiselect-filter-hidden')
                        .not('.disabled');

                    var $inputs = $group.find("input");

                    var values = [];
                    var $options = [];

                    if (this.options.selectedClass) {
                        if (checked) {
                            $li.addClass(this.options.selectedClass);
                        }
                        else {
                            $li.removeClass(this.options.selectedClass);
                        }
                    }

                    $.each($inputs, $.proxy(function(index, input) {
                        var value = $(input).val();
                        var $option = this.getOptionByValue(value);

                        if (checked) {
                            $(input).prop('checked', true);
                            $(input).closest('li')
                                .addClass(this.options.selectedClass);

                            $option.prop('selected', true);
                        }
                        else {
                            $(input).prop('checked', false);
                            $(input).closest('li')
                                .removeClass(this.options.selectedClass);

                            $option.prop('selected', false);
                        }

                        $options.push(this.getOptionByValue(value));
                    }, this))

                    // Cannot use select or deselect here because it would call updateOptGroups again.

                    this.options.onChange($options, checked);

                    this.updateButtonText();
                    this.updateSelectAll();
                }, this));
            }

            if (this.options.enableCollapsibleOptGroups && this.options.multiple) {
                $("li.multiselect-group .caret-container", this.$ul).on("click", $.proxy(function(event) {
                    var $li = $(event.target).closest('li');
                    var $inputs = $li.nextUntil("li.multiselect-group")
                            .not('.multiselect-filter-hidden');

                    var visible = true;
                    $inputs.each(function() {
                        visible = visible && $(this).is(':visible');
                    });

                    if (visible) {
                        $inputs.hide()
                            .addClass('multiselect-collapsible-hidden');
                    }
                    else {
                        $inputs.show()
                            .removeClass('multiselect-collapsible-hidden');
                    }
                }, this));

                $("li.multiselect-all", this.$ul).css('background', '#f3f3f3').css('border-bottom', '1px solid #eaeaea');
                $("li.multiselect-all > a > label.checkbox", this.$ul).css('padding', '3px 20px 3px 35px');
                $("li.multiselect-group > a > input", this.$ul).css('margin', '4px 0px 5px -20px');
            }
        },

        /**
         * Create an option using the given select option.
         *
         * @param {jQuery} element
         */
        createOptionValue: function(element) {
            var $element = $(element);
            if ($element.is(':selected')) {
                $element.prop('selected', true);
            }

            // Support the label attribute on options.
            var label = this.options.optionLabel(element);
            var classes = this.options.optionClass(element);
            var value = $element.val();
            var inputType = this.options.multiple ? "checkbox" : "radio";

            var $li = $(this.options.templates.li);
            var $label = $('label', $li);
            $label.addClass(inputType);
            $li.addClass(classes);

            if (this.options.enableHTML) {
                $label.html(" " + label);
            }
            else {
                $label.text(" " + label);
            }

            var $checkbox = $('<input/>').attr('type', inputType);

            var name = this.options.checkboxName($element);
            if (name) {
                $checkbox.attr('name', name);
            }

            $label.prepend($checkbox);

            var selected = $element.prop('selected') || false;
            $checkbox.val(value);

            if (value === this.options.selectAllValue) {
                $li.addClass("multiselect-item multiselect-all");
                $checkbox.parent().parent()
                    .addClass('multiselect-all');
            }

            $label.attr('title', $element.attr('title'));

            this.$ul.append($li);

            if ($element.is(':disabled')) {
                $checkbox.attr('disabled', 'disabled')
                    .prop('disabled', true)
                    .closest('a')
                    .attr("tabindex", "-1")
                    .closest('li')
                    .addClass('disabled');
            }

            $checkbox.prop('checked', selected);

            if (selected && this.options.selectedClass) {
                $checkbox.closest('li')
                    .addClass(this.options.selectedClass);
            }
        },

        /**
         * Creates a divider using the given select option.
         *
         * @param {jQuery} element
         */
        createDivider: function(element) {
            var $divider = $(this.options.templates.divider);
            this.$ul.append($divider);
        },

        /**
         * Creates an optgroup.
         *
         * @param {jQuery} group
         */
        createOptgroup: function(group) {
            var label = $(group).attr("label");
            var value = $(group).attr("value");
            var $li = $('<li class="multiselect-item multiselect-group"><a href="javascript:void(0);"><label><b></b></label></a></li>');

            var classes = this.options.optionClass(group);
            $li.addClass(classes);

            if (this.options.enableHTML) {
                $('label b', $li).html(" " + label);
            }
            else {
                $('label b', $li).text(" " + label);
            }

            if (this.options.enableCollapsibleOptGroups && this.options.multiple) {
                $('a', $li).append('<span class="caret-container"><b class="caret"></b></span>');
            }

            if (this.options.enableClickableOptGroups && this.options.multiple) {
                $('a label', $li).prepend('<input type="checkbox" value="' + value + '"/>');
            }

            if ($(group).is(':disabled')) {
                $li.addClass('disabled');
            }

            this.$ul.append($li);

            $("option", group).each($.proxy(function($, group) {
                this.createOptionValue(group);
            }, this))
        },

        /**
         * Build the select all.
         *
         * Checks if a select all has already been created.
         */
        buildSelectAll: function() {
            if (typeof this.options.selectAllValue === 'number') {
                this.options.selectAllValue = this.options.selectAllValue.toString();
            }

            var alreadyHasSelectAll = this.hasSelectAll();

            if (!alreadyHasSelectAll && this.options.includeSelectAllOption && this.options.multiple
                    && $('option', this.$select).length > this.options.includeSelectAllIfMoreThan) {

                // Check whether to add a divider after the select all.
                if (this.options.includeSelectAllDivider) {
                    this.$ul.prepend($(this.options.templates.divider));
                }

                var $li = $(this.options.templates.li);
                $('label', $li).addClass("checkbox");

                if (this.options.enableHTML) {
                    $('label', $li).html(" " + this.options.selectAllText);
                }
                else {
                    $('label', $li).text(" " + this.options.selectAllText);
                }

                if (this.options.selectAllName) {
                    $('label', $li).prepend('<input type="checkbox" name="' + this.options.selectAllName + '" />');
                }
                else {
                    $('label', $li).prepend('<input type="checkbox" />');
                }

                var $checkbox = $('input', $li);
                $checkbox.val(this.options.selectAllValue);

                $li.addClass("multiselect-item multiselect-all");
                $checkbox.parent().parent()
                    .addClass('multiselect-all');

                this.$ul.prepend($li);

                $checkbox.prop('checked', false);
            }
        },

        /**
         * Builds the filter.
         */
        buildFilter: function() {

            // Build filter if filtering OR case insensitive filtering is enabled and the number of options exceeds (or equals) enableFilterLength.
            if (this.options.enableFiltering || this.options.enableCaseInsensitiveFiltering) {
                var enableFilterLength = Math.max(this.options.enableFiltering, this.options.enableCaseInsensitiveFiltering);

                if (this.$select.find('option').length >= enableFilterLength) {

                    this.$filter = $(this.options.templates.filter);
                    $('input', this.$filter).attr('placeholder', this.options.filterPlaceholder);

                    // Adds optional filter clear button
                    if(this.options.includeFilterClearBtn) {
                        var clearBtn = $(this.options.templates.filterClearBtn);
                        clearBtn.on('click', $.proxy(function(event){
                            clearTimeout(this.searchTimeout);

                            this.$filter.find('.multiselect-search').val('');
                            $('li', this.$ul).show().removeClass('multiselect-filter-hidden');

                            this.updateSelectAll();

                            if (this.options.enableClickableOptGroups && this.options.multiple) {
                                this.updateOptGroups();
                            }

                        }, this));
                        this.$filter.find('.input-group').append(clearBtn);
                    }

                    this.$ul.prepend(this.$filter);

                    this.$filter.val(this.query).on('click', function(event) {
                        event.stopPropagation();
                    }).on('input keydown', $.proxy(function(event) {
                        // Cancel enter key default behaviour
                        if (event.which === 13) {
                          event.preventDefault();
                      }

                        // This is useful to catch "keydown" events after the browser has updated the control.
                        clearTimeout(this.searchTimeout);

                        this.searchTimeout = this.asyncFunction($.proxy(function() {

                            if (this.query !== event.target.value) {
                                this.query = event.target.value;

                                var currentGroup, currentGroupVisible;
                                $.each($('li', this.$ul), $.proxy(function(index, element) {
                                    var value = $('input', element).length > 0 ? $('input', element).val() : "";
                                    var text = $('label', element).text();

                                    var filterCandidate = '';
                                    if ((this.options.filterBehavior === 'text')) {
                                        filterCandidate = text;
                                    }
                                    else if ((this.options.filterBehavior === 'value')) {
                                        filterCandidate = value;
                                    }
                                    else if (this.options.filterBehavior === 'both') {
                                        filterCandidate = text + '\n' + value;
                                    }

                                    if (value !== this.options.selectAllValue && text) {

                                        // By default lets assume that element is not
                                        // interesting for this search.
                                        var showElement = false;

                                        if (this.options.enableCaseInsensitiveFiltering) {
                                            filterCandidate = filterCandidate.toLowerCase();
                                            this.query = this.query.toLowerCase();
                                        }

                                        if (this.options.enableFullValueFiltering && this.options.filterBehavior !== 'both') {
                                            var valueToMatch = filterCandidate.trim().substring(0, this.query.length);
                                            if (this.query.indexOf(valueToMatch) > -1) {
                                                showElement = true;
                                            }
                                        }
                                        else if (filterCandidate.indexOf(this.query) > -1) {
                                            showElement = true;
                                        }

                                        // Toggle current element (group or group item) according to showElement boolean.
                                        $(element).toggle(showElement)
                                            .toggleClass('multiselect-filter-hidden', !showElement);

                                        // Differentiate groups and group items.
                                        if ($(element).hasClass('multiselect-group')) {
                                            // Remember group status.
                                            currentGroup = element;
                                            currentGroupVisible = showElement;
                                        }
                                        else {
                                            // Show group name when at least one of its items is visible.
                                            if (showElement) {
                                                $(currentGroup).show()
                                                    .removeClass('multiselect-filter-hidden');
                                            }

                                            // Show all group items when group name satisfies filter.
                                            if (!showElement && currentGroupVisible) {
                                                $(element).show()
                                                    .removeClass('multiselect-filter-hidden');
                                            }
                                        }
                                    }
                                }, this));
                            }

                            this.updateSelectAll();

                            if (this.options.enableClickableOptGroups && this.options.multiple) {
                                this.updateOptGroups();
                            }

                            this.options.onFiltering(event.target);

                        }, this), 300, this);
                    }, this));
                }
            }
        },

        /**
         * Unbinds the whole plugin.
         */
        destroy: function() {
            this.$container.remove();
            this.$select.show();

            // reset original state
            this.$select.prop('disabled', this.options.wasDisabled);

            this.$select.data('multiselect', null);
        },

        /**
         * Refreshs the multiselect based on the selected options of the select.
         */
        refresh: function () {
            var inputs = $.map($('li input', this.$ul), $);

            $('option', this.$select).each($.proxy(function (index, element) {
                var $elem = $(element);
                var value = $elem.val();
                var $input;
                for (var i = inputs.length; 0 < i--; /**/) {
                    if (value !== ($input = inputs[i]).val())
                        continue; // wrong li

                    if ($elem.is(':selected')) {
                        $input.prop('checked', true);

                        if (this.options.selectedClass) {
                            $input.closest('li')
                                .addClass(this.options.selectedClass);
                        }
                    }
                    else {
                        $input.prop('checked', false);

                        if (this.options.selectedClass) {
                            $input.closest('li')
                                .removeClass(this.options.selectedClass);
                        }
                    }

                    if ($elem.is(":disabled")) {
                        $input.attr('disabled', 'disabled')
                            .prop('disabled', true)
                            .closest('li')
                            .addClass('disabled');
                    }
                    else {
                        $input.prop('disabled', false)
                            .closest('li')
                            .removeClass('disabled');
                    }
                    break; // assumes unique values
                }
            }, this));

            this.updateButtonText();
            this.updateSelectAll();

            if (this.options.enableClickableOptGroups && this.options.multiple) {
                this.updateOptGroups();
            }
        },

        /**
         * Select all options of the given values.
         *
         * If triggerOnChange is set to true, the on change event is triggered if
         * and only if one value is passed.
         *
         * @param {Array} selectValues
         * @param {Boolean} triggerOnChange
         */
        select: function(selectValues, triggerOnChange) {
            if(!$.isArray(selectValues)) {
                selectValues = [selectValues];
            }

            for (var i = 0; i < selectValues.length; i++) {
                var value = selectValues[i];

                if (value === null || value === undefined) {
                    continue;
                }

                var $option = this.getOptionByValue(value);
                var $checkbox = this.getInputByValue(value);

                if($option === undefined || $checkbox === undefined) {
                    continue;
                }

                if (!this.options.multiple) {
                    this.deselectAll(false);
                }

                if (this.options.selectedClass) {
                    $checkbox.closest('li')
                        .addClass(this.options.selectedClass);
                }

                $checkbox.prop('checked', true);
                $option.prop('selected', true);

                if (triggerOnChange) {
                    this.options.onChange($option, true);
                }
            }

            this.updateButtonText();
            this.updateSelectAll();

            if (this.options.enableClickableOptGroups && this.options.multiple) {
                this.updateOptGroups();
            }
        },

        /**
         * Clears all selected items.
         */
        clearSelection: function () {
            this.deselectAll(false);
            this.updateButtonText();
            this.updateSelectAll();

            if (this.options.enableClickableOptGroups && this.options.multiple) {
                this.updateOptGroups();
            }
        },

        /**
         * Deselects all options of the given values.
         *
         * If triggerOnChange is set to true, the on change event is triggered, if
         * and only if one value is passed.
         *
         * @param {Array} deselectValues
         * @param {Boolean} triggerOnChange
         */
        deselect: function(deselectValues, triggerOnChange) {
            if(!$.isArray(deselectValues)) {
                deselectValues = [deselectValues];
            }

            for (var i = 0; i < deselectValues.length; i++) {
                var value = deselectValues[i];

                if (value === null || value === undefined) {
                    continue;
                }

                var $option = this.getOptionByValue(value);
                var $checkbox = this.getInputByValue(value);

                if($option === undefined || $checkbox === undefined) {
                    continue;
                }

                if (this.options.selectedClass) {
                    $checkbox.closest('li')
                        .removeClass(this.options.selectedClass);
                }

                $checkbox.prop('checked', false);
                $option.prop('selected', false);

                if (triggerOnChange) {
                    this.options.onChange($option, false);
                }
            }

            this.updateButtonText();
            this.updateSelectAll();

            if (this.options.enableClickableOptGroups && this.options.multiple) {
                this.updateOptGroups();
            }
        },

        /**
         * Selects all enabled & visible options.
         *
         * If justVisible is true or not specified, only visible options are selected.
         *
         * @param {Boolean} justVisible
         * @param {Boolean} triggerOnSelectAll
         */
        selectAll: function (justVisible, triggerOnSelectAll) {

            var justVisible = typeof justVisible === 'undefined' ? true : justVisible;
            var allLis = $("li:not(.divider):not(.disabled):not(.multiselect-group)", this.$ul);
            var visibleLis = $("li:not(.divider):not(.disabled):not(.multiselect-group):not(.multiselect-filter-hidden):not(.multiselect-collapisble-hidden)", this.$ul).filter(':visible');

            if(justVisible) {
                $('input:enabled' , visibleLis).prop('checked', true);
                visibleLis.addClass(this.options.selectedClass);

                $('input:enabled' , visibleLis).each($.proxy(function(index, element) {
                    var value = $(element).val();
                    var option = this.getOptionByValue(value);
                    $(option).prop('selected', true);
                }, this));
            }
            else {
                $('input:enabled' , allLis).prop('checked', true);
                allLis.addClass(this.options.selectedClass);

                $('input:enabled' , allLis).each($.proxy(function(index, element) {
                    var value = $(element).val();
                    var option = this.getOptionByValue(value);
                    $(option).prop('selected', true);
                }, this));
            }

            $('li input[value="' + this.options.selectAllValue + '"]', this.$ul).prop('checked', true);

            if (this.options.enableClickableOptGroups && this.options.multiple) {
                this.updateOptGroups();
            }

            if (triggerOnSelectAll) {
                this.options.onSelectAll();
            }
        },

        /**
         * Deselects all options.
         *
         * If justVisible is true or not specified, only visible options are deselected.
         *
         * @param {Boolean} justVisible
         */
        deselectAll: function (justVisible, triggerOnDeselectAll) {

            var justVisible = typeof justVisible === 'undefined' ? true : justVisible;
            var allLis = $("li:not(.divider):not(.disabled):not(.multiselect-group)", this.$ul);
            var visibleLis = $("li:not(.divider):not(.disabled):not(.multiselect-group):not(.multiselect-filter-hidden):not(.multiselect-collapisble-hidden)", this.$ul).filter(':visible');

            if(justVisible) {
                $('input[type="checkbox"]:enabled' , visibleLis).prop('checked', false);
                visibleLis.removeClass(this.options.selectedClass);

                $('input[type="checkbox"]:enabled' , visibleLis).each($.proxy(function(index, element) {
                    var value = $(element).val();
                    var option = this.getOptionByValue(value);
                    $(option).prop('selected', false);
                }, this));
            }
            else {
                $('input[type="checkbox"]:enabled' , allLis).prop('checked', false);
                allLis.removeClass(this.options.selectedClass);

                $('input[type="checkbox"]:enabled' , allLis).each($.proxy(function(index, element) {
                    var value = $(element).val();
                    var option = this.getOptionByValue(value);
                    $(option).prop('selected', false);
                }, this));
            }

            $('li input[value="' + this.options.selectAllValue + '"]', this.$ul).prop('checked', false);

            if (this.options.enableClickableOptGroups && this.options.multiple) {
                this.updateOptGroups();
            }

            if (triggerOnDeselectAll) {
                this.options.onDeselectAll();
            }
        },

        /**
         * Rebuild the plugin.
         *
         * Rebuilds the dropdown, the filter and the select all option.
         */
        rebuild: function() {
            this.$ul.html('');

            // Important to distinguish between radios and checkboxes.
            this.options.multiple = this.$select.attr('multiple') === "multiple";

            this.buildSelectAll();
            this.buildDropdownOptions();
            this.buildFilter();

            this.updateButtonText();
            this.updateSelectAll(true);

            if (this.options.enableClickableOptGroups && this.options.multiple) {
                this.updateOptGroups();
            }

            if (this.options.disableIfEmpty && $('option', this.$select).length <= 0) {
                this.disable();
            }
            else {
                this.enable();
            }

            if (this.options.dropRight) {
                this.$ul.addClass('pull-right');
            }
        },

        /**
         * The provided data will be used to build the dropdown.
         */
        dataprovider: function(dataprovider) {

            var groupCounter = 0;
            var $select = this.$select.empty();

            $.each(dataprovider, function (index, option) {
                var $tag;

                if ($.isArray(option.children)) { // create optiongroup tag
                    groupCounter++;

                    $tag = $('<optgroup/>').attr({
                        label: option.label || 'Group ' + groupCounter,
                        disabled: !!option.disabled
                    });

                    forEach(option.children, function(subOption) { // add children option tags
                        var attributes = {
                            value: subOption.value,
                            label: subOption.label || subOption.value,
                            title: subOption.title,
                            selected: !!subOption.selected,
                            disabled: !!subOption.disabled
                        };

                        //Loop through attributes object and add key-value for each attribute
                       for (var key in subOption.attributes) {
                            attributes['data-' + key] = subOption.attributes[key];
                       }
                         //Append original attributes + new data attributes to option
                        $tag.append($('<option/>').attr(attributes));
                    });
                }
                else {

                    var attributes = {
                        'value': option.value,
                        'label': option.label || option.value,
                        'title': option.title,
                        'class': option.class,
                        'selected': !!option.selected,
                        'disabled': !!option.disabled
                    };
                    //Loop through attributes object and add key-value for each attribute
                    for (var key in option.attributes) {
                      attributes['data-' + key] = option.attributes[key];
                    }
                    //Append original attributes + new data attributes to option
                    $tag = $('<option/>').attr(attributes);

                    $tag.text(option.label || option.value);
                }

                $select.append($tag);
            });

            this.rebuild();
        },

        /**
         * Enable the multiselect.
         */
        enable: function() {
            this.$select.prop('disabled', false);
            this.$button.prop('disabled', false)
                .removeClass('disabled');
        },

        /**
         * Disable the multiselect.
         */
        disable: function() {
            this.$select.prop('disabled', true);
            this.$button.prop('disabled', true)
                .addClass('disabled');
        },

        /**
         * Set the options.
         *
         * @param {Array} options
         */
        setOptions: function(options) {
            this.options = this.mergeOptions(options);
        },

        /**
         * Merges the given options with the default options.
         *
         * @param {Array} options
         * @returns {Array}
         */
        mergeOptions: function(options) {
            return $.extend(true, {}, this.defaults, this.options, options);
        },

        /**
         * Checks whether a select all checkbox is present.
         *
         * @returns {Boolean}
         */
        hasSelectAll: function() {
            return $('li.multiselect-all', this.$ul).length > 0;
        },

        /**
         * Update opt groups.
         */
        updateOptGroups: function() {
            var $groups = $('li.multiselect-group', this.$ul)
            var selectedClass = this.options.selectedClass;

            $groups.each(function() {
                var $options = $(this).nextUntil('li.multiselect-group')
                    .not('.multiselect-filter-hidden')
                    .not('.disabled');

                var checked = true;
                $options.each(function() {
                    var $input = $('input', this);

                    if (!$input.prop('checked')) {
                        checked = false;
                    }
                });

                if (selectedClass) {
                    if (checked) {
                        $(this).addClass(selectedClass);
                    }
                    else {
                        $(this).removeClass(selectedClass);
                    }
                }

                $('input', this).prop('checked', checked);
            });
        },

        /**
         * Updates the select all checkbox based on the currently displayed and selected checkboxes.
         */
        updateSelectAll: function(notTriggerOnSelectAll) {
            if (this.hasSelectAll()) {
                var allBoxes = $("li:not(.multiselect-item):not(.multiselect-filter-hidden):not(.multiselect-group):not(.disabled) input:enabled", this.$ul);
                var allBoxesLength = allBoxes.length;
                var checkedBoxesLength = allBoxes.filter(":checked").length;
                var selectAllLi  = $("li.multiselect-all", this.$ul);
                var selectAllInput = selectAllLi.find("input");

                if (checkedBoxesLength > 0 && checkedBoxesLength === allBoxesLength) {
                    selectAllInput.prop("checked", true);
                    selectAllLi.addClass(this.options.selectedClass);
                }
                else {
                    selectAllInput.prop("checked", false);
                    selectAllLi.removeClass(this.options.selectedClass);
                }
            }
        },

        /**
         * Update the button text and its title based on the currently selected options.
         */
        updateButtonText: function() {
            var options = this.getSelected();

            // First update the displayed button text.
            if (this.options.enableHTML) {
                $('.multiselect .multiselect-selected-text', this.$container).html(this.options.buttonText(options, this.$select));
            }
            else {
                $('.multiselect .multiselect-selected-text', this.$container).text(this.options.buttonText(options, this.$select));
            }

            // Now update the title attribute of the button.
            $('.multiselect', this.$container).attr('title', this.options.buttonTitle(options, this.$select));
        },

        /**
         * Get all selected options.
         *
         * @returns {jQUery}
         */
        getSelected: function() {
            return $('option', this.$select).filter(":selected");
        },

        /**
         * Gets a select option by its value.
         *
         * @param {String} value
         * @returns {jQuery}
         */
        getOptionByValue: function (value) {

            var options = $('option', this.$select);
            var valueToCompare = value.toString();

            for (var i = 0; i < options.length; i = i + 1) {
                var option = options[i];
                if (option.value === valueToCompare) {
                    return $(option);
                }
            }
        },

        /**
         * Get the input (radio/checkbox) by its value.
         *
         * @param {String} value
         * @returns {jQuery}
         */
        getInputByValue: function (value) {

            var checkboxes = $('li input:not(.multiselect-search)', this.$ul);
            var valueToCompare = value.toString();

            for (var i = 0; i < checkboxes.length; i = i + 1) {
                var checkbox = checkboxes[i];
                if (checkbox.value === valueToCompare) {
                    return $(checkbox);
                }
            }
        },

        /**
         * Used for knockout integration.
         */
        updateOriginalOptions: function() {
            this.originalOptions = this.$select.clone()[0].options;
        },

        asyncFunction: function(callback, timeout, self) {
            var args = Array.prototype.slice.call(arguments, 3);
            return setTimeout(function() {
                callback.apply(self || window, args);
            }, timeout);
        },

        setAllSelectedText: function(allSelectedText) {
            this.options.allSelectedText = allSelectedText;
            this.updateButtonText();
        }
    };

    $.fn.multiselect = function(option, parameter, extraOptions) {
        return this.each(function() {
            var data = $(this).data('multiselect');
            var options = typeof option === 'object' && option;

            // Initialize the multiselect.
            if (!data) {
                data = new Multiselect(this, options);
                $(this).data('multiselect', data);
            }

            // Call multiselect method.
            if (typeof option === 'string') {
                data[option](parameter, extraOptions);

                if (option === 'destroy') {
                    $(this).data('multiselect', false);
                }
            }
        });
    };

    $.fn.multiselect.Constructor = Multiselect;

    $(function() {
        $("select[data-role=multiselect]").multiselect();
    });

}(window.jQuery);
</script>

<?php get_footer();
