# ask the user for loan amount, APR, and loan duration
# validate input
# perform calculations to find monthly payment
# output results

def prompt(message)
  puts("=> #{message}")
end

loop do
  prompt("Welcome to the Loan Calculator!")
  loan_amount = ''
  loop do
    prompt("Please enter the loan amount:")
    loan_amount = gets.chomp
    if loan_amount.to_f < 0
      prompt("Please enter a valid loan amount.")
    else
      break
    end
  end
  apr = ''
  loop do
    prompt("Please enter the annual percentage rate (ex. enter 0.05 for 5%):")
    apr = gets.chomp
    if apr.to_f < 0
      prompt("Please enter a valid APR.")
    else
      break
    end
  end
  loan_duration = ''
  loop do
    prompt("Please enter the loan duration in years:")
    loan_duration = gets.chomp
    if loan_duration.to_i < 0
      prompt("Please enter a valid loan duration.")
    else
      break
    end
  end

  monthly_apr = apr.to_f / 12
  months_duration = loan_duration.to_f * 12

  result = loan_amount.to_f *
           (monthly_apr /
           (1 - (1 + monthly_apr)**(months_duration * -1)))
  prompt("Your monthly payment is #{format'%.2f', result}")

  prompt("Do you want to calculate another payment? (Y to calculate again)")
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt("Thank you for using the Loan Calculator! Goodbye!")
