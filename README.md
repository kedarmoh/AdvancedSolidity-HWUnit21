### How to Purchase a MTBCoin   
* Make sure you are connected to local network in Metamask 
* Please run Ganache and connect to your workspace.

First we compile both the PupperCoin.sol and CrowdSale.sol contracts
### To deploy the contracts, 
* select PupperCoinSaleDeployer in the contract section of the Deploy tab
* Give the name, symbol and goal. For wallet address, select one account address from metamask
* Press Deploy and then confirm in metamask
* CHeck the messages to see if the contract was successfully deployed

# Note: When deploying make sure that the amount in the value colum is set to zero
To enable the PupperCoinSale and PupperCoin contracts do the following
* Under the deployed PupperCoinSaleDeployer, click the 'pupper_sale_address' and 'token_address' function buttons
* Select the address under the 'pupper_sale_address' and go above to the contract box and select the PupperCoinSale contract, copy the address next to the 'At Address' button and click the 'At Address' button. This will load the PupperCoinSaleContract.
* Do the same as above step for the PupperCoin by copying the address next to the 'token_address' function button.

Now we are ready to buy the tokens.
 ###  Buying Tokens
 * In the value field, input the # of ethers to use to buy  tokens ( the rate is 1 so one ether buys one token)
 * Expand the deployed contact for PupperCoinSale. 
 * Against the buyTokens button( red in color), set the address of the account whose funds will be used to buy tokens. Click the button.
 * Metmask will open automatically and show the ether amount and ask for confirmation. Please click confirm.
 * TO verify that the transaction was successful, expand the PupperCoin contract and provide the address used in the 'buyTOkens' above and click on getBalance. This shold show the amount of tokens we bought( This amount will be in wei).

 ### Testing sale cap:
 * Buy a few tokens and when you exceed the cap, the transaction will fail and you will get an error as shown below in the screenshots section.

 ### Testing the crowd sale time expiration:
 * Set the closing time to now + 10 mins.
 * Buy tokens and ensure transaction is successful
 * Wait for 10 minutes
 * Try buying tokens again and you should get an error.


 ### Address of contracts deployed to Ropsten network.
 
 PuppercoinSaleDeployer address
 0xbbdf28C8bb4B56De7af0bB66b80664A7688f9380 

 PupperCoinSale address
 0x8D80d024e5CA0012F293E72756B9F0762bE59291

 Puppercoin address
 0x96C8B44c925536Ae2D7F40A177cD5b4e4046253a
 
 ### Screenshots of the testing and deployment of the Crowdsale

 ![SuccessfulTokenBuy-Metamask](/Screenshots/TOkenBuyingSucess-Metamaskscreenshot.PNG)
 
 ![DetailedLog-BuyTokenTransaction](/Screenshots/DetailedLogofBuyingToken.PNG)
 
 ![BalanceBeforeTransaction](/Screenshots/BalanceBeforeTransaction.PNG)
 
 ![Buying25Tokens](/Screenshots/Buying25Tokens.PNG)
 
 ![Metamask25TokenConfirm](/Screenshots/Metamask25TokenConfirm.PNG)
 
 ![Buying25TOken-TransactionSuccessful](/Screenshots/Buying25TOken-TransactionSuccessful.PNG)
 
 ![AccoutBalanceAfterbuying25tokens](/Screenshots/AccoutBalanceAfterbuying25tokens.PNG)
 
 ![MetamaskTransactionConfirmation25tokens](/Screenshots/MetamaskTransactionConfirmation25tokens.PNG)
 
 ![BalanceOfshows25tokensdeposited](/Screenshots/BalanceOfshows25tokensdeposited.PNG)
 
 ![TestingCapexceededError](/Screenshots/TestingCapexceededError.PNG)
 
 ![TimedOutSaleClosedError](/Screenshots/TimedOutSaleClosedError.PNG)
 
 ![DeployedtoRopstenNetwork](/Screenshots/DeployedtoRopstenNetwork.PNG)
 
 ![Transaction100weiOnRopstenNetwork](/Screenshots/Transaction100weiOnRopstenNetwork.PNG)
 
 ![EtherscanSuccess100WeiTransaction](/Screenshots/EtherscanSuccess100WeiTransaction.PNG)
 



