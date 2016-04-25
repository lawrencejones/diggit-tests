module Utils
  class Socket
    def self.from_uri(uri)
      host, port = URI.parse(uri)
      new(host, port)
    end

    def initialize(host, port)
      @host = host
      @port = port
      puts("Created new socket on #{host}:#{port}")
    end
  end
end
