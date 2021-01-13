Decidim::DiffCell.include Quartieridee::DiffCell
Decidim::Proposals::ProposalMCell.include Quartieridee::Proposals::ProposalMCell
Decidim::ParticipatoryProcesses::ProcessMCell.include Quartieridee::ParticipatoryProcesses::ProcessMCell

# Setup a controller hook to setup the sms gateway before the
# request is processed. This is done through a notification to
# get access to the `current_*` environment variables within
# Decidim. Taken and adapted from the term_customizer module.
ActiveSupport::Notifications.subscribe "start_processing.action_controller" do |_name, _started, _finished, _unique_id, data|
  Quartieridee::Verifications::Sms::AspsmsGateway.organization = data[:headers].env["decidim.current_organization"]
end
