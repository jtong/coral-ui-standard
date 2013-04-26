class Mover < Thor
  include Thor::Actions
  source_root File.expand_path("../", __FILE__)
  def initialize(args=[], options={}, config={})
    super
    self.destination_root= ""
  end

  argument :ui_type
  desc "standard", "create cordova based android project"
  def ui
    if ui_type == "standard"
      template_path = File.expand_path('../', __FILE__)

      directory :binary, "./"

      template = ""
      js_files = File.join("lib/css","coral-ui-standard","**", "*.css")
      Dir.glob js_files do |file|
        template += haml_render "#{template_path}/templates/css_link_tag.haml", { :css_file => file}
      end
      inject_into_file "hamls/index.haml",template, :after => "/gen"
    end
  end
end

