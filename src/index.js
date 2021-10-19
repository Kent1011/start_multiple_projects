import express from 'express';

const app = express();
const port = process.env.SERVER_PORT;

app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
  })
);

app.get('/', (_req, res) => {
  res.send(`Hello Server (${port})`);
});

app.get('/info', (_req, res) => {
  console.info(Date.now() + ' - Information Log');
  res.json({ hello: 'info' });
});

app.get('/error', (_req, res) => {
  console.error(Date.now() + ' - Error Log');
  res.status(500).json({ hello: 'error' });
});

app.listen(port, async () => {
  console.log(`Service on port: ${port}`);
});
