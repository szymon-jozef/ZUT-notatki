pub fn gcd(mut a: usize, mut b: usize) -> usize {
    while b != 0 {
        (b, a) = (a % b, b);
    }
    a
}
