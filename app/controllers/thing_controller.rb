class ThingController < WebsocketRails::BaseController
  def person_joined
    WebsocketRails[:channel_updates].trigger 'new_person', 'a new person joined'
  end

  def broadcast_boop
    WebsocketRails[:channel_updates].trigger 'boopcast', message[:name]
  end
end