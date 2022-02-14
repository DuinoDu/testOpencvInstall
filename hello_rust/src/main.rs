use opencv::{core, highgui, imgcodecs, imgproc, prelude::Mat, Result};
use std::env;

fn main() -> Result<()> {
    let args: Vec<String> = env::args().collect();
    assert_eq!(args.len(), 2);

    let image = imgcodecs::imread(&args[1], 1)?;

    if cfg!(target_arch = "x86_64") {
        highgui::named_window("opencv in rust", 0)?;
        highgui::imshow("opencv in rust", &image)?;
        highgui::wait_key(10000)?;
    } else if cfg!(target_arch = "aarch64") {
        let mut gray = Mat::default();
        imgproc::cvt_color(&image, &mut gray, imgproc::COLOR_BGR2GRAY, 0)?;
        let imwrite_flags = core::Vector::<i32>::new();
        imgcodecs::imwrite("output_gray.jpg", &gray, &imwrite_flags)?;
        println!("saved to output_gray.jpg");
    }
    Ok(())
}
