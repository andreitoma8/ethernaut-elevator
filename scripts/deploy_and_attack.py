from scripts.helpful_scripts import get_account
from brownie import Attacker


def main():
    account = get_account()
    attack = Attacker.deploy(
        "0x1D8a7e409EBE707c95d73EF7bC3c325aa7c32A47", {"from": account}
    )
    print("Attack contract deployed!")
    tx = attack.attack({"from": account})
    tx.wait(1)
    print("Attack began!")
