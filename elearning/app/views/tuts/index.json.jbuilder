json.array!(@tuts) do |tut|
  json.extract! tut, :title, :tut_desc
  json.url tut_url(tut, format: :json)
end
