ActiveSupport::Notifications.subscribe "appointment" do |name,starting,finish,id,payload|
	n=Notification.new
	n.user_id=payload[:user_id]
	n.notification=payload[:notification]
	n.links=payload[:links]
	n.save
end
