json.array!(@languages) do |language|
  json.extract! language, :lang_name, :lang_detail
  json.url language_url(language, format: :json)
end
