# assumes you have cwebp installed via `brew install webp`
# https://developers.google.com/speed/webp/download

for FILE in "$@"
do
	echo "coverting file: $FILE"
	EXT=${FILE##*.} # file extension
	QUALITY=85 # quality for the image
	# convert the image using cwebp and output a file with the extension replaced as .webp
	cwebp -q $QUALITY "$FILE" -o "${FILE/%.$EXT/.webp}" &>/dev/null
done