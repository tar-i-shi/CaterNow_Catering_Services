import React from "react";
import "./Style/Catering.css";
import BirthdayCaterers from "../data/BirthdayCatering.json"; // Import the JSON file
import CateringCard from "../components/CateringCard"; // Import the CateringCard component

const BirthdayCatering = () => {
    return (
        <div className="birthday-container">
            {/* Hero Section with Background Image */}
            <div className="hero-section">
                <h1>Birthday Parties Catering Services</h1>
                <p>Make your wedding day unforgettable with our exquisite catering services.</p>
            </div>

            {/* Horizontal Caterers List */}
            <div className="caterers-list">
                {BirthdayCaterers.map((caterer) => (
                    <CateringCard key={caterer.id} caterer={caterer} />
                ))}
            </div>


        </div>
    );
};

export default BirthdayCatering;