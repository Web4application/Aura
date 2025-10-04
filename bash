sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"
dfx --version
dfx new hello --type motoko --frontend react
cd hello
dfx deploy --playground
export declare enum SublevelStates 
