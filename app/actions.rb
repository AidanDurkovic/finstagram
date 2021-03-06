def humanized_time_ago(time_past_mins)
    if time_past_mins >= 1440
       "#{time_past_mins / 1440} days ago"
    elsif time_past_mins >= 60
        "#{time_past_mins / 60} hours ago"
    elsif time_past_mins > 1
        "#{time_past_mins} minutes ago"
    elsif time_past_mins = 1
        "one minute ago"
    else
        "just a moment ago"
    end
end

get '/' do 
    @finstagram_post_shark = {
        username: "sharky_j",
        avatar_url: "http://naserca.com/images/sharky_j.jpg",
        photo_url: "http://naserca.com/images/shark.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "sharky_j",
            text: "Lookin good!",
        }]
    }

    @finstagram_post_whale = {
        username: "kirk_whalum",
        avatar_url: "http://naserca.com/images/kirk_whalum.jpg",
        photo_url: "http://naserca.com/images/whale.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "kirk_whalum",
            text: "#weekendvibes"
        }]
    }

    @finstagram_post_marlin = {
        username: "marlin_peppa",
        avatar_url: "http://naserca.com/images/marlin_peppa.jpg",
        photo_url: "http://naserca.com/images/marlin.jpg",
        humanized_time_ago: humanized_time_ago(190),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "marlin_peppa",
            text: "lunchtime! ;)"
        }]
    }

    @finstagram_posts = [@finstagram_post_shark, @finstagram_post_whale, @finstagram_post_marlin]

    erb(:index)

end

