const express = require('express');
const morgan = require('morgan');

const app = express();
const port = 3000;

// Use Morgan module for logging
app.use(morgan('dev'));

app.get('/greet/:customer', (req, res) => {
    const customer = req.params.customer;
    let greeting = '';

    switch (customer) {
        case 'A':
            greeting = 'Hi';
            break;
        case 'B':
            greeting = 'Dear Sir or Madam';
            break;
        case 'C':
            greeting = 'Moin';
            break;
        default:
            greeting = 'Fail: Unknown customer. Please provide a valid customer name';
    }

    // Log the request and response 
    console.log(`[${new Date().toISOString()}] ${req.method} ${req.url} - ${greeting}`);

    res.send(greeting);
});

app.listen(port, () => {
    console.log(`Greetings service is running at http://localhost:${port}`);
});

