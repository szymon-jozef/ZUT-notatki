pub fn gcd_sub(mut a: usize, mut b: usize) -> usize {
    while a != b {
        if a > b { a -= b } else { b -= a }
    }
    a
}
