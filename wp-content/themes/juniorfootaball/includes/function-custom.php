<?php 

add_action('init', 'create_agenda_post_type');

function create_agenda_post_type() {
    $args = array('labels' => array('name' => __('Agendas'), 'singular_name' => __('Agenda')),
        'public' => true,
        'menu_icon' => "dashicons-screenoptions",
        'has_archive' => true,
        'rewrite' => array('slug' => 'agendas'),
        'supports' => array('title', 'editor', 'comments', 'revisions', 'author', 'page-attributes', 'thumbnail'),
    );
    register_post_type('agendas', $args);
}


/* Hide admin bar*/

add_filter('show_admin_bar', '__return_false');

/*
Create custom role
*/

$result = add_role(
    'player',
    __( 'Player' ),
    array(
        'read'         => true,  // true allows this capability
        'edit_posts'   => true,
        'delete_posts' => false, // Use false to explicitly deny
    )
);
if ( null !== $result ) {
    
}
else {
    
}

$result = add_role(
    'club',
    __( 'Club' ),
    array(
        'read'         => true,  // true allows this capability
        'edit_posts'   => true,
        'delete_posts' => false, // Use false to explicitly deny
    )
);
if ( null !== $result ) {
    
}
else {
    
}


add_action('wp_ajax_nopriv_fetchweekdetails', 'fetchweekdetails');
add_action('wp_ajax_fetchweekdetails', 'fetchweekdetails');

function fetchweekdetails(){
//echo '<pre>';print_r($_POST);
$length = count($_POST['week']);
//echo 'length'.$length;exit;
$html = '<tr>
<td>&nbsp;</td>
<td><img src="'.get_template_directory_uri().'/images/club-1.png" /></td>
<td><img src="'.get_template_directory_uri().'/images/laag-1.png" /></td>
<td><img src="'.get_template_directory_uri().'/images/trainer-1.png" /></td>
<td><img src="'.get_template_directory_uri().'/images/doelpunten-1.png" /></td>
<td><img src="'.get_template_directory_uri().'/images/geel-1.png" /></td>
<td><img src="'.get_template_directory_uri().'/images/rood-1.png" /></td>
<td><div class=" form-control btn btn-danger meer_info_btn">MEER INFO</div></td>
</tr>';
$available = 0;
$notavailable = 0;
if(have_rows('weekly_details','user_'.$_POST['playerid'])){
    while(have_rows('weekly_details','user_'.$_POST['playerid'])) : the_row();
    
    if($length == 1){
        if((get_sub_field('week_name') == $_POST['week'][0]) && get_sub_field('year') == $_POST['year']){
            $javascript = "javascript:moreinfo(".$_POST['playerid'].",'".get_sub_field('week_name')."',".get_sub_field('year').")";
            $html .= '<tr>
        <td><strong>'.get_sub_field("week_name").'</strong> </td>
        <td>'.get_sub_field("football_group_name").'</td>
                                    <td>'.get_sub_field("against_club_name").'</td>
                                    <td>'.get_sub_field("coach_name").'</td>
                                    <td>'.get_sub_field("result_of_the_game").'</td>
                                    <td>'.get_sub_field("number_of_yellow_cards").'</td>
                                    <td>'.get_sub_field("number_of_red_cards").'</td>
                                    <td><button class=" form-control btn btn-danger meer_info_btn"  onclick="'.$javascript.'">MEER INFO</button></td></tr>';
                                    $available = 1;
    }else{
        $notavailable = 1;
    }
    }else if($length == 2){
        if((get_sub_field('week_name') == $_POST['week'][0] || get_sub_field('week_name') == $_POST['week'][1]) && get_sub_field('year') == $_POST['year']){
            $javascript = "javascript:moreinfo(".$_POST['playerid'].",'".get_sub_field('week_name')."',".get_sub_field('year').")";
            $html .= '<tr>
        <td><strong>'.get_sub_field("week_name").'</strong> </td>
        <td>'.get_sub_field("football_group_name").'</td>
                                    <td>'.get_sub_field("against_club_name").'</td>
                                    <td>'.get_sub_field("coach_name").'</td>
                                    <td>'.get_sub_field("result_of_the_game").'</td>
                                    <td>'.get_sub_field("number_of_yellow_cards").'</td>
                                    <td>'.get_sub_field("number_of_red_cards").'</td>
                                    <td><button class=" form-control btn btn-danger meer_info_btn"  onclick="'.$javascript.'">MEER INFO</button></td></tr>';
                                    $available = 1;
    }else{
        $notavailable = 1;
    }
    }else if($length == 3){
        if((get_sub_field('week_name') == $_POST['week'][0] || get_sub_field('week_name') == $_POST['week'][1] || get_sub_field('week_name') == $_POST['week'][2]) && get_sub_field('year') == $_POST['year']){
            $javascript = "javascript:moreinfo(".$_POST['playerid'].",'".get_sub_field('week_name')."',".get_sub_field('year').")";
            $html .= '<tr>
        <td><strong>'.get_sub_field("week_name").'</strong> </td>
        <td>'.get_sub_field("football_group_name").'</td>
                                    <td>'.get_sub_field("against_club_name").'</td>
                                    <td>'.get_sub_field("coach_name").'</td>
                                    <td>'.get_sub_field("result_of_the_game").'</td>
                                    <td>'.get_sub_field("number_of_yellow_cards").'</td>
                                    <td>'.get_sub_field("number_of_red_cards").'</td>
                                    <td><button class=" form-control btn btn-danger meer_info_btn"  onclick="'.$javascript.'">MEER INFO</button></td></tr>';
                                    $available = 1;
    }else{
        $notavailable = 1;
        
    }
    }
    
        //echo "in here if";    
        
endwhile;
if($notavailable == 1 && $available == 0){
$html .= '<tr>
        <td colspan="8">No matching record found</td></tr>';
    }
echo json_encode(array('html'=>$html,'status' => 1));
exit;
}else{
        $html .= '<tr><td colspan="8">Week details not available</td></tr>';

    
    echo json_encode(array('html'=>$html,'status' => 0));
exit;
}


}

