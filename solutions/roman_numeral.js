function romanNumeral(string) {
  const romans = {
    I: 1,
    IV: 4,
    V: 5,
    IX: 9,
    X: 10,
    XL: 40,
    L: 50,
    XC: 90,
    C: 100,
    CD: 400,
    D: 500,
    CM: 900,
    M: 1000
  };
  let total = 0;
  let idx = 0;

  while (idx < string.length) {
    const twoChar = string[idx] + (string[idx + 1] || '');

    if (romans[twoChar] !== undefined) {
      total += romans[twoChar];
      idx += 2;
    } else {
      total += romans[string[idx]];
      ++idx;
    }
  }

  return total;
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 1");
  console.log(romanNumeral('I'));

  console.log("");

  console.log("Expecting: 9");
  console.log(romanNumeral('IX'));

  console.log("");

  console.log("Expecting: 402");
  console.log(romanNumeral('CDII'));

  console.log("");

  console.log("Expecting: 3");
  console.log(romanNumeral('III'));

  console.log("");

  console.log("Expecting: 1900");
  console.log(romanNumeral('MCM'));

  console.log("");

  console.log("Expecting: 1999");
  console.log(romanNumeral('MCMXCIX'));

  console.log("");

  console.log("Expecting: 44");
  console.log(romanNumeral('XLIV'));

  console.log("");

  console.log("Expecting: 223");
  console.log(romanNumeral('CCXXIII'));

  console.log("");

  console.log("Expecting: 3848");
  console.log(romanNumeral('MMMDCCCXLVIII'));
}

module.exports = romanNumeral;

// Please add your pseudocode to this file
// And a written explanation of your solution
