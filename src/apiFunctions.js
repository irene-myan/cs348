import axios from "axios";

export async function GetSortedGames () {
    try {
        const response = await axios.get("http://localhost:8000/sbd/", {
            params: {
                desc: false
            }
        });
        const responseData = response.data;
        return responseData
    } catch (error) {
        console.error('Error fetching games:', error);
    }
}