select
twitchUsers.* exclude(timestamp), epoch_ms(timestamp) as timestamp
from "gs://test_harsh_rill/data-steam/*_users_max.csv" as twitchUsers