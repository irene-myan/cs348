import axios from "axios";

async function GetGames(setGames) {
    try {
      const response = await axios.get("http://localhost:8000/sbd/", {
        params: {
          desc: false,
        },
      });
      setGames(response.data);
    } catch (error) {
      console.error("Error fetching games:", error);
    }
}

export default GetGames;