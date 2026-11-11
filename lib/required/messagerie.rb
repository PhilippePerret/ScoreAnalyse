=begin

Tous les messages

=end

LANG = 'fr'

LOCALES_FOLDER = File.expand_path(File.join(__dir__,'..','locales',LANG))
ERRORS.merge!(YAML.safe_load(File.read(File.join(LOCALES_FOLDER,'errors.yaml')), aliases:true, symbolize_names:true, permitted_classes:[Symbol]))
MESSAGES.merge!(YAML.safe_load(File.read(File.join(LOCALES_FOLDER,'messages.yaml')), aliases:true, symbolize_names:true, permitted_classes:[Symbol]))
