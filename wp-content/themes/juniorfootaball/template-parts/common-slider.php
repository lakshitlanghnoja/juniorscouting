<?php if(have_rows('slider_details','option')){ ?>
<div class="container-fluid carosal-test-div">
    <div class="row">
        <!-- Carousel -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
            <?php $i = 0;
            while(have_rows('slider_details','option')) : the_row(); 
            if($i == 0){
                $activeclass = 'active';
            }else{
                $activeclass = '';
            }
            ?>
                <li data-target="#carousel-example-generic" data-slide-to="<?php echo $i; ?>" class="<?php echo $activeclass; ?>"></li>
                <?php $i++; 
                endwhile;
                ?>
                
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
            <?php if(have_rows('slider_details','option')){
                $j = 0;
                while(have_rows('slider_details','option')) : the_row(); 
                $slidertext = get_sub_field('slider_text');
                $sliderimg = get_sub_field('slider_image');
                
                $class = "";
                if($j == 0){
                    $class = "active";
                }else{
                    $class = '';
                }
                ?>
                <div class="item <?php echo $class; ?>">
                    <img src="<?php echo $sliderimg['url']; ?>" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2><strong><?php echo $slidertext ;?></strong>
                            </h2>

                            <div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="#">VOOR SPELERS</a>
                                <a class="btn btn-theme btn-sm btn-min-block" href="#">VOOR CLUBS</a></div>
                        </div>
                    </div><!-- /header-text -->
                </div>
            <?php 
        $j++;    
        endwhile;
            } ?>
                
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <img src="<?php echo get_template_directory_uri(); ?>/images/slider_nav_left.png">
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <img src="<?php echo get_template_directory_uri(); ?>/images/slider_nav_right.png">
            </a>
        </div><!-- /carousel -->
    </div>
    </div>
</div>
        <?php } ?>