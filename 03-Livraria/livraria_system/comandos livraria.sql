create table autor(
id_autor int primary key not null auto_increment,
nome varchar(100),
email varchar(150)
);

create table autorLivro(
id_autorLivro int primary key not null auto_increment,
id_livro int not null, 
id_autor int not null, 
foreign key(id_livro) references livro(id_livro),
foreign key(id_autor) references autor(id_autor)
);

create table cliente(
id_cliente int primary key not null auto_increment,
id_venda int not null, 
nome varchar(100),
telefone varchar(15),
foreign key (id_venda) references venda(id_venda)
);

create table venda(
id_venda int primary key not null auto_increment,
id_itemVenda int not null, 
id_livro int not null, 
data_venda date, 
valor_total int,
foreign key(id_itemVenda) references itemVenda (id_itemVenda),
foreign key (id_livro) references livro (id_livro)
);

create table itemVenda(
id_itemVenda int primary key not null auto_increment,
id_livro int not null, 
qtd_vendida int, 
subtotal int,
foreign key(id_livro) references livro (id_livro)
);

create table genero(
id_genero int primary key not null auto_increment, 
descricao varchar(150)
);

create table editora(
id_editora int primary key not null auto_increment,
nome varchar(100), 
telefone varchar(15)
);

create table livro(
id_livro int primary key not null auto_increment,
id_genero int not null, 
id_editora int not null, 
titulo varchar(50),
preco int, 
qtd_estoque int, 
foreign key (id_genero) references genero (id_genero),
foreign key (id_editora) references editora (id_editora)
);