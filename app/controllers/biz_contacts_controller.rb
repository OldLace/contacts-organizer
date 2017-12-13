class BizContactsController < ApplicationController
  def index
    @biz_contacts = Biz_Contact.all
  end
end
