class FinstagramPost < ActiveRecord::Base

    belongs_to :user
    has_many :comments
    has_many :likes

    validates :photo_url, :user, presence: true

    def humanized_time_ago
        time_ago_in_seconds = Time.now - self.created_at
        time_ago_in_minutes = time_ago_in_seconds / 60


        if time_ago_in_minutes >=60
            "#{(time_ago_in_minutes / 60).to_i} hours ago"
        else
            "#{(time_ago_in_minutes.to_i} minutes ago"
        end
    end         

<% if current_user %>
  <% if current_user && allow_new_comment %>
  <%= erb(:"shared/new_comment", { locals: { finstagram_post: finstagram_post }}) %>
<% end %>

end


    def like_count
        self.likes.size
    end
end    
