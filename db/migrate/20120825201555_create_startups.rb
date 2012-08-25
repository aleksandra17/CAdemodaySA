class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :industry
      t.string :website
      t.string :numemp
      t.string :yearfounded
      t.string :city
      t.string :state
      t.integer :mininvest
      t.integer :amtraised
      t.integer :targetamt

      t.timestamps
    end
  end
end
