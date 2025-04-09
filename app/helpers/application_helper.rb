module ApplicationHelper
  def get_color_from(string=nil)
    string ||= SecureRandom.hex[0..5]
    "#"+Digest::MD5.hexdigest(string)[0..5]
  end
end
