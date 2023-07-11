import axios from "axios";

export async function GetGames (setGames) {
    try {
        const response = await axios.get("http://localhost:8000/sbd/", {
            params: {
                desc: false
            }
        });

        setGames(response.data);
    } catch (error) {
        console.error('Error fetching games:', error);
    }
}

export async function GetPercentage(fen, setPercentage) {
    try {
        const response = await axios.get("http://localhost:8000/plist/", {
            params: {
                fen,
            },
      });
      
      setPercentage(response.data);
    } catch (error) {
      console.error("Error fetching percentage:", error);
    }
}

export async function GetTopElo(setTopElo, dateStart, dateEnd) {
    try {
        const response = await axios.get("http://localhost:8000/topelo/", {
            params: {
                date_start: dateStart,
                date_end: dateEnd,
            },
        });
        setTopElo(response.data);
    } catch (error) {
        console.error("Error fetching top-elo players:", error);
    }
}