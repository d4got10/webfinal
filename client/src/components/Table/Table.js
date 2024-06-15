import React from 'react';
import TableHead from './TableHead/TableHead';
import TableBody from './TableBody/TableBody';
import './Table.css';

const Table = ({ data, currentPage, itemsPerPage, paginate, paginationEnabled }) => {
    const showPagination = paginationEnabled && data.length > 0;

    if (!showPagination) {
        return (
            <div className="table-container">
                {data.length > 0 ? (
                    <table>
                        <TableHead data={data} />
                        <TableBody data={data} />
                    </table>
                ) : (
                    <div className="no-data-message">
                        <p>Нет данных, удовлетворяющих фильтрам</p>
                    </div>
                )}
            </div>
        );
    }

    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = Math.min(startIndex + itemsPerPage, data.length);
    const currentPageData = data.slice(startIndex, endIndex);

    const pageNumbers = [];
    for (let i = 1; i <= Math.ceil(data.length / itemsPerPage); i++) {
        pageNumbers.push(i);
    }

    let displayPages;
    if (pageNumbers.length <= 10) {
        displayPages = pageNumbers;
    } else {
        const middleIndex = Math.floor(10 / 2);
        let startPage = currentPage - middleIndex;
        let endPage = currentPage + middleIndex;

        if (startPage <= 0) {
            startPage = 1;
            endPage = 10;
        } else if (endPage > pageNumbers.length) {
            startPage = pageNumbers.length - 9;
            endPage = pageNumbers.length;
        }

        displayPages = pageNumbers.slice(startPage - 1, endPage);
    }

    return (
        <div className="table-container">
            {data.length > 0 ? (
                <>
                    <table>
                        <TableHead data={currentPageData} />
                        <TableBody data={currentPageData} />
                    </table>
                    {paginationEnabled && (
                        <div className="pagination">
                            <button onClick={() => paginate(1)}>{'<<'}</button>
                            {displayPages.map((number, index) => (
                                <button
                                    key={index}
                                    onClick={() => paginate(number)}
                                    className={currentPage === number ? 'active' : ''}
                                >
                                    {number}
                                </button>
                            ))}
                            <button onClick={() => paginate(pageNumbers.length)}>{'>>'}</button>
                        </div>
                    )}
                </>
            ) : (
                <div className="no-data-message">
                    <p>Нет данных, удовлетворяющих фильтрам</p>
                </div>
            )}
        </div>
    );
};

export default Table;
