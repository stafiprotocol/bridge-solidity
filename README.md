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
yarn compile
```

### verify

```bash
yarn hardhat verify --contract contracts/Bridge.sol:Bridge --network ethmainnet 0xc0609ea6e4345555276fac1636b5c27ebc17d817 --constructor-args arguments.js
```

```bash
yarn hardhat verify --contract contracts/handlers/ERC20Handler.sol:ERC20Handler --network ethmainnet 0x2b6b6fce3af32efe4430e446717bda72b95ebb9a 0xc0609ea6e4345555276fac1636b5c27ebc17d817
```


