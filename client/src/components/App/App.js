import React, { useState, useEffect } from 'react';
import Table from '../Table/Table';
import TableSorter from '../TableSorter/TableSorter';
import TableFilter from '../TableFilter/TableFilter';
import Graph from '../Graph/Graph';
import { getSortFunction } from '../../utils/GetSortFunction';
import { fetchServerData } from '../../api/Api';
import './App.css';

const App = () => {
  const [showTable, setShowTable] = useState(false);
  const [filteredData, setFilteredData] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [itemsPerPage] = useState(10);
  const [paginationEnabled, setPaginationEnabled] = useState(true);
  const [serverData, setServerData] = useState([]);
  const [sortCriteria, setSortCriteria] = useState([]);
  const [filters, setFilters] = useState([]);
  const [accordionOpen, setAccordionOpen] = useState(false);

  let columns = [];
  if (serverData.length > 0) {
    columns = Object.keys(serverData[0]);
  }

  const handleSortChange = (newCriteria) => {
    setSortCriteria(newCriteria);
  };

  const handleFilterChange = (newFilters) => {
    setFilters(newFilters);
  };

  useEffect(() => {
    const fetchData = async () => {
      const data = await fetchServerData();
      setServerData(data);
      setFilteredData(data);
    };

    fetchData();
  }, []);

  useEffect(() => {
    applyFilter();
    setCurrentPage(1);
  }, [filters, sortCriteria, paginationEnabled, serverData]);

  const toggleTable = () => {
    setShowTable(!showTable);
  };

  const applyFilter = () => {
    let data = [...serverData];

    filters.forEach(filter => {
      data = data.filter(d => d[filter.column] === filter.value);
    });

    const compareFunction = (a, b) => {
      if (typeof a === 'number' && typeof b === 'number') return a - b;
      if (typeof a === 'string' && typeof b === 'string') return a.localeCompare(b);
      return 0;
    };

    let sortFunction = (a, b) => 0;

    for(let i = sortCriteria.length - 1; i >= 0; i--) {
      const criteria = sortCriteria[i];
      sortFunction = getSortFunction(criteria.column, criteria.order, compareFunction, sortFunction);
    }

    if(sortCriteria.length > 0){
      data.sort(sortFunction);
    }

    setFilteredData(data);
  };

  const paginate = pageNumber => setCurrentPage(pageNumber);

  const toggleAccordion = () => {
    setAccordionOpen(!accordionOpen);
  };

  return (
      <div className="app">
        <h3>Список транзакций</h3>
        <div className="filter-sort-section">
          <div className="accordion-header" onClick={toggleAccordion}>
            <h4>Сортировка и фильтрация</h4>
            <span className={`arrow ${accordionOpen ? 'arrow-down' : 'arrow-right'}`}>&#9660;</span>
          </div>
          {accordionOpen && (
              <div className="accordion-content">
                <div className="table-sorter">
                  <h4>Сортировка</h4>
                  <TableSorter columns={columns} onSortChange={handleSortChange} />
                </div>
                <div className="table-filter">
                  <h4>Фильтрация</h4>
                  <TableFilter columns={columns} data={serverData} onFilterChange={handleFilterChange} />
                </div>
              </div>
          )}
        </div>
        <div style={{ marginTop: '20px' }}>
          <button onClick={toggleTable}>
            {showTable ? 'Скрыть таблицу' : 'Показать таблицу'}
          </button>
        </div>
        <div style={{ marginTop: '20px' }}>
          <label className="label-container">
            <input
                type="checkbox"
                checked={paginationEnabled}
                onChange={() => setPaginationEnabled(!paginationEnabled)}
            />
            Пагинация
          </label>
        </div>
        <Graph data={filteredData} />
        {showTable && (paginationEnabled ? (
            <Table
                data={filteredData}
                currentPage={currentPage}
                itemsPerPage={itemsPerPage}
                paginate={paginate}
                paginationEnabled={paginationEnabled}
            />
        ) : (
            <Table
                data={filteredData}
                paginationEnabled={false}
            />
        ))}
      </div>
  );
};

export default App;
