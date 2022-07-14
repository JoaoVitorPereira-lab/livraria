USE livraria;

-- carga inicial usuario admin
INSERT INTO tb_usuario (nm_usuario, ds_email, ds_senha)
     VALUES ('admlivraria', 'admlivraria@gmail.com.br', '1234');

-- CSU01:: efetuar login
select id_usuario 		'id',
       nm_usuario		'nome',
       ds_email			'email'
  from tb_usuario
 where ds_email 		= 'admlivraria@gmail.com.br'
   and ds_senha			= '1234';

select * from tb_usuario;
select * from tb_livro;

-- CSU02:: cadastrar novo livro
INSERT INTO tb_livro (id_usuario, nm_livro, nm_autor, ds_isbn, ds_editora, ds_edicao, ds_sinopse, dt_publicacao, ds_idioma, bt_disponivel, qtd_paginas, vl_preco)
     VALUES (1, 'Percy Jackson: O Ladrão de Raios' ,'Rick Riordan', '9788598078878-(isbn-13)', 'Bookman', '1ª edição', 'Livro muito bom para estudos de programação', '2005-06-28', 
			'Português', true, 400, 33.98);	
 
 
 -- CSU03:: consultar todos os livros     
SELECT  id_livro		= 'livro',
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
		vl_preco	  	= 'preco',
        img_capa    	= 'capa'
  FROM  tb_livro;


-- CSU04:: alterar livro por ID
UPDATE tb_livro
   SET nm_livro      = 'Percy Jackson: O Ladrão de Raios',
	   nm_autor		 = 'Rick Riordan',
       ds_isbn		 = '9788598078878-(isbn-13)',
       ds_editora	 = 'Bookman',
       ds_edicao	 = '1ª edição',
       ds_sinopse    = 'Livro muito bom para estudos de programação',
       dt_publicacao = '2005-06-28',
       bt_disponivel = true,
       qtd_paginas	 = 400,
       vl_preco	  	 = 33.98
 WHERE id_livro = 1;


-- CSU05:: remover livro por ID
DELETE FROM tb_filme
      WHERE id_filme = 1;

-- CSU06:: consultar livros por nome
SELECT  id_livro		= 'livro',
		id_usuario		= 'id',
		nm_livro      	= 'nome',
		nm_autor		= 'autor',
		ds_isbn			= 'isbn',
		ds_editora	 	= 'editora',
		ds_edicao	 	= 'edicao',
		ds_sinopse    	= 'sinopse',
		DATE_FORMAT 	(dt_publicacao,'%d/%m/%Y') AS 'publicacao',
		bt_disponivel 	= 'disponivel',
		qtd_paginas	 	= 'paginas',
		vl_preco	  	= 'preco',
        img_capa    	= 'capa'
  FROM  tb_livro
 WHERE  nm_livro		like '%a%';
 
  
-- CSU07:: consultar filme por id
SELECT  id_livro		= 'livro',
		id_usuario		= 'id',
		nm_livro      	= 'nome',
		nm_autor		= 'autor',
		ds_isbn			= 'isbn',
		ds_editora	 	= 'editora',
		ds_edicao	 	= 'edicao',
		ds_sinopse    	= 'sinopse',
		DATE_FORMAT 	(dt_publicacao,'%d/%m/%Y') AS 'publicacao',
		bt_disponivel 	= 'disponivel',
		qtd_paginas	 	= 'paginas',
		vl_preco	  	= 'preco',
        img_capa    	= 'capa'
  FROM  tb_livro
 WHERE  id_livro		= 1;