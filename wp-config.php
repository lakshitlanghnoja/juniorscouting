<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'juniorfootaball');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'gYGgf:8~bv2T37E9oh+7:y.+TBG-CNp5d6m*1{3Ce>~-<&aCcU;4Depj{W+dw+b_');
define('SECURE_AUTH_KEY',  'ihBtOU2,7w%SB%Po_QWB0zL KGnYA11/2S4zo8v5JI!Jfk~%ZqRPwNU9EwO0n(9/');
define('LOGGED_IN_KEY',    'J@B-z4H8$ ;4yh% ?KVbE D}2w}H@j3g(FwpWI6>qSX:QNYV/ w#LYPScWSNMZ=R');
define('NONCE_KEY',        'E@GL_W*X;8?&bzHTS^i|Jin{m,}9cF}$$RrJ9gzjVC)L9iOKCB9nFc14-MeQ.KxJ');
define('AUTH_SALT',        '1uMo?fC0.(o-*tMoR@N7z^4efX:ZqV@$$J$>+vLpHHoBpN;w02WK+))}x6.@B$up');
define('SECURE_AUTH_SALT', 'vz?L/U@{#qH[iLAO;mRdTK0jU/b@rEuyd+-X^eaI5lRF~Spn:eO[~^ t5jx+ZCg*');
define('LOGGED_IN_SALT',   'm~^^^olFBreQ_7l5G]kLrMv{8u ?^gu[r${ #-rYM,OaIbSvnZ+R$~-{)FP[t1yZ');
define('NONCE_SALT',       'RdUe3L;atCH|vmU&+},8.-x5;9)lxjqn(dKO.(J`i}1~+LTcjM>a}0!,S$|(6+l3');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
