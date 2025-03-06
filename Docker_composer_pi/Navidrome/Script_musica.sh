#!/bin/bash

RUTA="/home/$USER/music"
for GENERO_RUTA in "$RUTA"/*; do
	if [[ -d "$GENERO_RUTA" ]]; then
		for ARTISTA_RUTA in "$GENERO_RUTA"/*;do
			if [[ -d "$ARTISTA_RUTA" ]];then
				for TITULO_RUTA in "$ARTISTA_RUTA"/*;do
					if [[ -d "$TITULO_RUTA" ]];then
						for ALBUM_RUTA in "$TITULO_RUTA"/*;do
							TITULO=$(echo "$ALBUM_RUTA" | cut -d "/" -f 7 | cut -d "." -f 1)
							ALBUM=$(echo "$ALBUM_RUTA" | cut -d "/" -f 6)
							ARTISTA=$(echo "$ALBUM_RUTA" | cut -d "/" -f 5)
							GENERO=$(echo "$ALBUM_RUTA" | cut -d "/" -f 4)
							sudo eyeD3 --title "$TITULO" --artist "$ARTISTA" --genre "$GENERO" --album "$ALBUM" "$ALBUM_RUTA"
#							echo "----------------------"
#							echo "      CON ALBUM"
#							echo "----------------------"
#							echo "titulo: $TITULO"
#							echo "artista: $ARTISTA"
#							echo "Album: $ALBUM"
#							echo "genero: $GENERO"
#							echo "Ruta: $ALBUM_RUTA"
#							echo "----------------------"
						done
					else
						TITULO=$(echo "$TITULO_RUTA" | cut -d "/" -f 6 | cut -d "." -f 1)
						ALBUM=" "
						ARTISTA=$(echo "$TITULO_RUTA" | cut -d "/" -f 5)
						GENERO=$(echo "$TITULO_RUTA" | cut -d "/" -f 4)
						sudo eyeD3 --title "$TITULO" --artist "$ARTISTA" --genre "$GENERO" --album "$ALBUM" "$TITULO_RUTA"
#						echo "----------------------"
#						echo "      SIN ALBUM"
#						echo "----------------------"
#						echo "titulo: $TITULO"
#						echo "artista: $ARTISTA"
#						echo "Album: $ALBUM"
#						echo "genero: $GENERO"
#						echo "Ruta: $TITULO_RUTA"
#						echo "----------------------"


					fi
				done
			fi
		done
	fi
done
