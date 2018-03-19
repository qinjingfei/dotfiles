#!/usr/bin/env python3
import subprocess
import time
import sys
text = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCqdDtUOsGBiUIV/2fQQ5DezOIc7CYWCdkqjmQ3LrZZBW25fZad3EhugAKNaUk1wtK+mWr+98VutUMIkii0UbedT1cbTFdRnWCTHdABxcBMMR0UvaaXR66/F//Ris1/zH2o6Hj79LEHRtT2lmUrL8QJMJfs/iPeSGgBhQtdsiq2txomtlY9Uhe7OVmL18ij4HscwHGHQu2nfuip6+HZ5m7/0AwTbn0On44W0NV5/bX0LHrP4xaVTJOuA/6BdZ7MKtIh2piJcdQbkkjKIhmJo7bDEEgRuRe1UsT5pNVVZpAFXWewZ6zPyroIVbbDK/SaTrz7G3JqiRHMVDrFpgXsldHVoP8PSway7oPaVzO9IM7cP4hLlPzi1h2NjjfpSPCgKz4lQKrQVGDHqIfZIdIPrqgEn+8xNaapQg8CMLryA/0YmgDr2FVWwgI2Ly1yB1ov9PlBhCf2bGGpp7y+C0BIQe8vmVktOpFUobYaYfAAsoeHbOx1J+4gj1+DZDbBntqMyN3TtYnuYApMeroKV3T8hVyfpRbR6/MvGQSohh/ltx4Ifk4yvETJPzMnJrrAYtFsV9ksLGSX2d6McPqEgnzFEFXG+prLO+MynyPDAf6gjKOXS9I9BUb5ghnPwbLL2n09HertiG6cRpsgKyRz6a8CEF2kikvOb0cezCOHjxiuuXvWgQ== qinjingfei1@gmail.com"

# 3 seconds to alt-tab to correct window after running
time.sleep(3)

for ch in text:
    # type out the text
    subprocess.call(["xdotool", "type", ch])
    # increase or decrease the time below to type slower or faster
    time.sleep(0.15)
