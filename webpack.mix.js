const {
    resolve,
    join
} = require('path');
const fs = require('fs');
const mix = require('webpack-mix');

mix.setPublicPath('./public/dist')
    .js('client/scripts/js/app.js', 'js')
    .sass('client/styles/sass/app.scss', 'css')
    .js('client/scripts/js/main.js', 'js')
    .sass('client/styles/sass/main.scss', 'css')
    .js('client/scripts/js/scripts.js', 'js')
    .sass('client/styles/sass/styles.scss', 'css')
    .js('client/scripts/js/vendor.js', 'js')
    .sass('client/styles/sass/vendor.scss', 'css');

let lib = resolve(__dirname, './themes/');

fs.readdirSync(lib).forEach(function(mod) {
    var modPath = join(lib, mod);

    var appJs = join(modPath, 'assets', 'js', 'scripts.js');
    var mixJs = join('js', mod.toLowerCase() + '.js');

    if (fs.existsSync(appJs)) mix.js(appJs, mixJs);

    var appScss = join(modPath, 'assets', 'sass', 'styles.scss');
    var mixCss = join('css', mod.toLowerCase() + '.css');

    if (fs.existsSync(appScss)) mix.sass(appScss, mixCss);
});
