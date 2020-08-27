gulp.task("ky.s.standalone-prod.code",gulp.series(/*"sounds.fullbuildHQ",*/"sounds.dev", "translations.fullBuild", "js.standalone-prod"));
gulp.task("ky.s.standalone-prod.mainbuild", gulp.parallel("step.baseResources", "ky.s.standalone-prod.code"));
gulp.task("ky.s.standalone-prod.all",gulp.series("ky.s.standalone-prod.mainbuild", "css.prod-standalone", "html.standalone-prod"));
gulp.task("ky.b.standalone-prod",gulp.series("utils.cleanup", "ky.s.standalone-prod.all", "step.postbuild"));
gulp.task("ky.buildstandalone", gulp.series("ky.b.standalone-prod", "standalone.package.prod"));
gulp.task("ky.standalone.dev",gulp.series("utils.cleanup","imgres.atlas","sounds.dev","imgres.copyImageResources","imgres.copyNonImageResources","translations.fullBuild","js.standalone-dev",  "css.dev","html.dev","step.postbuild","standalone.package.prod"));