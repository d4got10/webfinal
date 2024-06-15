import React, { useState, useEffect } from 'react';
import Table from '../Table/Table';
import Controls from '../Controls/Controls';
import Graph from '../Graph/Graph';
import './App.css';
import { getSortFunction } from '../../utils/GetSortFunction';
import { fetchServerData } from '../../api/Api';

const App = () => {
  const [showTable, setShowTable] = useState(false);
  const [filteredData, setFilteredData] = useState([]);
  const [selectedRegion, setSelectedRegion] = useState("Все регионы");
  const [selectedPaymentMethod, setSelectedPaymentMethod] = useState("Все методы оплаты");
  const [unitPriceOrder, setUnitPriceOrder] = useState("none");
  const [totalRevenueOrder, setTotalRevenueOrder] = useState("none");
  const [currentPage, setCurrentPage] = useState(1);
  const [itemsPerPage] = useState(10);
  const [paginationEnabled, setPaginationEnabled] = useState(true);
  const [serverData, setServerData] = useState([]);

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
  }, [selectedRegion, selectedPaymentMethod, unitPriceOrder, totalRevenueOrder, paginationEnabled, serverData]);

  const toggleTable = () => {
    setShowTable(!showTable);
  };

  const applyFilter = () => {
    let data = [...serverData];

    if (selectedRegion !== "Все регионы") {
      data = data.filter(d => d.region === selectedRegion);
    }

    if (selectedPaymentMethod !== "Все методы оплаты") {
      data = data.filter(d => d.paymentMethod === selectedPaymentMethod);
    }
    console.log(serverData)
    let unitPriceSortFunction = getSortFunction("unitPrice", unitPriceOrder, (a, b) => a - b);
    let totalRevenueSortFunction = getSortFunction("totalRevenue", totalRevenueOrder, (a, b) => a - b);

    if (unitPriceOrder !== "none" && unitPriceSortFunction) {
      data.sort(unitPriceSortFunction);
    }

    if (totalRevenueOrder !== "none" && totalRevenueSortFunction) {
      data.sort(totalRevenueSortFunction);
    }

    setFilteredData(data);
  };

  const paginate = pageNumber => setCurrentPage(pageNumber);

  return (
      <div className="app">
        <h3>Список транзакций</h3>
        <Controls
            selectedRegion={selectedRegion}
            setSelectedRegion={setSelectedRegion}
            selectedPaymentMethod={selectedPaymentMethod}
            setSelectedPaymentMethod={setSelectedPaymentMethod}
            unitPriceOrder={unitPriceOrder}
            setUnitPriceOrder={setUnitPriceOrder}
            totalRevenueOrder={totalRevenueOrder}
            setTotalRevenueOrder={setTotalRevenueOrder}
            toggleTable={toggleTable}
            showTable={showTable}
            regions={[...new Set(serverData.map(item => item.region))]}
            paymentMethods={[...new Set(serverData.map(item => item.paymentMethod))]}
            setPaginationEnabled={setPaginationEnabled}
            paginationEnabled={paginationEnabled}
        />
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
