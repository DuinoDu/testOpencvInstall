use std::env;
use opencv::{
    highgui,
    imgcodecs,
    Result,

};


fn main() -> Result<()> {
    let args : Vec<String> = env::args().collect();
    assert_eq!(args.len(), 2);

    let image = imgcodecs::imread(&args[1], 1)?;
    highgui::named_window("opencv in rust", 0)?;
    highgui::imshow("opencv in rust", &image)?;
    highgui::wait_key(10000)?;
    Ok(())
}
