class JobObserver < ActiveRecord::Observer

  def after_activation(record)
    Twitter.update I18n.t('twitter.new_job', title: record.title.truncate(60),
                          url: Rails.application.routes.url_helpers.job_url(record, host: "railsquebec.org"))
  end
end
