# Class cis::rhel7
#
# Implements all CIS controls found the the RHEL7 benchmark. Use this class as
# base if any deviations are necessary.
#
class cis::rhel7 {
  include cis::rhel7controls::c0

}
