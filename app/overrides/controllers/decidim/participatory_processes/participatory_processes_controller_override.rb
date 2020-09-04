# frozen_string_literal: true

Decidim::ParticipatoryProcesses::ParticipatoryProcessesController.class_eval do
  before_action :skip_for_single_process, only: :index

  private

  def skip_for_single_process
    return unless published_processes.one?

    redirect_to "/processes/#{published_processes.first.slug}"
  end
end
