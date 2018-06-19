<?php
/* Template Name: Club Profile Page */
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
$clubarray = array();
$args = array('role'=> 'club','orderby'=>'display_name','order'=>ASC);
$clubs = get_users( $args ); 
// echo '<pre>';print_r($clubs);exit;
foreach($clubs AS $club){
    $firstletter = substr($club->data->display_name, 0, 1);
    // echo $firstletter;
    $clubarray[$firstletter][] = $club;
}


if(is_user_logged_in()){
    $current_user = wp_get_current_user();
}
    if(in_array( 'club', (array) $current_user->roles )){
    $user_id = $current_user->ID;
    $imageId = get_field('club_logo','user_'.$user_id);
    
    $logoImage = wp_get_attachment_image_src($imageId,'full');
    // echo '<pre>';print_r($logoImage[0]);exit;
    

?>
<?php
$search = realpath(__DIR__ . '/..').'\template-parts\search-widget.php';


if (file_exists($search)) {
    // echo "in if";exit;
    require( $search );
}
?>

</div>

<div class="logo_border">
    <div class="container">
        <div class="logo"><img src="<?php echo $logoImage[0];?>"></div>
    </div>
</div>

<div class="inner_wrapper">
    <div class="container">

        <div class="row">
            <div class="col-md-12 col-xs-12">
                <h3 class="header">Overzicht voetbalclubs Nederland</h3>
            </div>


        </div>
        <div class="row">
        <div class="atoz_wrapper">

        <div class="col-md-12 col-xs-12">
        <?php foreach($clubarray AS $key => $cluba){?>
            <div class="atoz">
            <div class="atoz line "></div>
            <div class="atoz char"><?php echo $key; ?></div>
            <ul>
            <?php foreach($cluba AS $club){ ?>
                <li><a href=""><?php echo $club->data->display_name; ?></a></li>
            <?php }?>
                
            </ul>
        </div>
        <?php }?>
            
        </div>
            </div>

    </div>
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <h3 class="header">Leden van Juniorscouting</h3>
            </div>


        </div>

        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="background_stripe">
                    <p class="header">ADO Den Haag</p>
                    <p class="detail">Haags Kwartier 55</p>
                    <p class="detail">2491 BM Den Haag</p>
                </div>
                <div class="jrscouting">
                <?php 
                $players = get_field('player_list','user_'.$user_id);
                foreach($players AS $player){
                    $playerId = $player['ID'];
                    $playerProfile = get_field('profile_picture','user_'.$playerId);
                    
                ?>    
                <a href="<?php echo esc_url(get_permalink(get_page_by_path('Player Profile Page')))."&playerid=".$playerId; ?>"><img src="<?php echo $playerProfile; ?>" /></a>
                <?php }
                ?>
                </div>
            </div>


        </div>


    </div>


<?php }else{ ?>
    <div class="filter_wrapper inner_filter">

<div class="container">

    <h4>ZOEKEN</h4>
    <form>
        <div class="form-group form-inline">
            <div class="row">
                <div class="col-md-12 col-xs-12">
                    <div class="field_wrapper">
                        <label for="naam">NAAM</label>
                        <input type="text" class="form-control name_field" id="naam">
                    </div>
                    <div class="field_wrapper">
                        <label for="LEEFTIJD">CLUB</label>
                        <select class="form-control" id="LEEFTIJD">
                            <option> Feyenoord</option>
                            <option> Feyenoord</option>
                            <option> Feyenoord</option>
                        </select>
                    </div>
                    <div class="field_wrapper">

                        <label for="AGENDA">AGENDA</label>
                        <select class="form-control" id="AGENDA">
                            <option> January</option>
                            <option> Ferbruary</option>
                            <option> March</option>
                            <option> April</option>
                            <option> May</option>
                            <option> June</option>
                            <option> July</option>
                            <option> August</option>
                            <option> September</option>
                            <option> October</option>
                            <option> November</option>
                            <option> December</option>
                        </select>
                    </div>
                    <div class="field_wrapper">
                        <label for="STERREN">STERREN</label>
                        <select class="form-control sterren" id="STERREN">
                            <option>5 Sterren</option>
                            <option>5 Sterren</option>
                            <option>5 Sterren</option>
                        </select></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-xs-12">
                    <div class="field_wrapper">
                        <label for=" " style="visibility: hidden" class="hide_frm_small">NAAM</label>
                        <input style="visibility: hidden" type="text" class="hide_frm_small form-control name_field"
                               id=" ">
                    </div>
                    <div class="field_wrapper">
                        <label for="LEEFTIJD">LEEFTIJD</label>
                        <select class="form-control" id="LEEFTIJD">
                            <option> 6-8 jaar</option>
                            <option> 8-10 jaar</option>
                            <option> 10-14 jaar</option>
                        </select>
                    </div>
                    <div class="field_wrapper">
                        <label for="POSITIE_VELD">POSITIE VELD</label>
                        <select class="form-control" id="POSITIE_VELD">
                            <option> keepper</option>
                            <option> keepper</option>
                            <option> keepper</option>
                        </select>
                    </div>
                    <div class="field_wrapper">
                        <label for="KWALIFICATIE">KWALIFICATIE</label>
                        <select class="form-control kwalificatie" id="KWALIFICATIE">
                            <option>F (6-8 jr.)</option>
                            <option>F (6-8 jr.)</option>
                            <option>F (6-8 jr.)</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-xs-12">
                    <div class=" form-control btn btn-danger login_btn pull-right">INLOGGEN</div>
                </div>
            </div>
        </div>


    </form>

</div>

</div>
<div class="logo_border">
    <div class="container">
        <div class="logo"><img src="<?php echo get_template_directory_uri(); ?>/images/feyenoord_logo.png"></div>
    </div>
</div>
<div class="inner_wrapper">
<div class="container">

        <div class="row">
            <div class="col-md-12 col-xs-12">
                <h3 class="header">Overzicht voetbalclubs Nederland</h3>
            </div>


        </div>
        <div class="row">
        <div class="atoz_wrapper">

        <div class="col-md-12 col-xs-12">
        <?php foreach($clubarray AS $key => $cluba){?>
            <div class="atoz">
            <div class="atoz line "></div>
            <div class="atoz char"><?php echo $key; ?></div>
            <ul>
            <?php foreach($cluba AS $club){ ?>
                <li><a href=""><?php echo $club->data->display_name; ?></a></li>
            <?php }?>
                
            </ul>
        </div>
        <?php }?>
            
        </div>
            </div>

    </div>
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <h3 class="header">Leden van Juniorscouting</h3>
            </div>


        </div>

        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="background_stripe">
                    <p class="header">ADO Den Haag</p>
                    <p class="detail">Haags Kwartier 55</p>
                    <p class="detail">2491 BM Den Haag</p>

                </div>
                <div class="jrscouting">
                    <img src="<?php echo get_template_directory_uri(); ?>/images/junior_scouting_1_locked.png"/>
                    <img src="<?php echo get_template_directory_uri(); ?>/images/junior_scouting_2_locked.png"/>
                    <img src="<?php echo get_template_directory_uri(); ?>/images/junior_scouting_3_locked.png"/>
                    <img src="<?php echo get_template_directory_uri(); ?>/images/junior_scouting_4_locked.png"/>
                    <img src="<?php echo get_template_directory_uri(); ?>/images/junior_scouting_5_locked.png"/>

                </div>
            </div>


        </div>


    </div>
<?php }


$commonSponsor = realpath(__DIR__ . '/..').'/template-parts/common-sponsor.php';
$commonCards = realpath(__DIR__ . '/..').'/template-parts/common-cards.php';

if (file_exists($commonCards)) {
    require( $commonCards );
}

if (file_exists($commonSponsor)) {
    require( $commonSponsor );
}


get_footer();
