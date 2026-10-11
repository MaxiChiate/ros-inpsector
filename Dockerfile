FROM osrf/ros:jazzy-desktop-full

RUN apt-get update && apt-get install -y \
    ros-jazzy-ros-gz \
    ros-jazzy-turtlebot3-gazebo \
    ros-jazzy-turtlebot3-teleop \
    ros-jazzy-cv-bridge \
    python3-opencv \
    && rm -rf /var/lib/apt/lists/*

# waffle trae cámara; burger solo lidar
ENV TURTLEBOT3_MODEL=waffle
RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc

WORKDIR /ws
