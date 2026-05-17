#![no_std]
use soroban_sdk::{contract, contractimpl, Env};

#[contract]
pub struct GroupEscrow;

#[contractimpl]
impl GroupEscrow {
    pub fn hello(env: Env) -> &'static str {
        let _ = env;
        "stellar-split"
    }
}

#[cfg(test)]
mod test {
    use super::*;
    use soroban_sdk::Env;

    #[test]
    fn test_hello() {
        let env = Env::default();
        let contract_id = env.register(GroupEscrow, ());
        let client = GroupEscrowClient::new(&env, &contract_id);
        assert_eq!(client.hello(), "stellar-split");
    }
}
