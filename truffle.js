module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*" // Match any network id
    },
    live: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "1",
      from: "0x0093c7A8c37D9d3f483D92027C1A8a30f055AD96"
    }
  }
};
