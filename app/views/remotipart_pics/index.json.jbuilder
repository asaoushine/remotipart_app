json.array!(@remotipart_pics) do |remotipart_pic|
  json.extract! remotipart_pic, :id, :title, :description, :topimage
  json.url remotipart_pic_url(remotipart_pic, format: :json)
end
