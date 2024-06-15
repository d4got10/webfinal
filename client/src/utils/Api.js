export const fetchServerData = async () => {
    try {
        const response = await fetch('YOUR_API_ENDPOINT_HERE');
        if (!response.ok) {
            throw new Error('Network response was not ok ' + response.statusText);
        }
        return await response.json();
    } catch (error) {
        console.error('Error fetching data:', error);
        return [];
    }
};
