class AiAnalysisLog < ApplicationRecord

  def apipost

    uri = URI.parse("https://：http://example.com/image_path/")
    http = Net::HTTP.new(uri.host, uri.port)

    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    req = Net::HTTP::Post.new(uri.path)
    req.set_form_data({'name' => 'hoge', 'content' => 'hogehoge'})

    res = http.request(req)

  end

end
