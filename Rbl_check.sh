#!/bin/bash
#
# Copyright 2022 
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
domains=(0spam.fusionzero.com 0spam-killlist.fusionzero.com 
0spamtrust.fusionzero.com access.redhawk.org accredit.habeas.com 
all.dnsbl.bit.nl all.rbl.jp all.s5h.net all.spamrats.com 
asn.routeviews.org aspath.routeviews.org aspews.ext.sorbs.net 
backscatter.spameatingmonkey.net badnets.spameatingmonkey.net 
bad.psky.me b.barracudacentral.org bb.barracudacentral.org 
bitonly.dnsbl.bit.nl blackholes.mail-abuse.org blacklist.sci.kun.nl 
blacklist.woody.ch bl.blocklist.de bl.drmx.org bl.emailbasura.org 
bl.konstant.no bl.mailspike.net bl.mav.com.br block.dnsbl.sorbs.net 
bl.rbl-dns.com bl.scientificspam.net bl.score.senderscore.com 
bl.spamcop.net bl.spameatingmonkey.net bl.spamstinks.com bl.suomispam.net 
bsb.empty.us bsb.spamlookup.net cbl.abuseat.org cblless.anti-spam.org.cn 
cblplus.anti-spam.org.cn ccess.redhawk.org cml.anti-spam.org.cn combined.njabl.org 
combined.rbl.msrbl.net csi.cloudmark.com dnsbl-0.uceprotect.net 
dnsbl-1.uceprotect.net dnsbl.anticaptcha.net dnsbl.aspnet.hu dnsblchile.org 
dnsbl.cobion.com dnsbl.justspam.org dnsbl.kempt.net dnsbl.madavi.de dnsbl.net.ua 
dnsbl.openresolvers.org dnsbl.proxybl.org dnsbl.rizon.net dnsbl.rv-soft.info 
dnsbl.rymsho.ru dnsbl.sorbs.net dnsbl.spam-champuru.livedoor.com 
dnsbl.tornevall.org dnsbl.webequipped.com dnsbl.zapbl.net dnsrbl.org 
dnsrbl.swinog.ch dnswl.inps.de drone.abuse.ch dsn.bl.rfc-ignorant.de 
dsn.rfc-ignorant.org dul.pacifier.net dyna.spamrats.com dynip.rothen.com 
dyn.nszones.com escalations.dnsbl.sorbs.net eswlrev.dnsbl.rediris.es 
exitnodes.tor.dnsbl.sectoor.de feb.spamlab.com fnrbl.fast.net forbidden.icm.edu.pl 
free.v4bl.org geobl.spameatingmonkey.net gl.suomispam.net hil.habeas.com 
hostkarma.junkemailfilter.com httpbl.abuse.ch hul.habeas.com iadb2.isipp.com 
iadb.isipp.com images.rbl.msrbl.net ipbl.zeustracker.abuse.ch ips.backscatterer.org 
ips.whitelisted.org ip.v4bl.org ispmx.pofon.foobar.hu ix.dnsbl.manitu.net 
l1.bbfh.ext.sorbs.net l2.bbfh.ext.sorbs.net l3.bbfh.ext.sorbs.net l4.bbfh.ext.sorbs.net 
list.bbfh.org list.blogspambl.com list.dnswl.org mail-abuse.blacklist.jippg.org 
mtawlrev.dnsbl.rediris.es netblockbl.spamgrouper.to netblock.pedantic.org 
netbl.spameatingmonkey.net netscan.rbl.blockedservers.com new.spam.dnsbl.sorbs.net 
nobl.junkemailfilter.com no-more-funn.moensted.dk noptr.spamrats.com 
old.spam.dnsbl.sorbs.net opm.tornevall.org origin.asn.cymru.com origin.asn.spameatingmonkey.net 
orvedb.aupads.org peer.asn.cymru.com phishing.rbl.msrbl.net plus.bondedsender.org 
pofon.foobar.hu problems.dnsbl.sorbs.net proxies.dnsbl.sorbs.net psbl.surriel.com 
query.bondedsender.org rbl2.triumf.ca rbl.abuse.ro rbl.blockedservers.com 
rbl.dns-servicios.com rbl.efnet.org rbl.fasthosts.co.uk rbl.iprange.net 
rbl.lugh.ch rbl.megarbl.net rbl-plus.mail-abuse.org rbl.schulte.org rbl.suresupport.com 
rbl.talkactive.net recent.spam.dnsbl.sorbs.net relays.bl.kundenserver.de 
relays.dnsbl.sorbs.net relays.mail-abuse.org relays.nether.net rep.mailspike.net 
rhsbl.ahbl.org rsbl.aupads.org sa-accredit.habeas.com safe.dnsbl.sorbs.net 
sa.senderbase.org sbl.nszones.com sbl-xbl.spamhaus.org score.senderscore.com 
service.mailblacklist.com service.mailwhitelist.com singlebl.spamgrouper.com 
singular.ttk.pte.hu sohul.habeas.com spam.dnsbl.anonmails.de spamlist.or.kr 
spam.pedantic.org spam.rbl.blockedservers.com spam.rbl.msrbl.net spamsources.fabel.dk 
spam.spamrats.com srn.surgate.net st.technovision.dk swl.spamhaus.org tor.dnsbl.sectoor.de 
tor.efnet.org torexit.dan.me.uk truncate.gbudb.net trusted.nether.net ubl.unsubscore.com 
unsure.nether.net v4.fullbogons.cymru.com virbl.bit.nl virbl.dnsbl.bit.nl 
virus.rbl.msrbl.net vote.drbl.caravan.ru vote.drbldf.dsbl.ru vote.drbl.gremlin.ru 
wadb.isipp.com wbl.triumf.ca web.rbl.msrbl.net whitelist.sci.kun.nl whitelist.surriel.com 
wl.mailspike.net wl.nszones.com work.drbl.caravan.ru work.drbldf.dsbl.ru 
work.drbl.gremlin.ru zen.spamhaus.org z.mailspike.net zz.countries.nerd.dk 
bl.tiopan.com rbl.choon.net rwl.choon.net dnsbl.ahbl.org dnsbl-2.uceprotect.net 
dnsbl-3.uceprotect.net bl.spamcannibal.org db.wpbl.info korea.services.net 
dnsbl.inps.de bl.shlink.org wl.shlink.org spamguard.leadmon.net bl.nszones.com list.quorum.to)

