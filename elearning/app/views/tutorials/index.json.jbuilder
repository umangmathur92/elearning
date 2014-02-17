json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :tut_title, :tut_desc
  json.url tutorial_url(tutorial, format: :json)
end
