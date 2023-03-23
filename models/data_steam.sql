select 
coalesce(tUsers.timestamp, users.timestamp) as timestamp,
coalesce(users.player_count, 0) as player_count,
coalesce(tUsers.twitch_viewers, 0) as twitch_viewers,
coalesce(tUsers.app_id, users.app_id) as app_id,
coalesce(tUsers.app_name, users.app_name) as app_name
from (select * from TwitchUsers) tUsers full outer join (select * from Users) users 
on tUsers.app_id = users.app_id and (tUsers.timestamp = users.timestamp or tUsers.timestamp is null or users.timestamp is null)