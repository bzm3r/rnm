use xshell::{cmd, Shell};
fn main() -> anyhow::Result<()> {
    let name = "world";
    let sh = Shell::new()?;
    cmd!(sh, "echo \"hello {name}!\"").run()?;
    Ok(())
}