add_action('wp_ajax_nopriv_clubregister', 'clubregister');
add_action('wp_ajax_clubregister', 'clubregister');

function clubregister(){
    // echo '<pre>';print_r($_POST);exit;

    $user_name = $_POST['clubname'];
    $user_email = $_POST['clubemail'];
    $user_id = username_exists( $_POST['clubname'] );
if ( !$user_id && email_exists($_POST['clubemail']) == false ) {
	$random_password = wp_generate_password( $length=12, $include_standard_special_chars=false );
    $new_user_id = wp_insert_user(array(
        'user_login' => $user_name,
        'user_pass' => $random_password,
        'user_email' => $user_email,
        
        'user_registered' => date('Y-m-d H:i:s'),
        'role' => 'club'
            )
    );

    update_user_meta($user_id,'no_of_teams',$_POST['no_of_teams']);
        update_user_meta($user_id,'street',$_POST['street']);
        update_user_meta($user_id,'house_number',$_POST['house_no']);
        update_user_meta($user_id,'postcode',$_POST['postcode']);
        update_user_meta($user_id,'place',$_POST['place']);
        update_user_meta($user_id,'function_filler_form',$_POST['function_filler']);
        update_user_meta($user_id,'name_filler_form',$_POST['name_filler']);
        update_user_meta($user_id,'how_did_you_find_us',$_POST['how_did_you_find_us']);
        // echo '<pre>';print_r($random_password);exit;
} else {
    $random_password = __('User already exists.  Password inherited.');
    echo json_encode(array("status" => 0,"message"=>"Please try again..."));
    exit;
}

echo json_encode(array("status" => 1,"message"=>"Club registerd successfully."));
exit;
}

add_action('wp_ajax_nopriv_playerregister', 'playerregister');
add_action('wp_ajax_playerregister', 'playerregister');

function playerregister(){
    // echo '<pre>';print_r($_POST);exit;

    $user_name = $_POST['first_name']." ".$_POST['last_name'];
    $user_email = $_POST['email'];
    $user_id = username_exists( $user_name );
if ( !$user_id && email_exists($_POST['email']) == false ) {
	$random_password = wp_generate_password( $length=12, $include_standard_special_chars=false );
    // $user_id = wp_create_user( $user_name, $random_password, $user_email );
    $new_user_id = wp_insert_user(array(
        'user_login' => $user_name,
        'user_pass' => $random_password,
        'user_email' => $user_email,
        
        'user_registered' => date('Y-m-d H:i:s'),
        'role' => 'player'
            )
    );
        update_user_meta($user_id,'street',$_POST['street']);
        update_user_meta($user_id,'house_number',$_POST['house_no']);
        update_user_meta($user_id,'postcode',$_POST['postcode']);
        update_user_meta($user_id,'place',$_POST['place']);
        update_user_meta($user_id,'age',$_POST['age']);
        update_user_meta($user_id,'parents_name',$_POST['parents_name']);
        update_user_meta($user_id,'length',$_POST['length']);
        update_user_meta($user_id,'mass',$_POST['mass']);
        update_user_meta($user_id,'club_name',$_POST['club_name']);
        update_user_meta($user_id,'position',$_POST['position']);
        update_user_meta($user_id,'rankings',$_POST['rankings']);
        update_user_meta($user_id,'play_foot',$_POST['play_foot']);
        update_user_meta($user_id,'overview',$_POST['overview']);
        update_user_meta($user_id,'why_do_you_want_to_become_a_member',$_POST['why_member']);
        $maildata = array("username"=>$user_name,"pwd"=>$random_password);
        // echo '<pre>';print_r($maildata);exit;
        // sendEmailByTemplate('info@juniorscouting.com',$user_email,'player_register',$maildata);
} else {
    $random_password = __('User already exists.  Password inherited.');
    echo json_encode(array("status" => 0,"message"=>"Please try again..."));
    exit;
}

echo json_encode(array("status" => 1,"message"=>"Player registerd successfully."));
exit;
}



