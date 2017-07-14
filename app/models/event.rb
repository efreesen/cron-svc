class Event < ActiveRecord::Base
  belongs_to :frequency_period

  def body
    JSON.parse(payload)
  end

  # Used by clockwork to schedule how frequently this event should be run
  # Should be the intended number of seconds between executions
  def frequency
    frequency_quantity.send(frequency_period.name.pluralize)
  end
end
