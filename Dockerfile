FROM python:3
WORKDIR /project/github/robot_framework
RUN python3 -m pip install robotframework
CMD [ "robot", "main.robot" ]
