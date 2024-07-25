import React, { useState } from 'react';
import Hotel from './Hotel';


const Reservation = ({ makkahHotels, madinaHotels }) => {
    const [days, setDays] = useState(0);
    const [adults, setAdults] = useState(0);
    const [infants, setInfants] = useState(0);
    const [startDate, setStartDate] = useState('');
    const [endDate, setEndDate] = useState('');
    const [daysInMakka, setDaysInMakka] = useState(0);
    const [daysInMadina, setDaysInMadina] = useState(0);
    const [selectedMakkahHotel, setSelectedMakkahHotel] = useState(null);
    const [selectedMadinaHotel, setSelectedMadinaHotel] = useState(null);
    const [selectedMakkahRoom, setSelectedMakkahRoom] = useState(null);
    const [selectedMadinaRoom, setSelectedMadinaRoom] = useState(null);


    const handleSubmit = async (e) => {
        e.preventDefault();
        const reservationData = {
            days,
            adults,
            infants,
            start_date: startDate,
            end_date: endDate,
            days_in_makka: daysInMakka,
            days_in_madina: daysInMadina,
            makkah_hotel_id: selectedMakkahHotel?.id,
            madina_hotel_id: selectedMadinaHotel?.id,
            makkah_room_id: selectedMakkahRoom?.id,
            madina_room_id: selectedMadinaRoom?.id,
        };
        // Send reservationData to your API
        console.log('Reservation Data:', reservationData);
        try {
            debugger
            const token = document.querySelector('meta[name="csrf-token"]').content;

            const response = fetch('/reservations/create', {
                method: 'POST',
                headers: {
                    "X-CSRF-Token": token,
                    "Content-Type": "application/json",
                },

                body: JSON.stringify(reservationData),
            });
            debugger
            if (response.ok) {
                const result = response.json();
                console.log('Reservation successful:', result);
                // Handle success (e.g., show a success message, redirect, etc.)
            } else {
                console.error('Error submitting reservation:', response.statusText);
                // Handle error (e.g., show an error message)
            }
        } catch (error) {
            console.error('Network error:', error);
            // Handle network error (e.g., show an error message)
        }
    };


    return (
        <div>
            <h2>Reservation Form</h2>
            <form onSubmit={handleSubmit}>
                {/* Reservation Details */}
                <div>
                    <label>Number of Days:
                        <input
                            type="number"
                            value={days}
                            onChange={(e) => setDays(e.target.value)}
                        />
                    </label>
                </div>
                <div>
                    <label>Number of Adults:
                        <input
                            type="number"
                            value={adults}
                            onChange={(e) => setAdults(e.target.value)}
                        />
                    </label>
                </div>
                <div>
                    <label>Number of Infants:
                        <input
                            type="number"
                            value={infants}
                            onChange={(e) => setInfants(e.target.value)}
                        />
                    </label>
                </div>
                <div>
                    <label>Start Date:
                        <input
                            type="date"
                            value={startDate}
                            onChange={(e) => setStartDate(e.target.value)}
                        />
                    </label>
                </div>
                <div>
                    <label>End Date:
                        <input
                            type="date"
                            value={endDate}
                            onChange={(e) => setEndDate(e.target.value)}
                        />
                    </label>
                </div>
                <div>
                    <label>Days in Makkah:
                        <input
                            type="number"
                            value={daysInMakka}
                            onChange={(e) => setDaysInMakka(e.target.value)}
                        />
                    </label>
                </div>
                <div>
                    <label>Days in Madina:
                        <input
                            type="number"
                            value={daysInMadina}
                            onChange={(e) => setDaysInMadina(e.target.value)}
                        />
                    </label>
                </div>

                {/* Makkah Hotel and Room */}
                <Hotel
                    hotels={makkahHotels}
                    selectedHotel={selectedMakkahHotel}
                    onHotelChange={setSelectedMakkahHotel}
                    selectedRoom={selectedMakkahRoom}
                    onRoomChange={setSelectedMakkahRoom}
                />

                {/* Madina Hotel and Room */}
                <Hotel
                    hotels={madinaHotels}
                    selectedHotel={selectedMadinaHotel}
                    onHotelChange={setSelectedMadinaHotel}
                    selectedRoom={selectedMadinaRoom}
                    onRoomChange={setSelectedMadinaRoom}
                />

                <button type="submit">Submit Reservation</button>
            </form>
        </div>
    );
};

export default Reservation;
