class Box < Account
  def self.default_cashbox
    all.first
  end
end
