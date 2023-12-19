<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->

<a name="readme-top"></a>

<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/achoudhury4927/foundry-adil-upgradeable-contract">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Upgradeable Contract</h3>

  <p align="center">
    This is an implementation of a UUPS upgradeable contract. 
    <br />
    <a href="https://github.com/achoudhury4927/foundry-adil-upgradeable-contract"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/achoudhury4927/foundry-adil-upgradeable-contract/issues">Report Bug</a>
    ·
    <a href="https://github.com/achoudhury4927/foundry-adil-upgradeable-contract/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

- Solidity
- Foundry

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

You will need foundry to install the packages and run tests. You can find out more here: https://book.getfoundry.sh/getting-started/installation. Make to run the makefile commands.

- foundry

  ```sh
  curl -L https://foundry.paradigm.xyz | bash
  ```

- foundryup

  ```sh
  foundryup
  ```

- make
  ```sh
  sudo apt-get install make
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/achoudhury4927/foundry-adil-erc721.git
   ```
2. Run Anvil
   ```sh
   make anvil
   ```
3. Deploy contracts on local Anvil chain
   ```sh
   make deploy
   ```
4. Run tests
   ```sh
   make test
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

- [x] Contracts
  - [x] Tests
  - [x] Deployment Scripts
- [x] Deployed to Base Goerli
  - [x] Proxy Deployment: https://goerli.basescan.org/address/0xec56faac5be0b467f9aa872b862dc6155cdea8fd
  - [x] CardV1 Deployment: https://goerli.basescan.org/address/0xee3ec67579ec9a47389dee7fb160aa3400b0a606
  - [x] CardV2 Deployment: https://goerli.basescan.org/address/0x1d93f3e28da20bbf8a29ff78cedbc6adbf104068
- [x] Upgrade onchain transaction: https://goerli.basescan.org/tx/0xc8153149aa09ee02bef2e1fbf17aee6effe9114d512c76cbcf5e5602394f34ca

See the [open issues](https://github.com/achoudhury4927/foundry-adil-upgradeable-contract/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Adil Choudhury - [@0xAdilc](https://twitter.com/0xAdilc) - contact@adilc.me

Project Link: [https://github.com/achoudhury4927/foundry-adil-upgradeable-contract](https://github.com/achoudhury4927/foundry-adil-upgradeable-contract)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/achoudhury4927/foundry-adil-upgradeable-contract.svg?style=for-the-badge
[contributors-url]: https://github.com/achoudhury4927/foundry-adil-upgradeable-contract/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/achoudhury4927/foundry-adil-upgradeable-contract.svg?style=for-the-badge
[forks-url]: https://github.com/achoudhury4927/foundry-adil-upgradeable-contract/network/members
[stars-shield]: https://img.shields.io/github/stars/achoudhury4927/foundry-adil-upgradeable-contract.svg?style=for-the-badge
[stars-url]: https://github.com/achoudhury4927/foundry-adil-upgradeable-contract/stargazers
[issues-shield]: https://img.shields.io/github/issues/achoudhury4927/foundry-adil-upgradeable-contract.svg?style=for-the-badge
[issues-url]: https://github.com/achoudhury4927/foundry-adil-upgradeable-contract/issues
[license-shield]: https://img.shields.io/github/license/achoudhury4927/foundry-adil-upgradeable-contract.svg?style=for-the-badge
[license-url]: https://github.com/achoudhury4927/foundry-adil-upgradeable-contract/blob/master/LICENSE.txt
