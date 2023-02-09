<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'inception' );

/** Database username */
define( 'DB_USER', 'inception_user' );

/** Database password */
define( 'DB_PASSWORD', 'inception_pass' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '+<h+cFyQ+EEY.-HisMSJwLmwcZ>*!O(zWR]jH,,E{CW_Znb+bHSfiK!|=:B]FAXA' );
define( 'SECURE_AUTH_KEY',   'b2r6a+iKI>AnVSXG)fWFC+=#>!.(nkKy@9cFP 3LWhmBf)a<<YWF;-p$R=Ysn0*r' );
define( 'LOGGED_IN_KEY',     'TPLUHIE?~/ri^n/<W3db5hJh|P(A}u<bYzDr|zdy:1Y6Huw+6k_x6YYB|^r~`U[F' );
define( 'NONCE_KEY',         'Os<tR9rXiq%Za9LeS(X>aotM!Ne(k:[U:HQs6aK;x)2S/Sitb3~/89}+>(fkOb>4' );
define( 'AUTH_SALT',         'S#-_=qutnq0wV7LG%`snLu?iIJS_6@AHz*iZO yz2t*S~]x>}-ua+4wMp,?<hyNk' );
define( 'SECURE_AUTH_SALT',  'im)?+dW;K,/r8>wmM@6hHp7K8N~/SEY+Wkdcy9XhAskKD~+@0Q7-s!mioq|&*W/!' );
define( 'LOGGED_IN_SALT',    '*aRP;H92AB[zYaU7l7|g;#`Ms@_a}1NGbr HS=!9u$ Lvv}0!{kw2s&3IijKU0v^' );
define( 'NONCE_SALT',        'g(%h*Bj[|e%L/!m[NE)N~[<`9%z?hvxI{<w.s|_{A:G;)s~t~J+Fii74mV$z]2-O' );
define( 'WP_CACHE_KEY_SALT', '!pl`.Yc>;S7lsbiq^2-=[}):2Mt1ymyoT/hXk>bCH=,i(+Q*m7LN-}V;w?FDe7GZ' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
