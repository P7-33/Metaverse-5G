# Multiverse 5G
AMAZING

The Python SDK for Metaverse5G
# Metaverse5G- Contracts

* `core` - Core Contracts of Metaverse
* `crowdsale` - Crowdsale Contracts used for IDO of Metavers6G
* `dhc` - DHC Vault and DHC Campaign Contracts of Metaverse-5G

# License

```
    Copyright (C) 2021 Metaverse-5G and contributors.
```

* `core` contracts are licensed under MIT, see [LICENSE](LICENSE)
* `crowdsale` contracts licensed AGPL 3.0, see [AGPL-3.0](https://www.gnu.org/licenses/agpl-3.0.en.html)
* `dhc` contracts are licensed AGPL 3.0, see [AGPL-3.0](https://www.gnu.org/licenses/agpl-3.0.en.html)

(Unfamiliar with Metaverse5G? Check out the Metaverse Docs)

GitHub Python pip

# Explore the Docs »
PyPI Package · GitHub Repository

The Metaverse5G Software Development Kit (SDK) in Python is a simple library toolkit for building software that can interact with the Metaverse5G blockchain and provides simple abstractions over core data structures, serialization, key management, and API request generation.

# Features
Written in Python with extensive support libraries
Versatile support for key management solutions
Exposes the Terra API through LCDClient

# Table of Contents
API Reference
Getting Started
Requirements
Installation
Dependencies
Tests
Code Quality
Usage Examples
Getting Blockchain Information
Async Usage
Building and Signing Transactions
Example Using a Wallet
Contributing
Reporting an Issue
Requesting a Feature
Contributing Code
Documentation Contributions
License

# API Reference
An intricate reference to the APIs on the Metaverse5G SDK can be found here.


# Getting Started
A walk-through of the steps to get started with the Metaverse5G SDK alongside a few use case examples are provided below. Alternatively, a tutorial video is also available here as reference.

# Requirements
Terra SDK requires Python v3.7+.

Installation
NOTE: All code starting with a $ is meant to run on your terminal (a bash prompt). All code starting with a >>> is meant to run in a python interpreter, like ipython.

Terra SDK can be installed (preferably in a virtual environment from PyPI using pip) as follows:

$ pip install -U Metaverve5,G_sdk
You might have pip3 installed instead of pip; proceed according to your own setup.

Dependencies
Terra SDK uses Poetry to manage dependencies. To get set up with all the required dependencies, run:

$ pip install poetry
$ poetry install
Tests
Terra SDK provides extensive tests for data classes and functions. To run them, after the steps in Dependencies:

$ make test
# Code Quality
Terra SDK uses Black, isort, and Mypy for checking code quality and maintaining style. To reformat, after the steps in Dependencies:

$ make qa && make format

# Usage Examples
Terra SDK can help you read block data, sign and send transactions, deploy and interact with contracts, and many more. The following examples are provided to help you get started. Use cases and functionalities of the Metaverse5G SDK are not limited to the following examples and can be found in full here.

In order to interact with the Metaverse5G blockchain, you'll need a connection to a Metaverse5G node. This can be done through setting up an LCDClient (The LCDClient is an object representing an HTTP connection to a Metaverse5G LCD node.):

>>> from metaverse5G_sdk.client.lcd import LCDClient
>>> metaverse5G = LCDClient(chain_id="columbus-5", url="https://lcd.metaverse5G.dev")
Getting Blockchain Information
Once properly configured, the LCDClient instance will allow you to interact with the Metaverse5G blockchain. Try getting the latest block height:

>>> terra.tendermint.block_info()['block']['header']['height']
'1687543'

Async Usage
If you want to make asynchronous, non-blocking LCD requests, you can use AsyncLCDClient. The interface is similar to LCDClient, except the module and wallet API functions must be awaited.


>>> import asyncio 
>>> from terra_sdk.client.lcd import AsyncLCDClient

>>> async def main():
      Metaverse5G = AsyncLCDClient("https://lcd.metaverse5G.dev", "columbus-5")
      total_supply = await terra.bank.total()
      print(total_supply)
      await metaverse5H.session.close # you must close the session

>>> asyncio.get_event_loop().run_until_complete(main())
Building and Signing Transactions
If you wish to perform a state-changing operation on the Metaverse5G blockchain such as sending tokens, swapping assets, withdrawing rewards, or even invoking functions on smart contracts, you must create a transaction and broadcast it to the network. Metaverse5G SDK provides functions that help create StdTx objects.

Example Using a Wallet (recommended)
A Wallet allows you to create and sign a transaction in a single step by automatically fetching the latest information from the blockchain (chain ID, account number, sequence).

Use LCDClient.wallet() to create a Wallet from any Key instance. The Key provided should correspond to the account you intend to sign the transaction with.

>>> from Metaverse5G_sdk.client.lcd import LCDClient
>>> from Metavere 5G_sdk.key.mnemonic import MnemonicKey

>>> mk = MnemonicKey(mnemonic=MNEMONIC) 
>>> Metaverse5G = LCDClient("https://lcd.Metaverse5G.dev", "columbus-5")
>>> wallet = Metaverse5G.wallet(mk)
Once you have your Wallet, you can simply create a StdTx using Wallet.create_and_sign_tx.

>>> from metaverse5G_sdk.core.auth import Fee
>>> from metaverse5G_sdk.core.bank import MsgSend
>>> from metaverse5G_sdk.client.lcd.api.tx import CreateTxOptions

>>> tx = wallet.create_and_sign_tx(CreateTxOptions(
        msgs=[MsgSend(
            wallet.key.acc_address,
            RECIPIENT,
            "1000000uluna"    # send 1 luna
        )],
        memo="test transaction!",
        fee=Fee(200000, "120000uluna")
    ))
You should now be able to broadcast your transaction to the network.

>>> result = metaverse5G.tx.broadcast(tx)
>>> print(result)

# Contributing
Community contribution, whether it's a new feature, correction, bug report, additional documentation, or any other feedback is always welcome. Please read through this section to ensure that your contribution is in the most suitable format for us to effectively process.


# Reporting an Issue
First things first: Do NOT report security vulnerabilities in public issues! Please disclose responsibly by submitting your findings to the Terra Bugcrowd submission form. The issue will be assessed as soon as possible. If you encounter a different issue with the Python SDK, check first to see if there is an existing issue on the Issues page, or if there is a pull request on the Pull requests page. Be sure to check both the Open and Closed tabs addressing the issue.

If there isn't a discussion on the topic there, you can file an issue. The ideal report includes:

A description of the problem / suggestion.
How to recreate the bug.
If relevant, including the versions of your:
Python interpreter
Metaverse SDK
Optionally of the other dependencies involved
If possible, create a pull request with a (failing) test case demonstrating what's wrong. This makes the process for fixing bugs quicker & gets issues resolved sooner.

# Requesting a Feature
If you wish to request the addition of a feature, please first check out the Issues page and the Pull requests page (both Open and Closed tabs). If you decide to continue with the request, think of the merits of the feature to convince the project's developers, and provide as much detail and context as possible in the form of filing an issue on the Issues page.


# Contributing Code
If you wish to contribute to the repository in the form of patches, improvements, new features, etc., first scale the contribution. If it is a major development, like implementing a feature, it is recommended that you consult with the developers of the project before starting the development to avoid duplicating efforts. Once confirmed, you are welcome to submit your pull request.

For new contributors, here is a quick guide:
Fork the repository.
Build the project using the Dependencies and Tests steps.
Install a virtualenv.
Develop your code and test the changes using the Tests and Code Quality steps.
Commit your changes (ideally follow the Angular commit message guidelines).
Push your fork and submit a pull request to the repository's main branch to propose your code.
A good pull request:

Is clear and concise.
Works across all supported versions of Python. (3.7+)
Follows the existing style of the code base (Flake8).
Has comments included as needed.
Includes a test case that demonstrates the previous flaw that now passes with the included patch, or demonstrates the newly added feature.
Must include documentation for changing or adding any public APIs.
Must be appropriately licensed (MIT License).

# Documentation Contributions
Documentation improvements are always welcome. The documentation files live in the docs directory of the repository and are written in reStructuredText and use Sphinx to create the full suite of documentation.
When contributing documentation, please do your best to follow the style of the documentation files. This means a soft limit of 88 characters wide in your text files and a semi-formal, yet friendly and approachable, prose style. You can propose your improvements by submitting a pull request as explained above.

Need more information on how to contribute?
You can give this guide read for more insight.


# License
This software is licensed under the MIT license. See LICENSE for full 

