import 'dotenv/config';

import usuarioController from './controller/usuarioController.js'
import livroController from './controller/livroController.js'

import express from 'express';
import cors from 'cors';

const server = express();
server.use(cors());
server.use(express.json());

//configuracao dos EndPoints
server.use(usuarioController);
server.use(livroController);

server.listen(process.env.PORT, () => console.log(`API Conectada na Porta ${process.env.PORT}`));