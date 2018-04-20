#!/bin/sh

# Reference ip6tables firewall rules for ICMPv6.
#
# 11/07/2008
# Ryan Giobbi, CERT
#
# Please send feedback to <rag@cert.org> 
# Don't use these rules on production systems without testing. 
# They are designed to be used as a
# demonstration.
# These rules are primarily designed for host-based firewalls.
#
# See http://www.iana.org/assignments/icmpv6-parameters for a list 
# ICMPv6 types.
#


# Before we start, we'll set some variables to make the rules more clear # later.

# Comma seperated list of blocked tcp ports. These can be anything,
# but we're using the ports VNC and X Windows use since these services 
# can be tunneled over SSH.
blocked_tcp_ports=5900:5910,6000:6063

# A UDP port to block.
blocked_udp_ports=5353


# Flush chains

ip6tables -F INPUT
ip6tables -F FORWARD
ip6tables -F OUTPUT
ip6tables -F


# Set up default policies

ip6tables -P INPUT DROP
ip6tables -P FORWARD DROP
ip6tables -P OUTPUT DROP


# Allow localhost traffic. This rule is for all protocols.

ip6tables -A INPUT -s ::1 -d ::1 -j ACCEPT


# Allow some ICMPv6 types in the INPUT chain
# Using ICMPv6 type names to be clear.

ip6tables -A INPUT -p icmpv6 --icmpv6-type destination-unreachable -j ACCEPT
ip6tables -A INPUT -p icmpv6 --icmpv6-type packet-too-big -j ACCEPT
ip6tables -A INPUT -p icmpv6 --icmpv6-type time-exceeded -j ACCEPT
ip6tables -A INPUT -p icmpv6 --icmpv6-type parameter-problem -j ACCEPT


# Allow some other types in the INPUT chain, but rate limit.
ip6tables -A INPUT -p icmpv6 --icmpv6-type echo-request -m limit --limit 900/min -j ACCEPT
ip6tables -A INPUT -p icmpv6 --icmpv6-type echo-reply -m limit --limit 900/min -j ACCEPT


# Allow others ICMPv6 types but only if the hop limit field is 255.

ip6tables -A INPUT -p icmpv6 --icmpv6-type router-advertisement -m hl --hl-eq 255 -j ACCEPT
ip6tables -A INPUT -p icmpv6 --icmpv6-type neighbor-solicitation -m hl --hl-eq 255 -j ACCEPT
ip6tables -A INPUT -p icmpv6 --icmpv6-type neighbor-advertisement -m hl --hl-eq 255 -j ACCEPT
ip6tables -A INPUT -p icmpv6 --icmpv6-type redirect -m hl --hl-eq 255 -j ACCEPT


# When there isn't a match, the default policy (DROP) will be applied.
# To be sure, drop all other ICMPv6 types.
# We're dropping enough icmpv6 types to break RFC compliance.

ip6tables -A INPUT -p icmpv6 -j LOG --log-prefix "dropped ICMPv6"
ip6tables -A INPUT -p icmpv6 -j DROP



# Allow ICMPv6 types that should be sent through the Internet.

ip6tables -A OUTPUT -p icmpv6 --icmpv6-type destination-unreachable -j ACCEPT
ip6tables -A OUTPUT -p icmpv6 --icmpv6-type packet-too-big -j ACCEPT
ip6tables -A OUTPUT -p icmpv6 --icmpv6-type time-exceeded -j ACCEPT
ip6tables -A OUTPUT -p icmpv6 --icmpv6-type parameter-problem -j ACCEPT


# Limit most NDP messages to the local network.

ip6tables -A OUTPUT -p icmpv6 --icmpv6-type neighbour-solicitation -m hl --hl-eq 255 -j ACCEPT
ip6tables -A OUTPUT -p icmpv6 --icmpv6-type neighbour-advertisement -m hl --hl-eq 255 -j ACCEPT
ip6tables -A OUTPUT -p icmpv6 --icmpv6-type router-solicitation -m hl --hl-eq 255 -j ACCEPT


# If we're acting like a router, this could be a sign of problems.

ip6tables -A OUTPUT -p icmpv6 --icmpv6-type router-advertisement -j LOG --log-prefix "ra ICMPv6 type"
ip6tables -A OUTPUT -p icmpv6 --icmpv6-type redirect -j LOG --log-prefix "redirect ICMPv6 type"
ip6tables -A OUTPUT -p icmpv6 --icmpv6-type router-advertisement -j REJECT
ip6tables -A OUTPUT -p icmpv6 --icmpv6-type redirect -j REJECT


# Accept all other ICMPv6 types in the OUTPUT chain.

ip6tables -A OUTPUT -p icmpv6 -j ACCEPT


# Reject in the FORWARD chain. This rule is probably not needed 
# due to the FORWARD policy.

ip6tables -A FORWARD -p icmpv6 -j REJECT



# Enough ICMPv6!   :-D 
# Some sample TCP rules. <These are for example purposes only.>
# The REJECT is for politeness on the local network.

ip6tables -A INPUT -m multiport -p tcp --dport $blocked_tcp_ports -m hl --hl-eq 255 -j REJECT
ip6tables -A OUTPUT -m multiport -p tcp --dport $blocked_tcp_ports -m hl --hl-eq 255 -j REJECT
ip6tables -A INPUT -m multiport -p tcp --dport $blocked_tcp_ports -m hl --hl-lt 255 -j DROP
ip6tables -A OUTPUT -m multiport -p tcp --dport $blocked_tcp_ports -m hl --hl-lt 255 -j DROP


# This rule will block the port mdns uses. Its commented out.
# For mobile systems, the rule can
# be added to a script in
# /etc/Networkmanager/dispatcher/
# to gain location-aware rules 
# by querying iwconfig, ifconfig, ip route2, date, etc. An example
# script is below. It would need to be placed in
# /etc/Networkmanager/dispatcher/ to function.

#!/bin/bash
#network=$(iwconfig wlan0 | grep SSID)
#
#if [ "$network" = "wlan0 IEEE 802.11abg ESSID:"SSID"" ]; then
#iptables -A INPUT -p udp $blocked_udp_ports -j ACCEPT
#
#else
#ip6tables -A OUTPUT -p udp --dport $blocked_udp_ports -j REJECT
#
#fi


# Stateful matching to allow requested traffic in.

ip6tables -A OUTPUT -p tcp -j ACCEPT
ip6tables -A OUTPUT -p udp -j ACCEPT
ip6tables -A INPUT -p tcp -m state --state ESTABLISHED,RELATED -j ACCEPT
ip6tables -A INPUT -p udp -m state --state ESTABLISHED,RELATED -j ACCEPT


# Drop NEW,INVALID probably not needed due to the default drop policy.

ip6tables -A INPUT -m state --state NEW,INVALID -j DROP


# REJECT everything in the FORWARD chain.

ip6tables -A FORWARD -p tcp -j REJECT
ip6tables -A FORWARD -p udp -j REJECT

