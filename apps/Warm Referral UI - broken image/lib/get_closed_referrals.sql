SELECT
  *
FROM
dev_ben_pii.programs__ready_computing_updated_inbound_referrals_tr
WHERE
referral_status IN ('Closed Successfully', 'Closed but Unsuccessful', 'Cancelled')