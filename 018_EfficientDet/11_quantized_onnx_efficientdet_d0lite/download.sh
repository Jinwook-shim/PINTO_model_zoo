#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1lF7vs43_DJAO1lGLn4LOAZkWbgjKJYax" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1lF7vs43_DJAO1lGLn4LOAZkWbgjKJYax" -o lite-model_efficientdet_lite0_detection_default_1_opt.onnx

echo Download finished.
