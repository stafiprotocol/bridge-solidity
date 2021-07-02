# bridge-solidity

Fork from [ChainBridge-Solidity](https://github.com/ChainSafe/chainbridge-solidity).

Bridge uses Solidity smart contracts to enable transfers to and from EVM compatible chains. These contracts consist of a core bridge contract (Bridge.sol) and a set of handler contracts (ERC20Handler.sol, and GenericHandler.sol). The bridge contract is responsible for initiating, voting on, and executing proposed transfers. The handlers are used by the bridge contract to interact with other existing contracts.

Usage
-----
### Install requirements with yarn:

```bash
yarn
```

### Compile

```bash
yarn hardhat compile
```

### deploy to bsc

Preparation:
- create `secrets.json` file if it does not exist and set related fields. refer to secrets.json.example.
- modify src/deploy/deploy.js to deploy the contracts.
- use this command to deploy to the bsc-testnet, replace the argument network to deploy to other networks.

```bash
npx hardhat run --network bsctestnet src/deploy/deploy.js
```

- verif(needed). create `arguments.js` file, refer to `arguments.js.example`, put your contract constructor-args into the module.exports.
argument can be removed if your contract constructor has no arguments at all.

```bash
npx hardhat  verify --constructor-args arguments.js --network bsctestnet DEPLOYED_CONTRACT_ADDRESS
```


