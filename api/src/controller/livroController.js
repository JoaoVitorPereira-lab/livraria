import { InserirLivro } from "../repository/livroRepository.js";

import { Router } from 'express'

const server = Router();

server.post('/livro', async (req, resp) =>{
    try{
        const livro = req.body;

        if(!livro.nome)         throw new Error ('Nome do Livro é obrigatório');
        if(!livro.autor)        throw new Error ('Nome do Autor(a) é obrigatório');
        if(!livro.isbn)         throw new Error ('Número do ISBN é obrigatório');
        if(!livro.editora)      throw new Error ('Nome da Editora é obrigatório');
        if(!livro.edicao)       throw new Error ('Número da Edição é obrigatório');
        if(!livro.sinopse)      throw new Error ('Sinopse é obrigatória');
        if(!livro.publicacao)   throw new Error ('Data da Publicação é obrigatório');
        if(!livro.idioma)       throw new Error ('Idioma é obrigatório');
        if(!livro.disponivel)   throw new Error ('Disponibilidade é obrigatória');
        if(livro.paginas == undefined || livro.paginas <= 1) throw new Error ('Quantidade de Páginas é obrigatória');
        if(!livro.valor)        throw new Error ('Valor/Preço é obrigatório');
        if(!livro.nome)      throw new Error ('Usuário não logado');

        const livroInserido = await InserirLivro(livro);

        resp.send(livroInserido);

    }catch (err){
        resp.status(400).send({
            erro: err.message
        })
    }
});

export default server;