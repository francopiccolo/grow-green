export function areDiferents(iterable, secondIterable) {
    let diferents = false;
    if (iterable?.length != secondIterable?.length) return true;

    iterable.forEach((value, index) => {

        for (let key in value) {
            if (value[key] != secondIterable[index][key]) diferents = true;
        }

    })

    return diferents;
}