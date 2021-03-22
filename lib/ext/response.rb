class Response
  attr_reader :ok, :message, :data

  def initialize(ok:, message:, data:)
    @ok = ok
    @message = message
    @data = data
  end

  def format
    ok ? success_response : bad_response
  end

  private

  def success_response
    {
      ok: true,
      data: data,
      message: message
    }
  end

  def bad_response
    {
      ok: false,
      data: nil,
      error: message,
    }
  end
end
