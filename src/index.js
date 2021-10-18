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

app.listen(port, async () => {
  console.log(`Service on port: ${port}`);
});
