function extractNumbers(n: number): void {
    let currentN = n;
    let result: number[] = [];
    while (currentN > 0) {
        const lastDigit = currentN % 10;
        result.push(lastDigit);
        currentN = Math.floor(currentN / 10);
    }
    console.log(result);
}

extractNumbers(12345);
