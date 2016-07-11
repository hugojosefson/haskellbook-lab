
const find = f => target => function findTarget(low = -1, high = 1) {
    console.log(JSON.stringify({target, low, high, range: Math.abs(high - low)}));

    const middle = (low + high) / 2;

    const lowP = f(low);
    const middleP = f(middle);
    const highP = f(high);

    if (lowP === target) {
        return low;
    }

    if (middleP === target) {
        return middle;
    }

    if (highP === target) {
        return high;
    }

    if (lowP > target && low < 0) {
        return findTarget(low * 10, high);
    }

    if (highP < target && high > 0) {
        return findTarget(low, high * 10);
    }

    if (middleP > target && highP > middleP) {
        return findTarget(low, middle);
    }

    if (middleP < target && highP > middleP) {
        return findTarget(middle, high);
    }

    if (middleP < target && lowP > middleP) {
        return findTarget(low, middle);
    }

    if (middleP > target && lowP > middleP) {
        return findTarget(middle, high);
    }
};

const foo = x => {
    const y = x * 2;
    const z = x * x;
    return -2 * y * z;
};

module.exports = find;
module.exports.foo = foo;
