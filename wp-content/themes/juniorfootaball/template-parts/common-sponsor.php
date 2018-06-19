
<div class="sponsers_wrapper">
    <div class="container">
        <h4>SPONSORS</h4>
        <ul>
        <?php while(have_rows('sponsors_details','option')) : the_row();
        $imageArray = get_sub_field('sponsor_image','option');
        $imageId = $imageArray['id'];
            $sponsorImage = wp_get_attachment_image_src($imageId,'full');
            $alt_text=get_post_meta($imageId, '_wp_attachment_image_alt', true);
            $sponsorImageSrc= $sponsorImage[0];      
            // echo $sponsorImageSrc;exit;  
            ?>
        <li><a href="<?php echo get_sub_field('sponsor_link','option'); ?>"> <img src="<?php echo $sponsorImageSrc; ?>"></a></li> 
            <?php endwhile;
        ?>
            
        </ul>
    </div>
</div>