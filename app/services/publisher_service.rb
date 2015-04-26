class PublisherService

  attr_accessor :status, :error_message

  S3_BUCKET = ENV['S3_BUCKET']
  S3_BUCKET_KEY = ENV['S3_BUCKET_KEY']

  def initialize()
    @posts = Post.all
  end

  def json
    @posts.as_json(only: [:image, :title, :tagline, :url])
  end

  def upload
    begin
      put_object
      @status = true
    rescue => e
      @error_message = e.message
      @status = false
    end
  end

  def to_string
    ActiveSupport::JSON.encode(json)
  end

  private

  def s3_client
    Aws::S3::Client.new
  end

  def put_object
    s3_client.put_object(
        acl: "public-read",
        body: to_string,
        bucket: S3_BUCKET,
        content_type: 'application/json',
        key: S3_BUCKET_KEY,
    )
  end
end
