# Preprocessing script for CRISP DM Cycle 2 -- Video Stats Data.

# Appending different .csv files into single Dataframe.
video_stats <- rbind(cyber.security.3_video.stats, cyber.security.4_video.stats,
                      cyber.security.5_video.stats, cyber.security.6_video.stats,
                      cyber.security.7_video.stats)

# Removing Unwanted Columns
video_stats_main = subset(video_stats, select = c(step_position, title, video_duration, total_views, console_device_percentage,
                                            desktop_device_percentage, mobile_device_percentage, tv_device_percentage,
                                            tablet_device_percentage, unknown_device_percentage))

# Grouping data based on a column and Summarising other columns
video_stats_main <- video_stats_main %>%
    group_by(step_position, title, video_duration) %>%
    summarise(total_views = sum(total_views),
              console_device_percentage = mean(console_device_percentage),
              desktop_device_percentage = mean(desktop_device_percentage),
              mobile_device_percentage = mean(mobile_device_percentage),
              tv_device_percentage = mean(tv_device_percentage),
              tablet_device_percentage = mean(tablet_device_percentage),
              unknown_device_percentage = mean(unknown_device_percentage))

# Changing data type to Character
video_stats_main$step_position <- as.character(video_stats_main$step_position)
