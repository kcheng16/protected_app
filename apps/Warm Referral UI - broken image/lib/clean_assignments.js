// Get today's date
const now = new Date();

// Get indices of changed assignments
var change_idx = Object.keys({{referralTable.changeSet}});

// Convert row idx to numeric
Object.keys(change_idx).forEach(key => {
  change_idx[key] = Number(change_idx[key]); 
});

// Get referral ID's of changed values
var referral_ids = Object.values({{referralTable.data.referral_id}});
var changed_referral_ids = change_idx.map(index => referral_ids[index]);

// Get new staff member assignments
var assigned_staff_member = Object.values({{referralTable.changeSet}});
var staff_length = assigned_staff_member.length

for (let i = 0; i < staff_length; i++) {
  Object.assign(assigned_staff_member[i], {referral_id: changed_referral_ids[i]});
  Object.assign(assigned_staff_member[i], {assigned_at:now.toISOString()});
};

return assigned_staff_member;
