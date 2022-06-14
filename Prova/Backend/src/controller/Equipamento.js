const con = require('../../connection.js');

const listar = (req, res) => {
    const query = "SELECT * from equipamentos";

    con.query(query, (err, result) => {
        if(err === null) {
            res.status(200).json(result).end();
        }else {
            res.status(400).json(err).end();
        }
    })
}

const cadastrar = (req, res) => {
    const nome = req.body.nome;
    const descricao = req.body.descricao;
    const ativo = req.body.ativo;
    const imagem = req.body.imagem;

    const query = `INSERT INTO equipamentos VALUES (DEFAULT, '${nome}', '${descricao}', '${ativo}', '${imagem}')`;

    con.query(query, (err, result) => {
        if(err === null) {
            res.status(200).json(req.body).end();
        }else {
            res.status(400).json(err).end();
        }
    });
}

const excluir = (req, res) => {
    const query = `DELETE FROM equipamentos where id = ` + req.params.id

    con.query(query, (err, result) => {
        if(result.affectedRows == 1) {
            res.status(200).end()
        }else {
            res.status(404).end()
        }
    })
}

module.exports = {
    listar,
    cadastrar,
    excluir
}