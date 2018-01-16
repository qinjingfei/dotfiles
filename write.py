#!/usr/bin/env python3
import subprocess
import time
import sys
text = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQD8t7TJdYO1q4YKDsVDICXc9yADTDSrF9O3BuILyesPjBGcwYiBdvzZirSnvuzXwGP+wPgRWMd7qHduOuqSugySizYqbz0d2W770YNmBC3mny7U0MWDNGWRgP5IRqK76eXv9Z9becEEPapBGqynjC6nR39SvVAxue8Bva/hT0MUEqB6yDClJf2sl/r+fNNWbOxVf3KZna3fxXMjS0sU4NffCAorzxMBFIu304XqgKvJMAk0gb0emT7Q/SxRe/sf14JInFKgdVBYMzjqnle73gzQTp97LI2IMP4Mlxv789ADHyE/L4wLreGwnWg08o9ZkOWMS4H2QIJFiCMB+LZmFZ6uDb2uNXhm1flpE3fcLhq7b7NUQkCEZKY9jTRB+dgvp26xlH9it8mDihwW80PGKXKWETcFej8Hk+j9vl8jIb6N8mlC22gfStXIIoQlZ5uNPr1SD6hYWMnye26o/puvW5K3NM07lup0cdEpgS/ZSaZfJxAl3u1xt6zUANqyw50nSzteRU3X9822DItCovNyCbyMP9QQ7Puim5uikBcgT9zqoiltIlJu7goSh46ubfbMe3/Wg4/GbB881UIteu7zBN9abmlAw3yToDLghOJDnLr8L0VobOC7KgqkeR36EtCEw2Xtt0lYBk/StySQdijg8EMqmWtsQoNUkByqjUngcD6rjw== qinjingfei1@gmail.com"

# 3 seconds to alt-tab to correct window after running
time.sleep(3)

for ch in text:
    # type out the text
    subprocess.call(["xdotool", "type", ch])
    # increase or decrease the time below to type slower or faster
    time.sleep(0.15)

