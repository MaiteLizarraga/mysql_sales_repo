# Data Modelling and Normalization in MySQL

Before creating our database, we need to take a look at our raw data create a model that will suit best our needs. We will also need to normalize it. 
*    The goal of data modeling is to create a conceptual or logical representation of the data structures that will be used in a database system, reflecting the relationships between different data entities.
*    The main goal of normalization is to reduce data redundancy (unnecessary repetition of data) and improve data integrity by ensuring that each piece of information is stored only once, in the appropriate place.

## Data Modelling

The ER-diagrams (Entity-Relationship Diagrams) are high-level representations of the "business concepts" often used to modelize data before creating the actual database. Entities, attributes, relationships and constraints are specified, however the specific technical details are not included at this stage and it is not concerned about the physical storage.

![alt text](https://github.com/MaiteLizarraga/mysql_sales_repo/blob/main/img/E-R_diagram_ppt.png)

This is the end result rendered by MySQL Workbench once we create our schema, our tables, primary and foreign keys:

![alt text](https://github.com/MaiteLizarraga/mysql_sales_repo/blob/main/img/E-R_diagram_shop.png)

## Normalization Process:
Normalization is a data optimization technique, carried out in multiple stages, called normal forms. Each normal form is based on a set of rules that a table must follow to be considered normalized. The most common normal forms are:

1. First Normal Form (1NF):
    + Eliminates repeating groups.
    + Each field contains a single value, and each record is unique.
    + There should be no sets of multiple values in a single cell.

2. Second Normal Form (2NF):
    + Must be in 1NF.
    + Eliminates partial dependencies, meaning that all non-key fields must depend on the entire primary key.
    + Only applies to tables with composite keys (multiple columns as the primary key).

3. Third Normal Form (3NF):
    + Must be in 2NF.
    + Eliminates transitive dependencies, meaning that non-key fields should not depend on other non-key fields.

4. Other Normal Forms (Advanced):
    + BCNF (Boyce-Codd Normal Form): A refinement of 3NF that deals with specific exceptions to the 3NF rules.
    + 4NF and 5NF: These forms eliminate more complex dependencies, such as multi-valued dependencies and join dependencies.