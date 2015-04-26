class PublisherController < ApplicationController

  before_action :authenticate_user!
  before_action :set_service, only: [:index, :upload]

  def index
    respond_to do |format|
      format.html
    end
  end

  def upload

    @publisher_service.upload

    respond_to do |format|
      if @publisher_service.status
        format.html { redirect_to publisher_path, notice: 'JSON content is published.'}
      else
        format.html { redirect_to publisher_path, notice: "Error: #{@publisher_service.error_message}"}
      end
    end
  end

  private

  def set_service
    @publisher_service = PublisherService.new()
    @json = @publisher_service.json()
  end
end
