import React from 'react';
import axios from 'axios';
import { useState, useEffect } from 'react';

const WorldRanking = () => {
    const [data, setData] = useState([]);

    useEffect(() => {
        fetchData();
    }, []);

    async function fetchData() {
        const instance = axios.create({baseURL: 'http://localhost:8000'})

        try {
            const response = await instance.get('/topelo/');
            const responseData = response.data; // Extract the data from the response
            console.log(responseData);
            setData(responseData); // Update the state with the fetched data
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    };

    return (
        <div>
            <h1>World Ranking</h1>
            {/* {data.map((item, index) => (
                <div key={index}>{item}</div>
            ))}  */}
        </div>
    );
};

export default WorldRanking;