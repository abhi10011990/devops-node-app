const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Health check route
app.get('/', (req, res) => {
  res.send('🚀 DevOps App is running!');
});

// Start server
app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});

