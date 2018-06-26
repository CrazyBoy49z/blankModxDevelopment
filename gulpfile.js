var     gulp          = require('gulp'),
		watch         = require('gulp-watch'),
		sass          = require('gulp-sass'),
		gcmq          = require('gulp-group-css-media-queries'),
		concat        = require('gulp-concat'),
		cleancss      = require('gulp-clean-css'),
		rename        = require('gulp-rename'),
		autoprefixer  = require('gulp-autoprefixer'),
		notify        = require("gulp-notify");

var path = {
    build: {
		css: 'assets/template/css'
    },
	src: {
		style: 'assets/template/sass/main.scss'
	},
	watch: {
		style: 'assets/template/sass/**/*.scss'
	}
};

gulp.task('css', function () {
    gulp.src(path.src.style)
        .pipe(sass({ outputStyle: 'expand' }).on("error", notify.onError()))
        // .pipe(rename({ suffix: '.min', prefix : '' }))
		.pipe(autoprefixer())
		.pipe(gcmq())
        // .pipe(cleancss( {level: { 1: { specialComments: 0 } } }))
        .pipe(gulp.dest(path.build.css)) //И в build
});

gulp.task('default', ['css'], function () {
    gulp.watch(path.watch.style, ['css']);
});