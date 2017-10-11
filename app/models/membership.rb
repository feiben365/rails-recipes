class Membership < ApplicationRecord

  def change
    create_table :membership do |t|
      t.integer :user_id, :index => true
      t.integer :group_id, :index => true
      t.timestamps
    end
  end

  has_many :memberships
  has_many :users, :through => :memberships

end
