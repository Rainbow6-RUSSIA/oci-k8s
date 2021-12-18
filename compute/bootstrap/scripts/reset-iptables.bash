#!/bin/bash

sudo iptables-save > /etc/iptables/rules.v4.orig  # Save original rules
sudo iptables -F                                  # Reset all rules
sudo iptables-save > /etc/iptables/rules.v4       # Persist rules
