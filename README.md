Requisitos:

TomCat (versão 10.1.26)  
https://tomcat.apache.org/download-10.cgi  

Tecnologias utilizadas:

- Java  
- Hibernate  
- Servlet  
- JSP  
- Bootstrap 5  
- CSS  
- HTML  
- JavaScript  

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


![image](https://github.com/user-attachments/assets/c79d7a5d-cf0a-44a9-9944-a3fc4f234b71)


![image](https://github.com/user-attachments/assets/ad3ed830-58f6-49dc-a695-239a46ad98fa)


![image](https://github.com/user-attachments/assets/70b328c2-fd39-4bf1-9db1-ff7c4277c1e9)


![image](https://github.com/user-attachments/assets/62d5ca1f-77d9-4dbc-8a3f-4060149ae5fd)


![image](https://github.com/user-attachments/assets/990968db-0e63-4145-ad0a-93272ddac504)


![image](https://github.com/user-attachments/assets/62014e2b-5b5b-4361-a0ab-9bac1840e971)


![image](https://github.com/user-attachments/assets/7248f6a9-9e20-4e05-b16c-15d83c78fbed)


![image](https://github.com/user-attachments/assets/4cada74b-2eaf-454c-ba95-8c9b9777e4c8)


![image](https://github.com/user-attachments/assets/d3877bd6-6b36-45cb-8dd8-02ea03383681)


![image](https://github.com/user-attachments/assets/102a92dd-e3ec-47cb-98eb-4fb74e7e5e1b)


