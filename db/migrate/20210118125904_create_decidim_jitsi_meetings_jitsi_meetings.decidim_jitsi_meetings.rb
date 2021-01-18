# This migration comes from decidim_jitsi_meetings (originally 20200406135458)
class CreateDecidimJitsiMeetingsJitsiMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_jitsi_meetings_jitsi_meetings do |t|
      t.jsonb :api
      t.jsonb :domain
      t.jsonb :room_name
      t.references :decidim_component, index: { name: :index_decidim_jitsi_meetings_on_decidim_component_id }

      t.timestamps
    end
  end
end
