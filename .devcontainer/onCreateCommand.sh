#!/bin/bash

west init -l app
west update --narrow -o=--depth=1
west zephyr-export
# pip install -r deps/zephyr/scripts/requirements.txt
west completion bash > $HOME/west-completion.bash
echo 'source $HOME/west-completion.bash' >> $HOME/.bashrc
history -c