# RBL Check

RBL check script is use to check the ip is blacklisted on the list of DNSBL Servers.

## What Is RBL?

Realtime Blackhole List, a list of IP addresses whose owners refuse to stop the proliferation of spam. The RBL usually lists server IP addresses from ISPswhose customers are responsible for the spam and from ISPs whose servers are hijacked for spam relay.

## Dependency
 The dig command is the only one dependency to run the Rbl check
 To install dig in Redhat base OS
 ```bash
dnf install bind-utils
 ```
 To install dig in Debian base OS
```bash
apt install dnsutils
 ```

## Usage

```bash
rbl_check
help
[i ----> ip to check for blacklist]
[f ----> file with list of ip to check]
[v ----> version]
 ```
**To check single ip**
```bash
rbl_check -i 198.189.49.77
```
**To check list of ip's from file**
 ```bash
cat <<EOF >> ip_list.txt
198.189.49.77
198.189.49.78
198.189.49.79
198.189.49.80
EOF
rbl_check -f ip_list.txt
```
## How to install?
```bash
 git clone /tmp/rbl_check
 cp /tmp/rbl_check.sh /bin/rbl_check
 rm -rf /tmp/rbl_check
 ```
