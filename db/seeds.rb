# Create customers
customers = FactoryBot.create_list(:customer, 3)

# Create teas
teas = FactoryBot.create_list(:tea, 4)

# Customer one's subscription with teas 1, 2, and 3
subscription1 = FactoryBot.create(:subscription, customer: customers[0], tea: teas[0])
subscription2 = FactoryBot.create(:subscription, customer: customers[0], tea: teas[1])
subscription3 = FactoryBot.create(:subscription, customer: customers[0], tea: teas[2])

# Customer two's subscription with teas 2, 3, and 4
subscription4 = FactoryBot.create(:subscription, customer: customers[1], tea: teas[1])
subscription5 = FactoryBot.create(:subscription, customer: customers[1], tea: teas[2])
subscription6 = FactoryBot.create(:subscription, customer: customers[1], tea: teas[3])

# Customer three's subscription with teas 1, 2, and 4
subscription7 = FactoryBot.create(:subscription, customer: customers[2], tea: teas[0])
subscription8 = FactoryBot.create(:subscription, customer: customers[2], tea: teas[1])
subscription9 = FactoryBot.create(:subscription, customer: customers[2], tea: teas[3])
