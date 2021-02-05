<?php

/* Environment */
define( 'WP_ENVIRONMENT_TYPES', 'production' );

/* Database connection */
define( 'DB_NAME', 'celomary_db' );
define( 'DB_USER', 'celomary99' );
define( 'DB_PASSWORD', 'celomary' );
define( 'DB_HOST', '10.99.99.99' );
define( 'DB_CHARSET', 'utf8mb4' );
define( 'DB_COLLATE', 'utf8mb4_general_ci' );

/* Tables */
$table_prefix = 'wpc6nrf3_';

/* Security */
/* Security Keys */
define( 'AUTH_KEY', 'LnHMg0@P}?-?v~(v~Ol/=W2naJ&H%0tA<?aq-e.d?((T7i>ZK_b[LZ*V~hV<67Gk' );
define( 'SECURE_AUTH_KEY', '0E!O/7v0i/qyLB;6?|MEESB?Ceb2QUD84j~/(PS+HQn:;MD8U}9VRQHe*;2p[M^(' );
define( 'LOGGED_IN_KEY', '?1{ib%qH&[@TWgj4:QzGC5Q3TV]/4OeTGPt4Q.f5UjaK:D5-z1_P]}jdguv_3Xb3' );
define( 'NONCE_KEY', 'f(w|DEuIJ@JMn#zx(ta8<n}dUFJhGE<yhhKv{k!*A%(XF]/L1:gw,~hX)mRapdw|' );
define( 'AUTH_SALT', 'm(w/BsM{w@sXzm8RC!+ExSj}eZCwANnQUMw|[!z>[>rX?Q;,aXx?PBWvKkO;qDJ}' );
define( 'SECURE_AUTH_SALT', 'p2qMpB0S3j8_U;U]-m5n&nIdO3/gz/hlyGmEH7tm8&Kh~pcK]Ma6~gFVeZl:dqA}' );
define( 'LOGGED_IN_SALT', '}}AG6cWq.cbnv7{5hInGi2A4DbjD.W{d?pVRTRDkdI{8ZrH<Ch<ms);P_GsnyW?v' );
define( 'NONCE_SALT', '>)34X[9ifWpu0;~G^Lksv=hDTK<XYhx^,2qVMRW7]9-BV.lzgu?,x?gI7yC*%[y{' );
/* HTTPS */
define( 'WP_DISABLE_FATAL_ERROR_HANDLER', false );
define( 'WP_DISABLE_ADMIN_EMAIL_VERIFY_SCREEN', false );

/* URL / Path */

/* Cookies */
define( 'TEST_COOKIE', 'wordpress_test_cookie' );
define( 'COOKIEHASH', 'csIkygekQM0zlFhBG0WLEzqOVsq1EtMV60GONgmWEIlcOQVzCFCF82m0jbaZCkZf' );
define( 'LOGGED_IN_COOKIE', 'wordpress_logged_in_csIkygekQM0zlFhBG0WLEzqOVsq1EtMV60GONgmWEIlcOQVzCFCF82m0jbaZCkZf' );
define( 'SECURE_AUTH_COOKIE', 'wordpress_logged_in_csIkygekQM0zlFhBG0WLEzqOVsq1EtMV60GONgmWEIlcOQVzCFCF82m0jbaZCkZf' );
define( 'AUTH_COOKIE', 'wordpress_csIkygekQM0zlFhBG0WLEzqOVsq1EtMV60GONgmWEIlcOQVzCFCF82m0jbaZCkZf' );
define( 'PASS_COOKIE', 'wordpresspass_csIkygekQM0zlFhBG0WLEzqOVsq1EtMV60GONgmWEIlcOQVzCFCF82m0jbaZCkZf' );
define( 'USER_COOKIE', 'wordpressuser_csIkygekQM0zlFhBG0WLEzqOVsq1EtMV60GONgmWEIlcOQVzCFCF82m0jbaZCkZf' );
define( 'RECOVERY_MODE_COOKIE', 'wordpress_rec_csIkygekQM0zlFhBG0WLEzqOVsq1EtMV60GONgmWEIlcOQVzCFCF82m0jbaZCkZf' );

/* Content */
define( 'AUTOSAVE_INTERVAL', 30 );
define( 'WP_POST_REVISIONS', 5 );
define( 'MEDIA_TRASH', true );
define( 'EMPTY_TRASH_DAYS', 7 );
define( 'WP_MAIL_INTERVAL', 86400 );

/* Memory */
define( 'WP_MEMORY_LIMIT', '128M' );
define( 'WP_MAX_MEMORY_LIMIT', '256M' );

/* Updating */
define( 'AUTOMATIC_UPDATER_DISABLED', false );
define( 'WP_AUTO_UPDATE_CORE', 'minor' );
define( 'CORE_UPGRADE_SKIP_NEW_BUNDLED', true );

/* File edition */
define( 'DISALLOW_FILE_MODS', false );
define( 'DISALLOW_FILE_EDIT', true );
define( 'IMAGE_EDIT_OVERWRITE', true );

/* Performance */
define( 'WP_CACHE', true );
define( 'WP_CACHE_KEY_SALT', '4fpjdrtck3w312da6n:' );
define( 'COMPRESS_CSS', true );
define( 'COMPRESS_SCRIPTS', true );
define( 'CONCATENATE_SCRIPTS', false );
define( 'ENFORCE_GZIP', true );

/* Cron */
define( 'DISABLE_WP_CRON', false );
define( 'ALTERNATE_WP_CRON', false );
define( 'WP_CRON_LOCK_TIMEOUT', 60 );

/* FTP Access */

/* Plugins Must-Use */

/* Filtering */
define( 'DISALLOW_UNFILTERED_HTML', false );
define( 'ALLOW_UNFILTERED_UPLOADS', false );

/* Feed reader */
define( 'MAGPIE_CACHE_ON', true );
define( 'MAGPIE_CACHE_DIR', 'cache' );
define( 'MAGPIE_CACHE_AGE', 3600 );
define( 'MAGPIE_CACHE_FRESH_ONLY', false );
define( 'MAGPIE_DEBUG', false );
define( 'MAGPIE_USER_AGENT', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0' );
define( 'MAGPIE_FETCH_TIME_OUT', 5 );
define( 'MAGPIE_USE_GZIP', true );

/* MultiSite */
define( 'WP_ALLOW_MULTISITE', false );
define( 'WP_DEFAULT_THEME', 'twentytwenty' );

/* External URL Requests */
define( 'WP_HTTP_BLOCK_EXTERNAL', false );
if ( WP_HTTP_BLOCK_EXTERNAL ) {
        define( 'WP_ACCESSIBLE_HOSTS', '*.wordpress.org,*.github.com' );
}

/* File permissions */

/* Proxy */

/* Debug */
define( 'WP_DEBUG', false );
if ( WP_DEBUG ) {
        define( 'WP_DEBUG_DISPLAY', false );
        define( 'WP_DEBUG_LOG', false );
}
define( 'SCRIPT_DEBUG', false );
define( 'SAVEQUERIES', false );

/* Do not change anything else after this line! Thank you! */

if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );
require_once ABSPATH . 'wp-settings.php';