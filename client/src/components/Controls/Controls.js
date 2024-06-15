import React from 'react';

const Controls = ({
                      selectedRegion,
                      setSelectedRegion,
                      selectedPaymentMethod,
                      setSelectedPaymentMethod,
                      unitPriceOrder,
                      setUnitPriceOrder,
                      totalRevenueOrder,
                      setTotalRevenueOrder,
                      toggleTable,
                      showTable,
                      regions,
                      paymentMethods,
                      setPaginationEnabled,
                      paginationEnabled
                  }) => {

    const handleCheckboxChange = () => {
        setPaginationEnabled(!paginationEnabled);
    };

    return (
        <div className="controls">
            <label>
                Выбор региона
                <select value={selectedRegion} onChange={e => setSelectedRegion(e.target.value)}>
                    <option value="Все регионы">Все регионы</option>
                    {regions.map(region => (
                        <option key={region} value={region}>{region}</option>
                    ))}
                </select>
            </label>
            <br /><br />
            <label>
                Выбор метода оплаты
                <select value={selectedPaymentMethod} onChange={e => setSelectedPaymentMethod(e.target.value)}>
                    <option value="Все методы оплаты">Все методы оплаты</option>
                    {paymentMethods.map(method => (
                        <option key={method} value={method}>{method}</option>
                    ))}
                </select>
            </label>
            <br /><br />
            <label>
                Сортировка по цене за единицу
                <select value={unitPriceOrder} onChange={e => setUnitPriceOrder(e.target.value)}>
                    <option value="none">Без сортировки</option>
                    <option value="ascending">По возрастанию</option>
                    <option value="descending">По убыванию</option>
                </select>
            </label>
            <br /><br />
            <label>
                Сортировка по общей выручке
                <select value={totalRevenueOrder} onChange={e => setTotalRevenueOrder(e.target.value)}>
                    <option value="none">Без сортировки</option>
                    <option value="ascending">По возрастанию</option>
                    <option value="descending">По убыванию</option>
                </select>
            </label>
            <br /><br />
            <label>
                Пагинация
                <input
                    type="checkbox"
                    checked={paginationEnabled}
                    onChange={handleCheckboxChange}
                />
            </label>
            <br /><br />
            <input type="button" value={showTable ? "Скрыть таблицу" : "Показать таблицу"} onClick={toggleTable} />
        </div>
    );
};

export default Controls;
