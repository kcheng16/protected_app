<Container
  id="tabbedContainer"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hoistFetching={true}
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle"
      value="#### HEC Referral Tool"
      verticalAlign="center"
    />
    <Text
      id="headerText"
      value="👋 **Hey there!** This tool is to process new inbound referrals and update existing referrals. Click on a record's row in the table to select it for processing."
      verticalAlign="center"
    />
    <Tabs
      id="containerTabs"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer"
      value="{{ self.values[0] }}"
    >
      <Option id="c3c9a" value="Tab 1" />
      <Option id="4192e" value="Tab 2" />
      <Option id="36a9d" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="4dc98"
    icon="bold/interface-security-shield-person—shield-secure-security-person"
    iconPosition="left"
    viewKey="New Pending Referrals"
  >
    <Modal
      id="processModal"
      buttonText="Process Referral"
      closeOnOutsideClick={true}
      events={[
        {
          ordered: [
            {
              eventParams: {
                ordered: [{ onlyRespondToUserInteraction: true }],
              },
            },
            { method: "setOpenModal" },
            { params: { ordered: [] } },
            { targetId: null },
            { pluginId: "referralTable" },
            { waitType: "debounce" },
            { event: "open" },
            { type: "widget" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="false"
      modalHeightType="auto"
      modalWidth="70%"
    >
      <Form
        id="processForm"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        hoistFetching={true}
        initialData="{{ referralTable.selectedRow.data }}"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="processFormTitle"
            value="#### Please fill out these fields to process referral:"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="processReferralIDInput"
            formDataKey="referral_id"
            label="Referral ID"
            placeholder="Enter value"
            readOnly="true"
          />
          <TextInput
            id="processClientIDInput"
            formDataKey="client_id"
            label="Client ID"
            placeholder="Enter value"
            readOnly="true"
          />
          <TextInput
            id="processRequestingIndividualInput"
            formDataKey="requesting_individual"
            label="Requesting Individual"
            readOnly="true"
          />
          <TextInput
            id="processExternalOrganizationInput"
            formDataKey="external_organization"
            label="External Organization
"
            placeholder="Enter value"
            readOnly="true"
          />
          <DateTime
            id="processRequestedDateInput"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            formDataKey="requested_date"
            iconBefore="bold/interface-calendar"
            label="Requested Date"
            minuteStep={15}
            readOnly="true"
            value="{{ new Date() }}"
          />
          <DateTime
            id="processTargetDateInput"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            formDataKey="target_end_date"
            iconBefore="bold/interface-calendar"
            label="Target End Date"
            minuteStep={15}
            readOnly="true"
            value="{{ new Date() }}"
          />
          <TextInput
            id="processStatusInput"
            formDataKey="referral_status"
            label="Current Status"
            placeholder="Enter value"
            readOnly="true"
          />
          <TextInput
            id="processNoteInput"
            formDataKey="referral_narrative
"
            label="Referral Narrative"
            placeholder="N/A"
            readOnly="true"
          />
          <TextInput
            id="processAssignedStaffMemberSelect"
            formDataKey="assigned_staff_member"
            label="Assigned Staff Member"
            readOnly="true"
          />
          <Divider id="divider1" />
          <Select
            id="processNewReferralStatusSelect"
            emptyMessage="No options"
            itemMode="static"
            label="New Referral Status"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
          >
            <Option
              id="39d46"
              disabled={false}
              hidden={false}
              value="Pending"
            />
            <Option id="993d7" value="In Progress" />
            <Option id="d8000" value="Delayed" />
            <Option id="fb412" value="Closed Successfully" />
            <Option
              id="a2be9"
              disabled={false}
              hidden={false}
              value="Closed but Unsuccessful"
            />
            <Option
              id="18434"
              disabled={false}
              hidden={false}
              value="Cancelled"
            />
          </Select>
          <Select
            id="processClosedUnsuccessfulReasonSelect"
            disabled="{{processNewReferralStatusSelect.value != 'Closed but Unsuccessful'}}"
            emptyMessage="No options"
            itemMode="static"
            label="Closed Unsuccessful Reason"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required="{{processNewReferralStatusSelect.value == 'Closed but Unsuccessful'}}"
            showSelectionIndicator={true}
          >
            <Option id="993d7" value="Unable to contact neighbor" />
            <Option id="d8000" value="Requested service not available" />
            <Option id="fb412" value="Neighbor not eligible" />
            <Option
              id="0fbe8"
              disabled={false}
              hidden={false}
              value="No availability"
            />
            <Option
              id="9677a"
              disabled={false}
              hidden={false}
              value="Service termed"
            />
            <Option
              id="3ec31"
              disabled={false}
              hidden={false}
              value="Unable to contact sender"
            />
            <Option
              id="1d04c"
              disabled={false}
              hidden={false}
              value="Declined assistance"
            />
            <Option id="8041f" disabled={false} hidden={false} value="Other" />
          </Select>
          <Multiselect
            id="processResourcesProvidedSelect"
            disabled="{{processNewReferralStatusSelect.value != 'Closed Successfully'}}"
            emptyMessage="No options"
            itemMode="static"
            label="Resources Provided"
            overlayMaxHeight={375}
            placeholder="Select resources..."
            required="{{processNewReferralStatusSelect.value == 'Closed Successfully'}}"
            showSelectionIndicator={true}
            wrapTags={true}
          >
            <Option
              id="ca315"
              value="Food Assistance - Food Pantries and Distributions"
            />
            <Option id="00b34" value="Benefit Application Assistance" />
            <Option id="4c37b" value="Employment" />
            <Option
              id="3b1eb"
              disabled={false}
              hidden={false}
              value="Health Care
"
            />
            <Option
              id="5633b"
              disabled={false}
              hidden={false}
              value="Clothing"
            />
            <Option
              id="63cd9"
              disabled={false}
              hidden={false}
              value="Housing/Shelter"
            />
            <Option
              id="04007"
              disabled={false}
              hidden={false}
              value="Education"
            />
            <Option
              id="25585"
              disabled={false}
              hidden={false}
              value="Gold Card"
            />
          </Multiselect>
          <TextInput
            id="processNotesInput"
            label="Notes"
            placeholder="Enter notes here..."
          />
        </Body>
        <Footer>
          <Button
            id="processFormButton"
            submit={true}
            submitTargetId="processForm"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="process_referrals"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="processModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <TableLegacy
      id="referralTable"
      _columns={[
        "assigned_staff_member",
        "referral_id",
        "client_id",
        "referral_status",
        "requesting_individual",
        "external_organization",
        "requested_date",
        "target_end_date",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { "Custom Column 1": "" },
          { requesting_individual: "" },
          { requested_date: "" },
          { status_reason: "" },
          { referral_narrative: "" },
          { assigned_staff_member: "" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { "Custom Column 1": "" },
          { requesting_individual: "" },
          { requested_date: "" },
          { status_reason: "" },
          { referral_narrative: "" },
          { assigned_staff_member: "" },
        ],
      }}
      _columnVisibility={{ ordered: [{ referral_status: true }] }}
      _compatibilityMode={false}
      columnAlignment={{
        ordered: [
          { "Custom Column 1": "left" },
          { requesting_individual: "left" },
          { requested_date: "left" },
          { status_reason: "left" },
          { referral_narrative: "left" },
          { assigned_staff_member: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { referral_performed_on: "" },
          { subject_type_coding_standard: "" },
          { subject_given_name: "" },
          { referral_identifiers_assigning_authority: "" },
          { target_end_date: "" },
          { spoken_languages_details: "" },
          { subject_middle_name: "" },
          { subject_address1_type_code: "" },
          { subject_address1_country_original_text: "" },
          { referral_identifiers_type_coding_standard: "" },
          { subject_address1_country_description: "" },
          { subject_assigning_authority: "" },
          { subject_address1_country_code: "" },
          { subject_address1_type_original_text: "" },
          { requesting_individual: "" },
          { subject_address1_type_description: "" },
          { housing_status_coding_standard: "" },
          { external_organization: "" },
          { subject_gender_coding_standard: "" },
          { subject_type_original_text: "" },
          { subject_address1_state_code: "" },
          { subject_type_description: "" },
          { contact_information_description: "" },
          { assigned_staff_member: "" },
          { referral_send_by: "" },
          { status_code_coding_standard: "" },
          { subject_sexual_orientation_code: "" },
          { subject_address1_line1: "" },
          { referral_identifiers_type_description: "" },
          { client_id: "" },
          { housing_status_original_text: "" },
          { referral_narrative: "" },
          { subject_gender_original_text: "" },
          { subject_gender_description: "" },
          { subject_sexual_orientation_coding_standard: "" },
          { housing_status_description: "" },
          { status_reason: "" },
          { status_code_text: "" },
          { status_code_code: "" },
          { subject_address1_postal_code: "" },
          { subject_family_name: "" },
          { referral_status: "" },
          { subject_address1_state_coding_standard: "" },
          { status_code_original_text: "" },
          { status_code_description: "" },
          { housing_status_code: "" },
          { subject_gender_code: "" },
          { subject_address1_county: "" },
          { subject_sexual_orientation_original_text: "" },
          { referral_identifiers_value: "" },
          { referral_sender_note: "" },
          { subject_address1_country_coding_standard: "" },
          { subject_address1_city: "" },
          { subject_sexual_orientation_description: "" },
          { referral_identifiers_type_code: "" },
          { subject_address1_type_coding_standard: "" },
          { subject_preferred_name: "" },
          { referral_id: "" },
          { subject_value: "" },
          { subject_address1_state_original_text: "" },
          { subject_type_code: "" },
          { requested_date: "" },
          { contact_information_value: "" },
          { subject_name_list: "" },
          { subject_address1_state_description: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { target_end_date: false },
          { requesting_individual: false },
          { external_organization: false },
          { assigned_staff_member: true },
          { client_id: false },
          { referral_narrative: false },
          { status_code_text: false },
          { referral_id: false },
          { requested_date: false },
        ],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "TextDataCell" },
          { requesting_individual: "TextDataCell" },
          { requested_date: "DateTimeDataCell" },
          { status_reason: "TextDataCell" },
          { referral_narrative: "TextDataCell" },
          { assigned_staff_member: "SingleTagDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { referral_performed_on: "Referral Performed On" },
          { target_end_date: "Target End Date" },
          { requesting_individual: "Requesting Individual" },
          { external_organization: "External Organization" },
          { assigned_staff_member: "Assigned Staff Member" },
          { referral_send_by: "Referral Sent By" },
          { client_id: "Client ID" },
          { referral_narrative: "Referral Narrative" },
          { status_reason: "Status Reason" },
          { status_code_text: "Status" },
          { referral_status: "Referral Status" },
          { "Custom Column 1": "Referral Narrative" },
          { referral_sender_note: "Referral Sender Note" },
          { referral_id: "Referral ID" },
          { requested_date: "Requested Date" },
        ],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 1": "" },
          { referral_narrative: "" },
          { assigned_staff_member: "" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { "Custom Column 1": { ordered: [] } },
          { requesting_individual: { ordered: [] } },
          {
            requested_date: {
              ordered: [
                { manageTimeZone: false },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "-05:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
          { status_reason: { ordered: [] } },
          { referral_narrative: { ordered: [] } },
          {
            assigned_staff_member: {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "auto" },
                { allowCustomValue: true },
                { optionLabels: { array: [] } },
                { optionColors: { array: [] } },
                { optionValues: { array: [] } },
              ],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "client_id", value: 136.125 } },
        { object: { id: "requesting_individual", value: 151.28125 } },
        { object: { id: "external_organization", value: 158.578125 } },
        { object: { id: "requested_date", value: 167 } },
        { object: { id: "target_end_date", value: 156 } },
        { object: { id: "status_reason", value: 114 } },
        { object: { id: "Custom Column 1", value: 175 } },
        { object: { id: "assigned_staff_member", value: 171.640625 } },
        { object: { id: "referral_narrative", value: 773 } },
        { object: { id: "referral_id", value: 117.71875 } },
      ]}
      data="{{ get_referrals.data }}"
      defaultSortByColumn="referral_id"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "assign_referrals" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      showBoxShadow={false}
      showDownloadButton={false}
    />
  </View>
  <View
    id="ec7e3"
    icon="bold/interface-folder-add"
    iconPosition="left"
    viewKey="Update In-Progress Referrals"
  >
    <Modal
      id="updateModal"
      buttonText="Update Referral"
      closeOnOutsideClick={true}
      events={[]}
      hidden="false"
      modalHeight="600px"
      modalHeightType="auto"
      modalWidth="70%"
    >
      <Form
        id="updateForm"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        hoistFetching={true}
        initialData="{{ updateTable.selectedRow.data }}"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="updateFormTitle"
            value="#### Please fill out these fields to update referral:"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="updateReferralIDInput"
            formDataKey="referral_id"
            label="Referral ID"
            placeholder="Enter value"
            readOnly="true"
            required={true}
          />
          <TextInput
            id="updateClientIDInput"
            formDataKey="client_id"
            label="Client ID"
            placeholder="Enter value"
            readOnly="true"
            required={true}
          />
          <TextInput
            id="updateRequestingIndividualInput"
            formDataKey="requesting_individual"
            label="Requesting Individual"
            placeholder="Enter value"
            readOnly="true"
            required={true}
          />
          <TextInput
            id="updateExternalOrganizationInput"
            formDataKey="external_organization"
            label="External Organization"
            placeholder="Enter value"
            readOnly="true"
            required={true}
          />
          <DateTime
            id="updateRequestedAtInput"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            formDataKey="requested_date"
            iconBefore="bold/interface-calendar"
            label="Requested Date"
            minuteStep={15}
          />
          <DateTime
            id="updateTargetEndDateInput"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            formDataKey="target_end_date"
            iconBefore="bold/interface-calendar"
            label="Target End Date"
            minuteStep={15}
            readOnly="true"
            required={true}
            value="{{ new Date() }}"
          />
          <TextInput
            id="updateCurrentStatusInput"
            formDataKey="referral_status"
            label="Current Status"
            placeholder="Enter value"
            readOnly="true"
            required={true}
          />
          <TextInput
            id="updateReferralNarrativeInput"
            formDataKey="referral_narrative"
            label="Referral Narrative"
            placeholder="Enter value"
            readOnly="true"
            required={true}
          />
          <TextInput
            id="textInput1"
            formDataKey="assigned_staff_member"
            label="Assigned Staff Member"
            placeholder="Enter value"
          />
          <Divider id="divider2" />
          <Select
            id="updateNewReferralStatusSelect"
            emptyMessage="No options"
            itemMode="static"
            label="New Referral Status"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
          >
            <Option id="622bb" value="Pending" />
            <Option
              id="c7c67"
              disabled={false}
              hidden={false}
              value="In Progress"
            />
            <Option
              id="4ccc9"
              disabled={false}
              hidden={false}
              value="Delayed"
            />
            <Option
              id="cb9aa"
              disabled={false}
              hidden={false}
              value="Closed Successfully"
            />
            <Option
              id="24bcf"
              disabled={false}
              hidden={false}
              value="Closed but Unsuccessful"
            />
            <Option
              id="94bbd"
              disabled={false}
              hidden={false}
              value="Cancelled"
            />
          </Select>
          <Select
            id="updateClosedUnsuccessfulReasonSelect"
            disabled="{{updateNewReferralStatusSelect.value != 'Closed but Unsuccessful'}}"
            emptyMessage="No options"
            itemMode="static"
            label="Closed Unsuccessful Reason"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required="{{updateNewReferralStatusSelect.value == 'Closed but Unsuccessful'}}"
            showSelectionIndicator={true}
          >
            <Option id="9a5a3" value="Unable to contact neighbor" />
            <Option id="7d996" value="Requested service not available" />
            <Option id="f1104" value="Neighbor not eligible" />
            <Option
              id="0d926"
              disabled={false}
              hidden={false}
              value="No availability"
            />
            <Option
              id="9285f"
              disabled={false}
              hidden={false}
              value="Service termed"
            />
            <Option
              id="c9841"
              disabled={false}
              hidden={false}
              value="Unable to contact sender"
            />
            <Option
              id="aea5f"
              disabled={false}
              hidden={false}
              value="Declined assistance"
            />
            <Option id="f72ac" disabled={false} hidden={false} value="Other" />
          </Select>
          <Multiselect
            id="updateResourcesProvidedSelect"
            disabled="{{updateNewReferralStatusSelect.value != 'Closed Successfully'}}"
            emptyMessage="No options"
            itemMode="static"
            label="Resources Provided"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required="{{updateNewReferralStatusSelect.value == 'Closed Successfully'}}"
            showSelectionIndicator={true}
            wrapTags={true}
          >
            <Option
              id="9ebac"
              value="Food Assistance - Food Pantries and Distributions"
            />
            <Option id="9f103" value="Benefit Application Assistance" />
            <Option id="bb83b" value="Employment" />
            <Option
              id="a057a"
              disabled={false}
              hidden={false}
              value="Health Care"
            />
            <Option
              id="eca17"
              disabled={false}
              hidden={false}
              value="Clothing"
            />
            <Option
              id="49908"
              disabled={false}
              hidden={false}
              value="Housing/Shelter"
            />
            <Option
              id="04700"
              disabled={false}
              hidden={false}
              value="Education"
            />
            <Option
              id="f09db"
              disabled={false}
              hidden={false}
              value="Gold Card"
            />
          </Multiselect>
          <TextInput
            id="updateNotesInput"
            label="Notes"
            placeholder="Enter notes here..."
          />
        </Body>
        <Footer>
          <Button
            id="updateFormButton"
            submit={true}
            submitTargetId="updateForm"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="update_referrals"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="updateModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <TableLegacy
      id="updateTable"
      _columns={[
        "assigned_staff_member",
        "referral_id",
        "client_id",
        "referral_status",
        "requesting_individual",
        "external_organization",
        "last_updated_at",
        "requested_date",
        "target_end_date",
        "resources_provided",
        "closed_unsuccessful_reason",
        "referral_narrative",
        "notes",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { processed_at: "" },
          { last_updated_at: "" },
          { target_end_date: "" },
          { requested_date: "" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { processed_at: "" },
          { last_updated_at: "" },
          { target_end_date: "" },
          { requested_date: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [
          { referral_status: true },
          { resources_provided: false },
          { closed_unsuccessful_reason: false },
        ],
      }}
      _compatibilityMode={false}
      columnAlignment={{
        ordered: [
          { processed_at: "left" },
          { last_updated_at: "left" },
          { target_end_date: "left" },
          { requested_date: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { target_end_date: "" },
          { last_updated_at: "" },
          { notes: "" },
          { requesting_individual: "" },
          { external_organization: "" },
          { assigned_staff_member: "" },
          { client_id: "" },
          { referral_narrative: "" },
          { referral_status: "" },
          { referral_id: "" },
          { resources_provided: "" },
          { closed_unsuccessful_reason: "" },
          { requested_date: "" },
        ],
      }}
      columnEditable={{ ordered: [{ assigned_staff_member: false }] }}
      columnFormats={{
        ordered: [
          { processed_at: "DateTimeDataCell" },
          { last_updated_at: "DateTimeDataCell" },
          { target_end_date: "DateTimeDataCell" },
          { requested_date: "DateTimeDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { referral_performed_on: "Referral Performed On" },
          { target_end_date: "Target End Date" },
          { last_updated_at: "Last Updated At" },
          { notes: "HFB Notes" },
          { processed_at: "Processed At" },
          { requesting_individual: "Requesting Individual" },
          { external_organization: "External Organization" },
          { assigned_staff_member: "Assigned Staff Member" },
          { referral_send_by: "Referral Send By" },
          { client_id: "Client ID" },
          { referral_narrative: "Referral Narrative" },
          { note: "HFB Notes (Latest)" },
          { referral_status: "Referral Status" },
          { person: "Person" },
          { referral_sender_note: "Referral Sender Note" },
          { referral_id: "Referral ID" },
          { resources_provided: "Resources Provided" },
          { closed_unsuccessful_reason: "Closed Unsuccessful Reason" },
          { action_taken: "Action Taken" },
          { requested_date: "Requested Date" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          {
            processed_at: {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
          {
            last_updated_at: {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
          {
            target_end_date: {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
          {
            requested_date: {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "person", value: 96.984375 } },
        { object: { id: "referral_performed_on", value: 165.484375 } },
        { object: { id: "action_taken", value: 198.484375 } },
        { object: { id: "processed_at", value: 162.125 } },
        { object: { id: "assigned_staff_member", value: 159 } },
        { object: { id: "requested_date", value: 154 } },
        { object: { id: "target_end_date", value: 180 } },
        { object: { id: "client_id", value: 156 } },
        { object: { id: "referral_id", value: 89 } },
        { object: { id: "resources_provided", value: 177 } },
        { object: { id: "referral_status", value: 190 } },
        { object: { id: "referral_narrative", value: 557 } },
        { object: { id: "last_updated_at", value: 178 } },
        { object: { id: "notes", value: 444 } },
      ]}
      data="{{ get_processed_referrals.data }}"
      defaultSortByColumn="referral_id"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "open" },
            { pluginId: "updateModal" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
            { enabled: "false" },
          ],
        },
      ]}
      showBoxShadow={false}
    />
  </View>
  <View
    id="08b20"
    disabled={false}
    hidden={false}
    icon="bold/interface-content-book-1"
    iconPosition="left"
    viewKey="Closed Referrals"
  >
    <Table
      id="closedReferralsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_closed_referrals.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="3d85f"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{}}
      toolbarPosition="bottom"
    >
      <Column
        id="1f1a9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="assigned_staff_member"
        label="Assigned Staff Member"
        placeholder="Enter value"
        position="center"
        size={176}
        summaryAggregationMode="none"
      />
      <Column
        id="3d85f"
        alignment="left"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="referral_id"
        label="Referral ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2f474"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="client_id"
        label="Client ID"
        placeholder="Enter value"
        position="center"
        size={172}
        summaryAggregationMode="none"
      />
      <Column
        id="9c069"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="referral_status"
        label="Referral Status"
        placeholder="Enter value"
        position="center"
        size={167}
        summaryAggregationMode="none"
      />
      <Column
        id="9c63c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="resources_provided"
        label="Resources Provided"
        placeholder="Enter value"
        position="center"
        size={238}
        summaryAggregationMode="none"
      />
      <Column
        id="6536b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="closed_unsuccessful_reason"
        label="Closed Unsuccessful Reason"
        placeholder="Enter value"
        position="center"
        size={188}
        summaryAggregationMode="none"
      />
      <Column
        id="48625"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="requesting_individual"
        label="Requesting Individual"
        placeholder="Enter value"
        position="center"
        size={161}
        summaryAggregationMode="none"
      />
      <Column
        id="e1443"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="external_organization"
        label="External Organization"
        placeholder="Enter value"
        position="center"
        size={146}
        summaryAggregationMode="none"
      />
      <Column
        id="71cf4"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="last_updated_at"
        label="Last Updated At"
        placeholder="Enter value"
        position="center"
        size={119}
        summaryAggregationMode="none"
      />
      <Column
        id="f99e0"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="requested_date"
        label="Requested Date"
        placeholder="Enter value"
        position="center"
        size={126}
        summaryAggregationMode="none"
      />
      <Column
        id="92f27"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="target_end_date"
        label="Target End Date"
        placeholder="Enter value"
        position="center"
        size={122}
        summaryAggregationMode="none"
      />
      <Column
        id="c5758"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="referral_narrative"
        label="Referral Narrative"
        placeholder="Enter value"
        position="center"
        size={179}
        summaryAggregationMode="none"
      />
      <Column
        id="6817e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="notes"
        label="Notes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
    </Table>
  </View>
</Container>
