npx truffle migate --reset

npx truffle console
stechToken = await StechToken.deployed() // deployed stechToken
accounts = await web3.eth.getAccounts() // call account to ganache
balance = await stechToken.balanceOf(accounts[1]) 
balance.toString()
formattedBalance = web3.utils.fromWei(balance)
npx truffle exec scripts/issue-token.js // Create Token



- Trang web sử dụng framework Truffle kết hợp với web3
để tạo test environment, viết test cho contract và kết hợp với ganache để tạo ra 1 lượng Stech coin 
có thể chuyển lên ví metamark testnet
- Trang web gồm tạo ra coin, chuyển coin,... và một số tính năng như trong file TokenFarm
- Sử dụng Ganache để tạo ra 10 account clone với mỗi account có 100 ETH dùng làm chi phí 
lúc chuyển coin, với ví số 1 là ví gốc nên chúng ta sẽ chuyển vào ví thứ 2 trong bài test.
- Sử dụng Chai 


