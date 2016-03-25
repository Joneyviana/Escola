class PersonSerializer < ActiveModel::Serializer
  include Refile::AttachmentHelper
  attributes :name , :image_url

   def image_url
       attachment_url(object, :image, :fill, 400, 400, format: "jpg")
   end
end
