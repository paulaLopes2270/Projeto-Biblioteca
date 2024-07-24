 Script Banco de Dados

```sql
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
    FOREIGN KEY (USUARIO_ID) REFERENCES USUARIOS(ID)
);

```
![image](https://github.com/user-attachments/assets/1dfcdd6c-b88b-4567-bb1a-76db9896d577)


![image](https://github.com/user-attachments/assets/f1d1ed86-d56a-4efe-ab96-e0854446677e)


![image](https://github.com/user-attachments/assets/990968db-0e63-4145-ad0a-93272ddac504)


![image](https://github.com/user-attachments/assets/7248f6a9-9e20-4e05-b16c-15d83c78fbed)


![image](https://github.com/user-attachments/assets/f0b4d4a5-8ebc-4a05-ae8e-fbc355fb53bf)


![image](https://github.com/user-attachments/assets/909544e2-ac8e-4a8a-8c58-5c1f88a4ffef)


![image](https://github.com/user-attachments/assets/80a5c497-8db4-425d-967b-9c979e92edb9)

