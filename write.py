#!/usr/bin/env python3
import subprocess
import time
import sys
text = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDkA7Fw+MalzpEjiN4989jHiWnIgOzA7ImVrbrQxEGk5blp7nk1kPo56uyPL9PzQGeN8V5l+J5NQ1m5bqkf1JgWOs21IEq3VXbcJhekatD8+Of1w4fLSQHf456OYA0IrQkd88vjeOFn7neUvDDb0ki1AZcUu06i8UC8gaVQzCgnklxCyJFucJJECr6IOjGGM71ZrSGzc0vhPbyz0xsX0HiA90lJUa32oSPtUTzzniMrqfRx2bOdHrTTVhG7YnRhK8CeBvqUghOqx/hZXQP/xXmzKQeQAPjc4RYCr5y3kZ3CKtb8YuxYIZtvCrKoe7B+nG+zb7ZrsBcH+7A+i1hC1jzM3+s7LXpMqFx3C6EkXkAM4g3G9mK9KbKpdom/X7/ZGDv5mkLNcpBQXxk636AyxRT4qqYoYlk6iw+OrS8UCuOd3NDzptrLx8Z/7IUHAj3AkPVj//v3hMCy7RvD28jaoW7flhHwxiUlyNn0QeJiCSwTs/52AzJDwBXES2/JqeRV17u7kHkisWe4ylPL/x6VI6DZBQPCbFQA5CPyv8g4mFlB0YDjOrhZR1l3omm2YDwkgoE2DfodJjC4VKsk72UranEHRmtO/KWFv6KdWq0MDK49+q2zpNzEldY53RKgwGK/P8bXBL10ZwDkSU2zj5EKypaRgvxze/cUxckjMo7nu6xv3Q== qinjingfei1@gmail.com"

# 3 seconds to alt-tab to correct window after running
time.sleep(3)

for ch in text:
    # type out the text
    subprocess.call(["xdotool", "type", ch])
    # increase or decrease the time below to type slower or faster
    time.sleep(0.15)
