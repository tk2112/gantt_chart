class Product < ApplicationRecord
    validates :control_no, 
        uniqueness: { case_sensitive: false } # 一意制約：大文字小文字を区別せず。
    
end
