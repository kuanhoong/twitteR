library(twitteR)
library(ROAuth)
#consumer_key <- '9vvwdmZHLfv3g5dh6GV79miZK'
#consumer_secret <- 'Z106DRB05ungt6OTy2Vxskk6VxKhXYaazmBmbHu5GyAMCAJKOv'
#access_token <- '2790531-4jGsPZzUFOJ8rwDURALu4MSGsu9IZpy0zWtvdfYIbc'
#access_secret <- 'FE7mNVQOd8ktXBEqinwEwixkALBJAMvoXyar9UnVWymf3'
setup_twitter_oauth(consumer_key='9vvwdmZHLfv3g5dh6GV79miZK',consumer_secret='Z106DRB05ungt6OTy2Vxskk6VxKhXYaazmBmbHu5GyAMCAJKOv',access_token='2790531-4jGsPZzUFOJ8rwDURALu4MSGsu9IZpy0zWtvdfYIbc',access_secret='FE7mNVQOd8ktXBEqinwEwixkALBJAMvoXyar9UnVWymf3')
user <- getUser('kuanhoong')
user$toDataFrame()
friends <- user$getFriends() # who this user follows
followers <- user$getFollowers() # this user's followers
followers2 <- followers[[1]]$getFollowers() # a follower's followers