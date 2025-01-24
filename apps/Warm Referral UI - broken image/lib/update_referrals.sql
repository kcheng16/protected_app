INSERT INTO retool.updated_inbound_referrals VALUES ({{updateReferralIDInput.value}}, CURRENT_TIMESTAMP, {{updateNewReferralStatusSelect.value}},
{{updateClosedUnsuccessfulReasonSelect.value}},
{{updateResourcesProvidedSelect.value.toString()}}, {{updateNotesInput.value}});