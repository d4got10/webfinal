export const getSortFunction = (column, order, compareFunction, innerSortFunction) => {
    if (order === 'none') return null;
    return (a, b) => {
        const result = compareFunction(a[column], b[column]);
        if(result === 0){
            return innerSortFunction(a, b);
        }
        return order === 'asc' ? result : -result;
    };
};
