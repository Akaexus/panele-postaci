for theme in $(ls src/themes);
do
	cat src/themes/$theme/_theme.scss > src/_theme.scss && \
	sass -s expanded --no-source-map src/slackify.scss:dist/$theme.css && \
	echo [OK] $theme;
done
