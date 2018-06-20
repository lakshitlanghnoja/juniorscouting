<?php if(is_user_logged_in()){ ?>
    <div class="filter_wrapper inner_filter">
    <div class="container">

<h4>ZOEKEN</h4>
<form>
    <div class="form-group form-inline">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="field_wrapper">
                    <label for="naam">NAAM</label>
                    <input type="text" class="form-control name_field playername" id="naam" name="playername">
                </div>
                <div class="field_wrapper">
                    <label for="LEEFTIJD">CLUB</label>
                    <select class="form-control" id="LEEFTIJD"  name="clubname">
                    <?php $args = array(
	'role'         => 'Club',
	
 ); 
$users = get_users( $args ); 

foreach($users AS $user){
    // echo '<pre>';print_r($user);exit; 
    ?>
    <option value='<?php echo $user->data->ID; ?>'><?php echo $user->data->display_name; ?></option>    
<?php }
?>  </select>
                </div>
                <div class="field_wrapper">

                    <label for="AGENDA">AGENDA</label>
                    <select class="form-control agenda" id="AGENDA">
                    <?php $args = array(
                    'post_per_page'=>-1,
                    'post_type'=>'agendas',
                    'post_status'=>'publish',
                );
                $the_query = new WP_Query( $args );

// The Loop
if ( $the_query->have_posts() ) {
	echo '<ul>';
	while ( $the_query->have_posts() ) { 
        $the_query->the_post();
        ?>
        <option value="<?php echo get_the_ID(); ?>"><?php echo get_the_title(); ?></option>
    <?php }}
                ?>
                    </select>
                </div>
                <div class="field_wrapper">
                    <label for="STERREN">STERREN</label>
                    <select class="form-control sterren star" id="STERREN" name="star">
                    <?php for($i=1;$i<=5;$i++) { 
                        ?>
                        <option value="<?php echo $i; ?>"><?php echo $i; ?> Sterren</option>
                    <?php }
                    ?>
                    
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
                    <select class="form-control age" id="LEEFTIJD" name="age">
                        <option> 6-8 jaar</option>
                        <option> 8-10 jaar</option>
                        <option> 10-14 jaar</option>
                    </select>
                </div>
                <div class="field_wrapper">
                    <label for="POSITIE_VELD">POSITIE VELD</label>
                    <select class="form-control position" id="POSITIE_VELD" name="position">
                    <option value="Keeper">Keeper</option>
                    <option value="voorstopper">voorstopper</option>
                    <option value="verdediger">verdediger</option>
                    <option value="linksachter">linksachter</option>
                    <option value="rechtsachter">rechtsachter</option>
                    <option value="vleugelverdediger">vleugelverdediger</option>
                    <option value="buitenspel links">buitenspel links</option>
                    <option value="buitenspel rechts">buitenspel rechts</option>
                    <option value="verdediger middenveld">verdediger middenveld</option>
                    <option value="linker middenveld">linker middenveld</option>
                    <option value="rechter middenveld">rechter middenveld</option>
                    <option value="centrale middenveld">centrale middenveld</option>
                    <option value="aanvaller middenveld">aanvaller middenveld</option>
                    <option value="centrale aanvaller">centrale aanvaller</option>
                        
                    </select>
                </div>
                <div class="field_wrapper">
                    <label for="KWALIFICATIE">KWALIFICATIE</label>
                    <select class="form-control kwalificatie qualification" id="KWALIFICATIE" name="qualification">
                        <option value="Under Graduate">Under Graduate</option>
                        <option value="Graduate">Graduate</option>
                        <option value="Post Graduate">Post Graduate</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class=" form-control btn btn-danger login_btn pull-right search-btn">INLOGGEN</div>
            </div>
        </div>
    </div>


</form>

</div>
</div>
<?php }else{ ?>
    <div class="filter_wrapper home_filter">
    <div class="container">
        <h4>ZOEKEN</h4>
        <form name="searchform" id="searchform">
            <div class="form-group form-inline">
                <label for="naam">NAAM</label>
                <input type="text" class="form-control name_field playername" id="naam" name="playername">
                <label for="LEEFTIJD">LEEFTIJD</label>
                <select class="form-control age" id="LEEFTIJD" name="age">
                    <option value="6-8"> 6-8 jaar</option>
                    <option value="8-10"> 8-10 jaar</option>
                    <option value="10-14"> 10-14 jaar</option>
                </select>
                <label for="AGENDA">AGENDA</label>
                <select class="form-control agenda" id="AGENDA" name="agenda">
                <?php $args = array(
                    'post_per_page'=>-1,
                    'post_type'=>'agendas',
                    'post_status'=>'publish',
                );
                $the_query = new WP_Query( $args );

// The Loop
if ( $the_query->have_posts() ) {
	echo '<ul>';
	while ( $the_query->have_posts() ) { 
        $the_query->the_post();
        ?>
        <option value="<?php echo get_the_ID(); ?>"><?php echo get_the_title(); ?></option>
    <?php }}
                ?>
                
                </select>
                <div class=" form-control btn btn-danger login_btn search-btn">INLOGGEN</div>
            </div>


        </form>

    </div>
</div>

<?php } ?>
<script>
$(".search-btn").click(function(){
    console.log($(".agenda").val());
    return false;
    var playername = '';
    var age = '';
    var agenda = '';
    var position = '';
    var star = '';
    var qualification = '';
    if($(".playername").val() != undefined)
        playername = $(".playername").val();
    if($(".age").val() != undefined)
    age = $(".age").val();
    if($(".agenda").val() != undefined)
    agenda = $(".agenda").val();
    if($(".star").val() != undefined)
    star = $(".star").val();
    if($(".position").val() != undefined)
    position = $(".position").val();
    if($(".qualification").val() != undefined)
    qualification = $(".qualification").val();
    console.log(playername);
    // return false;
    var param = "?playername="+playername+"&age="+age+"&agenda="+agenda+"&star="+star+"&position="+position+"&qualification="+qualification;
    var url = "http://localhost/juniorfootball/search-result"+param;
    // console.log(url);
    // return false;
    window.location.href=url;
    
});
</script>