Version="1.0.0"
#black list check help func
Help() {
    printf "help\n"
    printf "[i ----> ip to check for blacklist]\n"
    printf "[f ----> file with list of ip to check]\n"
    printf "[v ----> version]\n"
    printf "[m ----> send check result via email]\n"
    printf "[h ----> help]\n"
}

[ -z "$1" ] && Help && exit 1
while getopts :i:f:v  FLAG; do
  case $FLAG in
    i)
      OPTERR=0
      if [[ "$OPTARG" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]];then
          IP_LIST=( "$OPTARG" )
      else
          echo "Enter the valid ip address.."
          exit 1
      fi
      ;;
    f)
      if [ -f "$OPTARG" ]; then
         IP_LIST=()
         while read -r ips; do
           if [[ "$ips" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
              IP_LIST+=("$ips")
           else
              echo "$ips is not an valid ip adddress."
              exit 1
           fi
         done < "$OPTARG"
      else
          echo "$OPTARG No such file or Directory"
          exit 1
      fi
     ;;
    v)
       printf "%s\n" "${Version}"
      ;;
    \?)
      Help
      exit 1
      ;;
    :)
      echo "Error: -${OPTARG} requires an argument."
      Help
      exit 1
      ;;
  esac
done


# ip check again rbl..
for IP in ${IP_LIST[*]}; do
  #////////////////////////////////////////////////////
  revv=$(echo "$IP"| awk -F "." '{print $4"."$3"."$2"."$1}')
  #/////////////////////////////////////////////////////
  echo "############################################"
  for domain in ${domains[*]}; do
      echo -en "\e[32m \e[1mChecking IP $IP in RBL ${domain}...              \e[0m\r"
      ipcheck=$(dig +short "$revv.${domain}")
      if [[ -n "$ipcheck" ]]; then
          echo -e "\e[1m\e[31mIP $IP is Blacklisted in ${domain} \e[0m" status code "$ipcheck" | tee -a /tmp/data.mail
      fi
  done
done

#//////////////////////////////////////////////////////////////////////////
##################################################### end of script ############################################################
