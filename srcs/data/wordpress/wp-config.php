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
define( 'DB_NAME', 'InceptionDb' );

/** Database username */
define( 'DB_USER', 'DbUser' );

/** Database password */
define( 'DB_PASSWORD', 'DbUserPass' );

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
define( 'AUTH_KEY',          'YS_Ny~C$<jY-U|/H0Hmf}|8-Rp/]>HBX@V9B9sl!&86(R*iTK4NQEoR##7x=~4[?' );
define( 'SECURE_AUTH_KEY',   '=}>&Zl%--wH[4lh;38A&fFU?K+G-4%L>rkhyb0zRP!EaG[}Viz87vqPe&Yi3Yfk.' );
define( 'LOGGED_IN_KEY',     'C0d`p2K_o^&Y;lf,,<$sf|Nh0.mQD>{4pgm>zlcoM6(8bhkZ3L|u;(d=@w@iydB(' );
define( 'NONCE_KEY',         '&%Pf8@S<D]6(@2(&o?]=wB^.,5O^GR3t8qrT8ZKN5?if y,Ol(P,%J3G0q[(^%lG' );
define( 'AUTH_SALT',         'HQ4p1-hf+)>%k=tKD`Fj`PR5BzDO5/}vHT*{g ow#lY|Xj31AA~ugSuZ2AEP?BDx' );
define( 'SECURE_AUTH_SALT',  ']}@^9KadO75X<S[).e_,{6Z-FC(L_Rw2PuP&&AizmL5N.i$n:9lzqIT{x,Eyy=P!' );
define( 'LOGGED_IN_SALT',    'V%+v|O&P5.N>IKKU2/4@(*w+tf~`k}/=zNe~z(myuAb&^q.88<=MQS4_:;TlYKS6' );
define( 'NONCE_SALT',        'R, 6Ykq*~CQwW~9Lf4h?=9M-r,W.NqbIpz8s$=35t`%Ko*jX1dQKhF-N|cpJ`]Mc' );
define( 'WP_CACHE_KEY_SALT', '|)X_ #B8zCF/33_s<9n{Z[D#t^Z(<43y5>;+NZQ6e.BgyfYJC]{=cN`F1N6BK}h.' );


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
