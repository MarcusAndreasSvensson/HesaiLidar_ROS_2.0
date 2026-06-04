# Lidar-vs-host clock sync health, computed per UDP packet in the ROS2 wrapper.
# lidar_time = sensor master timestamp (PPS+NMEA disciplined when use_timestamp_type=0).
# host_time  = host CLOCK_REALTIME at packet receive (chrony/PPS disciplined).
# residual   = lidar_time - host_time. Stable & small => both locked to the same master.
std_msgs/Header header
float64 lidar_time_sec
float64 host_time_sec
float64 residual_sec
float64 ema_residual_sec
float64 min_residual_sec
float64 max_residual_sec
uint64 packet_count
