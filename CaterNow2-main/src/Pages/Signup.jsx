import React, { useState } from 'react';
import './Style/Signup.css';
import { Link, useNavigate } from "react-router-dom";
import axios from "axios";

function Signup() {
    const navigate = useNavigate();
    const [formData, setFormData] = useState({
        name: '',
        email: '',
        password: '',
        confirmPassword: '',
        contact_no: '',
        address: ''
    });

    const [error, setError] = useState({});

    const handleChange = (e) => {
        setFormData({ ...formData, [e.target.name]: e.target.value });
    };

    const handleBlur = (e) => {
        const { name, value } = e.target;
        let newError = { ...error };

        switch (name) {
            case "name":
                newError.name = value.trim() ? "" : "Name is required!";
                break;

            case "email":
                const emailPattern = /^[a-zA-Z0-9._%+-]+@(gmail\.com|hotmail\.com)$/;
                newError.email = emailPattern.test(value) ? "" : "Only Gmail and Hotmail emails are allowed!";
                break;

            case "password":
                newError.password = value.length >= 6 ? "" : "Password must be at least 6 characters!";
                break;

            case "confirmPassword":
                newError.confirmPassword = value === formData.password ? "" : "Passwords do not match!";
                break;

            case "contact_no":
                const phonePattern = /^[6-9]\d{9}$/;
                newError.contact_no = phonePattern.test(value) ? "" : "Invalid contact number!";
                break;

            case "address":
                newError.address = value.trim() ? "" : "Address is required!";
                break;

            default:
                break;
        }

        setError(newError);
    };

    const handleSubmit = async (e) => {
        e.preventDefault();

        if (formData.password !== formData.confirmPassword) {
            alert("Password and Confirm Password fields do not match!");
            return;
        }

        if (Object.values(error).some((err) => err)) {
            alert("Please fix validation errors before submitting.");
            return;
        }

        const payload = {
            ...formData,
            role: "user"
        };

        try {
            const response = await axios.post("http://localhost:8080/addusers", payload);
            alert(response.data.message);
            navigate("/login");
            setFormData({
                name: '',
                email: '',
                password: '',
                confirmPassword: '',
                contact_no: '',
                address: ''
            });
        } catch (err) {
            alert(err.response?.data?.message || "Signup failed!");
        }
    };

    return (
        <div className="signup-container">
            <div className="signup-box">
                <h2>Sign Up</h2>
                <form onSubmit={handleSubmit}>
                    <div className="signup-form-group">
                        <label>Name</label>
                        <input
                            type="text"
                            name="name"
                            value={formData.name}
                            onChange={handleChange}
                            onBlur={handleBlur}
                            required
                        />
                        {error.name && <p className="error">{error.name}</p>}
                    </div>

                    <div className="form-group">
                        <label>Email</label>
                        <input
                            type="email"
                            name="email"
                            value={formData.email}
                            onChange={handleChange}
                            onBlur={handleBlur}
                            required
                        />
                        {error.email && <p className="error">{error.email}</p>}
                    </div>

                    <div className="form-group">
                        <label>Password</label>
                        <input
                            type="password"
                            name="password"
                            value={formData.password}
                            onChange={handleChange}
                            onBlur={handleBlur}
                            required
                        />
                        {error.password && <p className="error">{error.password}</p>}
                    </div>

                    <div className="form-group">
                        <label>Confirm Password</label>
                        <input
                            type="password"
                            name="confirmPassword"
                            value={formData.confirmPassword}
                            onChange={handleChange}
                            onBlur={handleBlur}
                            required
                        />
                        {error.confirmPassword && <p className="error">{error.confirmPassword}</p>}
                    </div>

                    <div className="form-group">
                        <label>Contact No (+91)</label>
                        <input
                            type="text"
                            name="contact_no"
                            value={formData.contact_no}
                            onChange={handleChange}
                            onBlur={handleBlur}
                            required
                        />
                        {error.contact_no && <p className="error">{error.contact_no}</p>}
                    </div>

                    <div className="form-group">
                        <label>Address</label>
                        <input
                            type="text"
                            name="address"
                            value={formData.address}
                            onChange={handleChange}
                            onBlur={handleBlur}
                            required
                        />
                        {error.address && <p className="error">{error.address}</p>}
                    </div>

                    <button type="submit">Sign Up</button>
                </form>

                <p className="signup-link">
                    Already have an account? <Link to="/login">Login</Link>
                </p>
            </div>
        </div>
    );
}

export default Signup;
