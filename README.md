CREATE TABLE USUARIOS (
    ID SERIAL PRIMARY KEY,
    NOME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(50) NOT NULL,
    SENHA VARCHAR(50) NOT NULL
);

CREATE TABLE LIVROS (
    ISBN CHAR(13) NOT NULL PRIMARY KEY,
    NOME VARCHAR(50) NOT NULL,
    CATEGORIA VARCHAR(50),
    QUANTIDADE INTEGER NOT NULL,
    USUARIO_ID INTEGER,
    FOREIGN KEY (USUARIO_ID) REFERENCES USUARIO_ID(ID)
);

![image](https://github.com/user-attachments/assets/395e2c02-bee6-415d-a42c-6edfb48d90a9)


![image](https://github.com/user-attachments/assets/24951ada-18c0-40b3-98fe-3d03bed05475)


![image](https://github.com/user-attachments/assets/e295caf0-b97f-45cf-b4c4-e763a88d8bb9)


![image](https://github.com/user-attachments/assets/0c348381-11d3-4346-93ef-72d471ad8e70)


![image](https://github.com/user-attachments/assets/2bbf1070-c128-48c8-a007-e11c18de1d48)


![image](https://github.com/user-attachments/assets/72a4358d-7de0-4fdb-85f2-08c30cd0080d)


![image](https://github.com/user-attachments/assets/de57945c-5e06-489c-bbb5-51619f5a21e0)
