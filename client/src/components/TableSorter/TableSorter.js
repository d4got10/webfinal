import React, { useState } from 'react';

const TableSorter = ({ columns, onSortChange }) => {
    const [sortCriteria, setSortCriteria] = useState([]);

    const handleAddCriteria = () => {
        setSortCriteria([...sortCriteria, { column: columns[0], order: 'asc' }]);
    };

    const handleRemoveCriteria = (index) => {
        const newCriteria = [...sortCriteria];
        newCriteria.splice(index, 1);
        setSortCriteria(newCriteria);
        onSortChange(newCriteria);
    };

    const handleColumnChange = (index, newColumn) => {
        const newCriteria = [...sortCriteria];
        newCriteria[index].column = newColumn;
        setSortCriteria(newCriteria);
        onSortChange(newCriteria);
    };

    const handleOrderChange = (index, newOrder) => {
        const newCriteria = [...sortCriteria];
        newCriteria[index].order = newOrder;
        setSortCriteria(newCriteria);
        onSortChange(newCriteria);
    };

    return (
        <div>
            <button onClick={handleAddCriteria}>Добавить критерий сортировки</button>
            {sortCriteria.map((criteria, index) => (
                <div key={index} style={{ marginTop: '10px' }}>
                    <select
                        value={criteria.column}
                        onChange={(e) => handleColumnChange(index, e.target.value)}
                    >
                        {columns.map((col) => (
                            <option key={col} value={col}>
                                {col}
                            </option>
                        ))}
                    </select>
                    <select
                        value={criteria.order}
                        onChange={(e) => handleOrderChange(index, e.target.value)}
                    >
                        <option value="asc">По возрастанию</option>
                        <option value="desc">По убыванию</option>
                    </select>
                    <button onClick={() => handleRemoveCriteria(index)}>Удалить</button>
                </div>
            ))}
        </div>
    );
};

export default TableSorter;