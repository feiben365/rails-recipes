class Profile < ApplicationRecord

  belongs_to :user
  
  def change
    create_table :profiles do |t|
      t.integer :user_id, :index => true
      t.string :legal_name
      t.date :birthday
      t.string :location
      t.string :education
      t.string :occupation
      t.text :bio
      t.text :specialty
      t.timestamps
    end
  end
end
