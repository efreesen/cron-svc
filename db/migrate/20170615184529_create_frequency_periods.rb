class CreateFrequencyPeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :frequency_periods do |t|
      t.string :name

      t.timestamps
    end

    %w{second minute hour day week month}.each do |period|
      FrequencyPeriod.where(name: period).first_or_create
    end
  end
end
