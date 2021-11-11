import { HardhatUserConfig } from "hardhat/config";

const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.10",
    settings: {
      evmVersion: "london",
      modelChecker: {
        engine: "all",
        showUnproved: true,
      },
    },
  },
};

export default config;
