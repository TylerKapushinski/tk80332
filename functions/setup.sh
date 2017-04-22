#!/bin/bash
if [ ! -d /tk ]; then
  sudo ln -s /home/ec2-user/tk /tk
  sudo chmod 755 /tk
  sudo chown ec2-user /tk
fi

