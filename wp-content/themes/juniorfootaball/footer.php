<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */

?>

		<div id="footer">

    <div class="container">
        <div class="row">
            <div class="col-md-5 col-xs-12 footer_left">
                <h6>JUNIORSCOUTING</h6>
                <p>Copyright &copy; <?php echo date('Y'); ?> Juniorscouting. All rights reserved.</p>

            </div>

            <div class="col-md-3 col-xs-12 footer_middle">
                <ul>
                    <li><a href="<?php echo get_field('facebook_link',options); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/fb_icon.png"/> </a></li>
                    <li><a href="<?php echo get_field('google_plus_link',options); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/google_icon.png"/> </a></li>
                    <li><a href="<?php echo get_field('instagram_link',options); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/instagram_icon.png"/> </a></li>
                    <li><a href="<?php echo get_field('linkedin_link',options); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/linkedin_icon.png"/> </a></li>


                </ul>

            </div>
            <div class="col-md-4 col-xs-12 footer_right">

                <ul>
                    <li><a href="">Home </a></li>
                    <span> |</span>
                    <li><a href="">Spelers </a></li>
                    <span> |</span>
                    <li><a href="">Clubs </a></li>
                    <span> |</span>
                    <li><a href="">Agenda </a></li>
                    <span> |</span>
                    <li><a href="">Webshop </a></li>
                    <span> |</span>
                    <li><a href="">Informatie </a></li>

                </ul>

            </div>
        </div>
    </div>

</div>
<div class="scrolltop scroll tooltips" data-original-title="Go to Top">
    <div class=' icon' title="Go to top"></div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<?php wp_footer(); ?>

</body>
</html>
