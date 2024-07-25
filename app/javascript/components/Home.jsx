import React from "react";
import { Link } from "react-router-dom";
import HotelReservation from "../components/HotelReservation";
export default () => (
    <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
        <div className="jumbotron jumbotron-fluid bg-transparent">
            <div className="container secondary-color">
                <h1 className="display-4">Umrah Portal</h1>
                < HotelReservation />
            </div>
        </div>
    </div>
);