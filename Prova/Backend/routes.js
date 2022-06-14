const express = require('express');

const routes = express.Router();

const Equipamento = require('./src/controller/Equipamento');
const Comentario = require('./src/controller/Comentario');
const Usuario = require('./src/controller/Usuario');

routes.get('/equipamento', Equipamento.listar);
routes.post('/equipamento', Equipamento.cadastrar);
routes.delete('/equipamento', Equipamento.excluir);

routes.get('/comentario/:id_equipamento', Comentario.listar);
routes.post('/comentario', Comentario.cadastrar);

routes.post('/usuario', Usuario.login);

module.exports = routes;