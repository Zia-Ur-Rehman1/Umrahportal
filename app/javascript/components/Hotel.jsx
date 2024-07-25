import React from 'react';

const Hotel = ({ hotels, selectedHotel, onHotelChange, selectedRoom, onRoomChange }) => {

    const handleHotelChange = (e) => {
        const hotel = hotels.find(h => h.id === parseInt(e.target.value));
        onHotelChange(hotel);
    };

    const handleRoomChange = (e) => {
        const room = selectedHotel.rooms.find(r => r.id === parseInt(e.target.value));
        onRoomChange(room);
    };

    return (
        <div>
            <h3>Select Hotel</h3>
            <select onChange={handleHotelChange} value={selectedHotel?.id || ''}>
                <option value="" disabled>Select Hotel</option>
                {hotels.map(hotel => (
                    <option key={hotel.id} value={hotel.id}>{hotel.name}</option>
                ))}
            </select>

            {selectedHotel && (
                <div>
                    <h4>{selectedHotel.name}</h4>
                    <select onChange={handleRoomChange} value={selectedRoom?.id || ''}>
                        <option value="" disabled>Select Room</option>
                        {selectedHotel.rooms.map(room => (
                            <option key={room.id} value={room.id}>{room.room_type}</option>
                        ))}
                    </select>
                </div>
            )}
        </div>
    );
};

export default Hotel;
