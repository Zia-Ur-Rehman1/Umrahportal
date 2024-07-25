import React, { useState, useEffect } from 'react';
import Hotel from './Hotel';
import Reservation from './Reservation';

const HotelReservation = () => {
    const [makkahHotels, setMakkahHotels] = useState([]);
    const [madinaHotels, setMadinaHotels] = useState([]);
    const [selectedMakkahHotel, setSelectedMakkahHotel] = useState(null);
    const [selectedMadinaHotel, setSelectedMadinaHotel] = useState(null);
    const [selectedMakkahRoom, setSelectedMakkahRoom] = useState(null);
    const [selectedMadinaRoom, setSelectedMadinaRoom] = useState(null);

    useEffect(() => {
        const fetchHotels = async () => {
            try {
                const response = await fetch('/hotels/index');
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                const data = await response.json();
                setMakkahHotels(data.makkah_hotels);
                setMadinaHotels(data.madina_hotels);
            } catch (error) {
                console.error('Error fetching hotel data', error);
            }
        };

        fetchHotels();
    }, []);

    return (
        <div>
            < Reservation
                makkahHotels={makkahHotels}
                madinaHotels={madinaHotels}
                selectedMakkahHotel={selectedMakkahHotel}
                selectedMadinaHotel={selectedMadinaHotel}
                selectedMakkahRoom={selectedMakkahRoom}
                selectedMadinaRoom={selectedMadinaRoom}
            />
        </div>
    );
};

export default HotelReservation;
