import asyncio
from aura.drivers.file_driver import AuraFileDriver
from aura.core.driver_base import AuraIdentifier, AuraDomain


async def main():
    # init driver
    await AuraFileDriver.initialize("./aura_storage")

    # define an identifier for a simulation project
    ident = AuraIdentifier(
        module_name="sim_engine",
        uuid="project123",
        domain=AuraDomain.SIMULATION,
        primary_key=("run1",),
        identifiers=("param_set_A",),
        primary_key_len=1
    )

    driver = AuraFileDriver("sim_engine", "project123")

    # store data
    await driver.set(ident, {"growth_rate": 0.02, "years": 10})

    # read back
    val = await driver.get(ident)
    print("Retrieved:", val)

    # clear it
    await driver.clear(ident)

asyncio.run(main())
