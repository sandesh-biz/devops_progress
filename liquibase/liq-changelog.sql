-- liquibase formatted sql

--changeset Gojo.Satoro:1 labels:create-flytesttab context:just-experimenting1
--comment: its the first tab
  CREATE TABLE dev.flywaytest.flytesttab (
    customernumber integer ENCODE az64,
    checknumber character varying(256) ENCODE lzo,
    paymentdate character varying(256) ENCODE lzo,
    amount double precision ENCODE raw
) DISTSTYLE AUTO;

--rollback DROP TABLE dev.flywaytest.flytesttab;


--changeset Megumi.Fushiguro:2 labels:create-liqflyschema context:just-experimenting2
--comment: its the first schema
CREATE SCHEMA liqflyschema;

--rollback DROP SCHEMA liqflyschema;


--changeset Yuji.Itadori:3 labels:create-liqtab context:just-experimenting3
--comment: its the Second tab
  CREATE TABLE dev.liqflyschema.liqtab (
    customernumber integer ENCODE az64,
    checknumber character varying(256) ENCODE lzo,
    paymentdate character varying(256) ENCODE lzo,
    amount double precision ENCODE raw
) DISTSTYLE AUTO;

--rollback DROP TABLE dev.liqflyschema.liqtab;


--changeset Yuta.Okatsu:4 labels:create-liqdb context:just-experimenting4 runInTransaction:false
--comment: its the first db
CREATE DATABASE liqdb;

--rollback DROP DATABASE liqdb;