class Experience < ActiveRecord::Base
  has_attached_file :image, 
                    styles: {}
                     
  validates_attachment :image, 
                       content_type: { content_type: /\Aimage\/.*\Z/, message: "圖片格式錯誤" }, 
                       size: { less_than: 10.megabytes, message: "圖片大小超過10MB" }      
end
