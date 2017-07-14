require 'clockwork'
require 'clockwork/database_events'
require './config/initializers/app'

module Clockwork
  # required to enable database syncing support
  Clockwork.manager = DatabaseEvents::Manager.new

  sync_database_events model: ::Event, every: 1.minute do |model|
    event = EventBus::Event.new(model.name, model.body)

    EventBus::Emitter.trigger(event)
  end
end
