#!/bin/bash

rm -rf ~/.config/JetBrains/PyCharm*/eval
rm -rf ~/.java/.userPrefs/jetbrains/pycharm
sed -i '/evlsprt/d' ~/.config/JetBrains/PyCharm*/options/other.xml
