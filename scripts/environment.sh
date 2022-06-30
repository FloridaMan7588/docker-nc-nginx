#!/bin/bash

if [  "${ACCESS_LOG}" = "TRUE" ]
then
  sed 's/log_val/on/' /etc/nginx/sites-enabled/default
else
  sed 's/log_val/off/' /etc/nginx/sites-enabled/default
fi