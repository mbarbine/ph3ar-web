// server.js
const express = require('express');
const path = require('path');
const dotenv = require('dotenv');
const userRoutes = require('./routes/userRoutes');
const authenticateToken = require('./middleware/authenticateToken');
const app = express();

dotenv.config(); // Load environment variables from .env file

const port = process.env.PORT || 3000;
const sessionSecret = process.env.SESSION_SECRET;

// Middleware to parse JSON
app.use(express.json());

// Serve static files
// ⚡ Bolt: Add 1-day Cache-Control max-age header for static assets
// This reduces unnecessary server requests for unchanged CSS/JS/images
app.use(express.static(path.join(__dirname, 'public'), { maxAge: '1d' }));

// Use user routes
app.use('/api', userRoutes);

// Example protected route
app.get('/api/protected', authenticateToken, (req, res) => {
  res.json({ message: 'This is a protected route' });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});