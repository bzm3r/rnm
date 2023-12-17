{ lib, rustPlatform }:
rustPlatform.buildRustPackage rec {
  pname = "rnm";
  version = "0.1.0";

  src = ./.;

  cargoLock = { lockFile = ./Cargo.lock; };

  buildType = "release";

  meta = with lib; {
    description = "Helper for creating a new Rust scripting project";
    homepage = "https://github.com/bzm3r/rnm";
    license = with licenses; [ asl20 mit ];
    maintainers = with maintainers; [ ];
    mainProgram = "rnm";
  };
}
