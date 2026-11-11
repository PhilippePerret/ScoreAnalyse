#!/bin/zsh
# Lance ScoreAnalyse sur l'analyse de ./analyses (créée à partir de
# ./systems si elle n'existe pas).

APP_FOLDER="${0:A:h}"
ANALYSES_FOLDER="$APP_FOLDER/analyses"
ANALYSE_ID="analyse"
export RBENV_VERSION=2.7.3

mkdir -p "$ANALYSES_FOLDER"
cd "$ANALYSES_FOLDER" || exit 1

if [[ ! -f "$ANALYSES_FOLDER/$ANALYSE_ID/infos.yaml" ]]; then
  images=("$APP_FOLDER"/systems/*.(jpg|jpeg|png|svg)(N))
  if (( ${#images} > 0 )); then
    mkdir -p "$ANALYSES_FOLDER/systems"
    mv "${images[@]}" "$ANALYSES_FOLDER/systems/"
  fi
  ruby -e '
    app_folder, analyse_id = ARGV.shift, ARGV.shift
    require File.join(app_folder, "lib", "required")
    require File.join(app_folder, "lib", "modules", "create_analyse")
    def Q.yes?(*); true; end
    ScoreAnalyse::Analyse.create_new_analyse({
      "folder" => Dir.pwd, "analyse_id" => analyse_id,
      "piece_title" => "", "composer" => "",
      "analyse_title" => "", "analyste" => ""
    }, true)
  ' "$APP_FOLDER" "$ANALYSE_ID" || exit 1
fi

ruby "$APP_FOLDER/score_analyse.rb" "$ANALYSE_ID"
