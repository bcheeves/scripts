# Email Threat Protection Library Wrapper Example v0.1
# hugo.sigurdson@fireeye.com
# Copyright (C) 2020 FireEye, Inc. All Rights Reserved.
###
from etp_lib import *
from pprint import pprint

api_key = "XXXX"
etp_region = "eu"

etp = FireEyeEmailThreatPrevention(api_key, etp_region)

etp.trace_message(fromAcceptedDateTime='2020-07-05T12:00:00.098', domains=['etpdemo.com'])#, 'bcc.email.fireeyecloud.com'] )

release_list = []

for item in etp.trace_message_details:

    release_list.append(item['etp_id'])

etp.quarantine_bulk_release_email_request(etp_message_ids=release_list)

