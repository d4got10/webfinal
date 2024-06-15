export const fetchServerData = async () => {
    try {
        const response = await fetch('http://localhost:80/Transactions/GetTransactions');
        if (!response.ok) {
            throw new Error('Network response was not ok ' + response.statusText);
        }
        let data = await response.json()
        return data.transactions;
    } catch (error) {
        console.error('Error fetching data:', error);
        return [];
    }
};
