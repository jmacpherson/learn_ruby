class Changer
  QUARTER = 25
  DIME = 10
  NICKEL = 5
  PENNY = 1

  def self.make_change(amount)
    change = []
    (amount / QUARTER).times { change << QUARTER }
    amount -= (amount / QUARTER) * QUARTER
    (amount / DIME).times { change << DIME }
    amount -= (amount / DIME) * DIME
    (amount / NICKEL).times { change << NICKEL }
    amount -= (amount / NICKEL) * NICKEL
    (amount / PENNY).times { change << PENNY }
    amount -= (amount / PENNY) * PENNY
    change
  end
end