import React, { useState } from 'react';
import '../css/home-page.css';

const Home = () => {
    const [inputFen, setInputFen] = useState("");
    
    
    const handleInputFen = (e) => {
        setInputFen(e.target.value);
    };

    const handleSearchFen = () => {
        console.log("GOT HRE");
        return (
            <div>
                Fen is: {inputFen}
            </div>
        );
    };


    return (
        <div>
            <h1>Chess App</h1>
            <p>Welcome to the Chess App!</p>
            <div>
                <input type="text" onChange={handleInputFen} value={inputFen} />
                <button onClick={handleSearchFen}> Search </button>
                {handleSearchFen}
            </div>
        </div>
    );
};

export default Home;