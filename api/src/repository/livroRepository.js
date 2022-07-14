import { con } from "./connection.js"

export async function InserirLivro(livro){
    const comando =
    `INSERT INTO tb_livro (id_usuario, nm_livro, nm_autor, ds_isbn, ds_editora, ds_edicao, ds_sinopse, dt_publicacao, 
                           ds_idioma, bt_disponivel, qtd_paginas, vl_preco)
                   VALUES (?, ? , ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

    const resposta = await con.query(comando, [ livro.usuario, livro.nome, livro.autor, livro.isbn, livro.editora, livro.edicao, livro.sinopse, livro.publicacao, livro.idioma, livro.disponivel, livro.paginas, livro.valor ]);
    livro.id = resposta.insertId;

    return livro;
}

// Listar todos Livros

export async function ListarLivros(){
    const comando =
    `SELECT id_livro		= 'livro',
            id_usuario		= 'usuario',
            nm_livro      	= 'nome',
            nm_autor		= 'autor',
            ds_isbn			= 'isbn',
            ds_editora	 	= 'editora',
            ds_edicao	 	= 'edicao',
            ds_sinopse    	= 'sinopse',
            DATE_FORMAT 	(dt_publicacao,'%d/%m/%Y') AS 'publicacao',
            bt_disponivel 	= 'disponivel',
            qtd_paginas	 	= 'paginas',
            vl_preco	  	= 'preco'
      FROM  tb_livro;
    `

    const [linhas] = await con.query(comando);
    return linhas;
}