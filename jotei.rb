# -*- coding: utf-8 -*-
# miquire :mui, 'skin'
# miquire :addon, 'search'

Plugin.create(:jotei) do
  onboot do
    Plugin.call(:show_profile, Post.primary_service, :idname => 'yamashitam')
  end

  filter_command do |menu|
    menu[:jotei] = {
      :slug => :jotei,
      :name => '女帝かわいいよ女帝',
      :condition => lambda{|m| m.message.repliable?},
      :exec => lambda{|m| jotei},
      :visible => true,
      :role => :message
    }
    [menu]
  end

  def say
    w = ['女帝かわいいよ女帝',
         '女帝こわいよ女帝',
         '女帝さんかわいい']
    w[rand(w.size)]
  end

  def jotei
    Post.primary_service.update(:message => say)
  end
end
