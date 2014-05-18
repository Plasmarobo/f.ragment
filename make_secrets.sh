function forge_secret {
	SECRET=$(rake secret)
	echo $SECRET
	FILE="$FILE $1: $SECRET\n"
}
function prompt_secret {
	echo -e "$2"
	read INPUT
	FILE="$FILE $1: $INPUT\n"
}
FILE="#Application Settings\n"
forge_secret "SECRET_KEY_BASE"
forge_secret "SECRET_TOKEN"
forge_secret "DEVISE_SECRET_KEY"
prompt_secret "ADMIN_EMAIL" "Admin Email:"
prompt_secret "ADMIN_PASS" "Admin Password:"
mkdir -p "config"
touch "config/application.yml"
echo -e $FILE > "config/application.yml"
