require 'pp'

module TurboConcerns
  extend ActiveSupport::Concern

  def update_flash_partial
    turbo_stream.replace('body_partial', partial: 'application/body_partial', locals: { flash: })
  end
end
