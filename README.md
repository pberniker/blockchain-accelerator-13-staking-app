## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Commands

### Init

```shell
$ forge init {name}
```

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

```shell
$ forge test --match-test {name}
```

```shell
$ forge test -vvvv
```

```shell
$ forge coverage
```

### Install packages

```shell
$ forge instal {name}
```

```shell
$ forge install openzeppelin/openzeppelin-contracts
```

