#!/bin/bash

cp ./sudoers /etc/

useradd -m -G wheel umi
passwd umi
