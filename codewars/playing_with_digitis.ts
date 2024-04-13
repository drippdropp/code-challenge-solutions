#!/usr/bin/env ts-node

function playingWithDigits(n: number, p: number) {
    function splitDigits(n: number): number[] {
        let digits: number[] = [];
        while (n > 0) {
            digits.push(n % 10);
            n = Math.floor(n/10);
        }
        return digits.reverse();
    }

    let digits = splitDigits(n);
    let sum = digits.reduce((acc, x, i) => acc + Math.pow(x, i + p), 0);

    let k = 1;
    while (n * k <= sum) {
        if (n * k == sum) return k;
        k++;
    }
    return -1;
}

console.log(playingWithDigits(695, 2));