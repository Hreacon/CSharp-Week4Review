# Shoe Store

#### Demonstrates many to many relationships using Shoe Stores and shoe brands. March 9th, 2016

#### By Nicholas Jensen-Hay

## Description

Lets the user add Shoe stores, shoe brands, and relationships between the two.

## Setup/Installation Requirements

Please see Epicodus's great guide on installing the required software,
https://www.learnhowtoprogram.com/c/getting-started-with-c/installing-c

### SQL
* create database shoe_stores
* create database shoe_stores_test
* go
* use shoe_stores
* create table stores(id int identity(1,1), name varchar(255))
* create table brands(id int identity(1,1), name varchar(255))
* create table brand_store(id int identity(1,1), store_id int, brand_id int)
* use shoe_stores_test
* create table stores(id int identity(1,1), name varchar(255))
* create table brands(id int identity(1,1), name varchar(255))
* create table brand_store(id int identity(1,1), store_id int, brand_id int)
* go


## Known Bugs

No known issues. Please report any found through github and the contact information below.

## Support and contact details

Contact Nicholas Jensen-Hay through Github at http://github.com/hreacon/

## Technologies Used

C#, Nancy, Razor, MsSQL

### License

Copyright (c) 2016 Nicholas Jensen-Hay

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