function sendEmailByTemplate($from, $to, $subject, $template = false, $data, $attachments = '') {
    echo "here 1";exit;
    if ($template) {
        echo "in";
        $templateContent = file_get_contents(get_template_directory_uri() . '/email_templates/' . $template . '.html');
        foreach ($data as $key => $value) {
            $templateContent = str_replace("%$key%", $value, $templateContent);
        }
        $from = "info@juniorscouting.com";


        $headers1[] = 'Content-Type: text/html; charset=UTF-8';
        $headers1[] = 'From: Zara Tower <info@juniorscouting.com>';
        $headers1[] = "Return-Path: <info@juniorscouting.com>";
        echo "in amil";exit;
        $headers = implode("\r\n", $headers1) . "," . "-f" . strip_tags($from);
        if (false == wp_mail($to, strip_tags($subject), $templateContent, $headers, $attachments)) {
            return false;
        } else {
            return true;
        }
    }
    return false;
}


// used for tracking error messages
function js_errors() {
    static $wp_error; // Will hold global variable safely
    return isset($wp_error) ? $wp_error : ($wp_error = new WP_Error(null, null, null));
}

add_action('wp_ajax_nopriv_userlogin', 'login_user');
add_action('wp_ajax_userlogin', 'login_user');

// login a member in after submitting a form
function login_user() {
    if (isset($_POST['email'])) {
        // this returns the user ID and other info from the user name
        $emailId = trim($_POST['email']);
        if (!filter_var($emailId, FILTER_VALIDATE_EMAIL)) {
            // if the email is invalid
            js_errors()->add('empty_username', __('Please enter valid email id'));
        } else if (!isset($_POST['pwd']) || $_POST['pwd'] == '') {
            // if no password was entered
            js_errors()->add('empty_password', __('Please enter a password'));
        } else {
            $user = get_user_by('email', $emailId);
            if (!wp_check_password($_POST['pwd'], $user->user_pass, $user->ID)) {
                // if the password is incorrect for the specified user
                //zt_errors()->add('empty_username', __('Invalid email or password'));
                js_errors()->add('empty_username', __("Something's not right. Check your username and password"));
            } else if ($user) {
                
            } else {
                js_errors()->add('empty_username', __('Invalid email and password'));
            }
        }

        // check the user's login with their password
        // retrieve all error messages
        $errors = js_errors()->get_error_messages();

        // only log the user in if there are no errors
        if (empty($errors)) {

            wp_setcookie($user->user_login, $_POST['pwd'], true);
            wp_set_current_user($user->ID, $user->user_login);
            do_action('wp_login', $user->user_login);
            $redirectUrl = (isset($_REQUEST['redirect_action'])) ? $_REQUEST['redirect_action'] : site_url('/');
            $user_meta=get_userdata($user->ID);

$user_roles=$user_meta->roles;
            if (in_array('player', $user->roles)) {
                $msgs['success'] = '1';
                $msgs['message'] = admin_url();
                // echo "<pre>";print_r($user_roles);exit;
                if($user_roles[0] == 'player'){
                    $redirectUrl = esc_url(get_permalink(get_page_by_path('Player Profile Page')));
                    
                }
                $msgs['message'] = $redirectUrl;
                echo json_encode($msgs);
                exit;
            }else if(in_array('club', $user->roles)){
                
                if($user_roles[0] == 'club'){
                    $redirectUrl = esc_url(get_permalink(get_page_by_path('Club Profile Page')));
                }
                // echo '<pre>';print_r($redirectUrl);exit;
                $msgs['success'] = '1';
                $msgs['message'] = $redirectUrl;
                echo json_encode($msgs);
                exit;
            } 
            
            else {
                //wp_redirect(site_url($redirectUrl), 301);
                $msgs['success'] = '1';
                $msgs['message'] = $redirectUrl;
                echo json_encode($msgs);
                exit;
            }
        }
        //  exit;
        $message = js_show_error_messages_ajax();
        echo json_encode($message);
        exit;
    }
}


