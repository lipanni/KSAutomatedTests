class ManageSoc

  include Foundry
  include DataFactory
  include DateFactory
  include StringFactory
  include Workflows

  attr_accessor :term_code

  def initialize(browser, opts={})
    @browser = browser

    defaults = {
        :term_code=>"20122"
    }
    options = defaults.merge(opts)
    set_options(options)
  end

  def search
    go_to_manage_soc
    on ManageSocPage do |page|
      page.term_code.set @term_code
      page.go
    end
  end

  def check_lock_button_exists
    on ManageSocPage do |page|
    raise "SOC is not in Open State" unless page.lock_button.exists? and page.lock_button.enabled?
    end
  end

  def lockSoc
    on ManageSocPage do |page|
      page.lock
      page.lock_confirm_delete
    end
  end

  def check_finaledit_button_exists
    on ManageSocPage do |page|
      raise "Error Locking SOC" unless page.finalEdit_button.exists?
    end
  end

end