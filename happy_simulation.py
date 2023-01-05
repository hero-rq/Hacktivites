import random

eth_price = 100
ltc_price = 50
doge_price = 10
holding_period = 365

num_iterations = 1000

eth_results = []
ltc_results = []
doge_results = []

for i in range(num_iterations):
  eth_purchase_time = random.randint(0, holding_period)
  ltc_purchase_time = random.randint(0, holding_period)
  doge_purchase_time = random.randint(0, holding_period)
  
  eth_end_price = eth_price * (1 + random.uniform(-0.01, 0.01)) ** (holding_period - eth_purchase_time)
  ltc_end_price = ltc_price * (1 + random.uniform(-0.01, 0.01)) ** (holding_period - ltc_purchase_time)
  doge_end_price = doge_price * (1 + random.uniform(-0.01, 0.01)) ** (holding_period - doge_purchase_time)
  
  eth_gain = eth_end_price / eth_price
  ltc_gain = ltc_end_price / ltc_price
  doge_gain = doge_end_price / doge_price
  
  eth_results.append(eth_gain)
  ltc_results.append(ltc_gain)
  doge_results.append(doge_gain)

eth_average_gain = sum(eth_results) / len(eth_results)
ltc_average_gain = sum(ltc_results) / len(ltc_results)
doge_average_gain = sum(doge_results) / len(doge_results)

print("Ethereum average overall gain:", eth_average_gain)
print("Litecoin average overall gain:", ltc_average_gain)
print("Dogecoin average overall gain:", doge_average_gain)
