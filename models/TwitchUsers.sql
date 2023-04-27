select
twitchUsers.* exclude(timestamp), epoch_ms(timestamp) as timestamp
from TwitchUsersSource as twitchUsers
