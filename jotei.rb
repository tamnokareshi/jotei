# -*- coding: utf-8 -*-
miquire :mui, 'skin'
miquire :addon, 'search'
Module.new do

  def self.boot
    plugin = Plugin::create(:jotei_search)
    main = Gtk::TimeLine.new()
    service = nil
  end

end
