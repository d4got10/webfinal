import React, { useState, useEffect } from 'react';

const TableFilter = ({ columns, data, onFilterChange }) => {
    const [filters, setFilters] = useState([]);
    const [uniqueValues, setUniqueValues] = useState({});

    useEffect(() => {
        const values = {};
        columns.forEach((col) => {
            values[col] = [...new Set(data.map(item => item[col]))];
        });
        setUniqueValues(values);
    }, [columns, data]);

    const handleAddFilter = () => {
        setFilters([...filters, { column: columns[0], value: '' }]);
    };

    const handleRemoveFilter = (index) => {
        const newFilters = [...filters];
        newFilters.splice(index, 1);
        setFilters(newFilters);
        onFilterChange(newFilters);
    };

    const handleColumnChange = (index, newColumn) => {
        const newFilters = [...filters];
        newFilters[index].column = newColumn;
        newFilters[index].value = '';
        setFilters(newFilters);
        onFilterChange(newFilters);
    };

    const handleValueChange = (index, newValue) => {
        const newFilters = [...filters];
        newFilters[index].value = newValue;
        setFilters(newFilters);
        onFilterChange(newFilters);
    };

    return (
        <div>
            <button onClick={handleAddFilter}>Добавить фильтр</button>
            {filters.map((filter, index) => (
                <div key={index} style={{ marginTop: '10px' }}>
                    <select
                        value={filter.column}
                        onChange={(e) => handleColumnChange(index, e.target.value)}
                    >
                        {columns.map((col) => (
                            <option key={col} value={col}>
                                {col}
                            </option>
                        ))}
                    </select>
                    <select
                        value={filter.value}
                        onChange={(e) => handleValueChange(index, e.target.value)}
                    >
                        <option value="">Выберите значение</option>
                        {uniqueValues[filter.column] && uniqueValues[filter.column].map((val) => (
                            <option key={val} value={val}>
                                {val}
                            </option>
                        ))}
                    </select>
                    <button onClick={() => handleRemoveFilter(index)}>Удалить</button>
                </div>
            ))}
        </div>
    );
};

export default TableFilter;