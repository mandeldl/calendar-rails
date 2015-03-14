class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
		# a string column called name
		t.string :name
		# a datetime column called from
		t.datetime :from
		# a datetime column called to
		t.datetime :to
		# a string column called location
		t.string :location
		# a references column to the Day model
		t.references :day
      t.timestamps
    end
  end
end