// displays error messages from form submissions ajax
function js_show_error_messages_ajax() {
    $msgs = array();
    if ($codes = js_errors()->get_error_codes()) {
        // Loop error codes and display errors
        $msgs['error'] = '1';
        foreach ($codes as $code) {
            $msgs['message'][] = js_errors()->get_error_message($code);
        }
    }
    return $msgs;
}

function get_page_url($template_name)
{
	$pages = get_posts([
        'post_type' => 'page',
        'post_status' => 'publish',
        'meta_query' => [
            [
                'key' => '_wp_page_template',
                'value' => $template_name.'.php',
                'compare' => '='
            ]
        ]
    ]);
    if(!empty($pages))
    {
      foreach($pages as $pages__value)
      {
          return get_permalink($pages__value->ID);
      }
    }
    return get_bloginfo('url');
}

add_action('wp_ajax_nopriv_searchplayer', 'searchplayer');
add_action('wp_ajax_searchplayer', 'searchplayer');

function searchplayer(){
    global $wpdb;
    
    $namearray = array();
    $args = array('role' => 'player');

    $args1 = array (
    'role'       => 'Player',
    'order'      => 'ASC',
    'orderby'    => 'display_name',
    'search'     => '*' . esc_attr( $_POST['playername'] ) . '*',
    'meta_query' => array(
        'relation' => 'OR',
        array(
            'key'     => 'age',
            'value'   => array($ageArray[0],$ageArray[1]),
            'compare' => 'BETWEEN'
        ),
        array(
            'key'     => 'agenda',
            'value'   => array($_POST['agenda']),
            'compare' => 'IN'
        ),
    )
);

    
    if(isset($_POST['playername']) && $_POST['playername'] != ''){
        $args['search'] = '*' . esc_attr( $_POST['playername'] ) . '*';
        $args['search_columns'] = 'user_login';
                
    }
    if(isset($_POST['agenda']) && $_POST['agenda'] != ''){
        $agenda = 1;
        $metaarray = array('key'     => 'agenda',
        'value'   => array($_POST['agenda']),
         'compare' => 'IN');
    }
    if(isset($_POST['age']) && $_POST['age'] != ''){
        $age = 1;
        $ageArray = explode("-",$_POST['age']);
        
        $metaarrayage = array('key'     => 'age',
        'value'   => array($ageArray[0],$ageArray[1]),
         'compare' => 'BETWEEN');

        //  echo '<pre>';print_r($metaarrayage);exit;
    }
    if(isset($_POST['star']) && $_POST['star'] != ''){
        
        
        $metaarraystar = array('key'     => 'rankings',
        'value'   => $_POST['star'],
         'compare' => '=');
        
    }
    if(isset($_POST['position']) && $_POST['position'] != ''){
        
        
        $metaarrayposition = array('key'=> 'position',
        'value'   => $_POST['position'],
         'compare' => '=');
        
    }
    if(isset($_POST['qualification']) && $_POST['qualification'] != ''){
        
        
        $metaarrayqualification = array('key'=> 'qualification',
        'value'   => $_POST['qualification'],
         'compare' => '=');
        
    }
    $args['meta_query'] = array($metaarray);
    if(!empty($metaarray) && empty($metaarrayage))
        $args['meta_query'] = $metaarray;
    if(!empty($metaarrayage) && empty($metaarray))
    $args['meta_query'] = $metaarrayage;
    if(!empty($metaarrayage) && !empty($metaarray))
        $args['meta_query']= array('relation'=>'OR',$metaarray,$metaarrayage);
        if(!empty($metaarraystar) && !empty($metaarraystar))
        $args['meta_query']= array('relation'=>'OR',$metaarray,$metaarraystar);
        if(!empty($metaarrayposition) && !empty($metaarrayposition))
        $args['meta_query']= array('relation'=>'OR',$metaarray,$metaarrayposition);
        if(!empty($metaarrayqualification) && !empty($metaarrayqualification))
        $args['meta_query']= array('relation'=>'OR',$metaarray,$metaarrayqualification);
    
    
$user_query = new WP_User_Query( $args );

//echo '<pre>';print_r($user_query);exit;
if ( ! empty( $user_query->get_results() ) ) {
	foreach ( $user_query->get_results() as $user ) {
		echo '<p>' . $user->display_name . '</p>';
	}
} else {
	echo 'No users found.';
}
}
?>