% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Driver.R, R/Connection.R, R/Result.R
\docType{class}
\name{DBI}
\alias{DBI}
\alias{duckdb_driver-class}
\alias{show,duckdb_driver-method}
\alias{dbConnect,duckdb_driver-method}
\alias{dbDataType,duckdb_driver-method}
\alias{dbIsValid,duckdb_driver-method}
\alias{dbGetInfo,duckdb_driver-method}
\alias{duckdb_connection-class}
\alias{show,duckdb_connection-method}
\alias{dbIsValid,duckdb_connection-method}
\alias{dbDisconnect,duckdb_connection-method}
\alias{dbSendQuery,duckdb_connection,character-method}
\alias{dbSendStatement,duckdb_connection,character-method}
\alias{dbDataType,duckdb_connection-method}
\alias{dbWriteTable,duckdb_connection,character,data.frame-method}
\alias{dbListTables,duckdb_connection-method}
\alias{dbExistsTable,duckdb_connection,character-method}
\alias{dbListFields,duckdb_connection,character-method}
\alias{dbRemoveTable,duckdb_connection,character-method}
\alias{dbGetInfo,duckdb_connection-method}
\alias{dbBegin,duckdb_connection-method}
\alias{dbCommit,duckdb_connection-method}
\alias{dbRollback,duckdb_connection-method}
\alias{duckdb_result-class}
\alias{show,duckdb_result-method}
\alias{dbClearResult,duckdb_result-method}
\alias{dbFetch,duckdb_result-method}
\alias{dbHasCompleted,duckdb_result-method}
\alias{dbGetInfo,duckdb_result-method}
\alias{dbIsValid,duckdb_result-method}
\alias{dbGetStatement,duckdb_result-method}
\alias{dbColumnInfo,duckdb_result-method}
\alias{dbGetRowCount,duckdb_result-method}
\alias{dbGetRowsAffected,duckdb_result-method}
\alias{dbBind,duckdb_result-method}
\title{DBI methods}
\usage{
\S4method{show}{duckdb_driver}(object)

\S4method{dbConnect}{duckdb_driver}(
  drv,
  dbdir = ":memory:",
  ...,
  debug = getOption("duckdb.debug", FALSE),
  dbname = NA
)

\S4method{dbDataType}{duckdb_driver}(dbObj, obj, ...)

\S4method{dbIsValid}{duckdb_driver}(dbObj, ...)

\S4method{dbGetInfo}{duckdb_driver}(dbObj, ...)

\S4method{show}{duckdb_connection}(object)

\S4method{dbIsValid}{duckdb_connection}(dbObj, ...)

\S4method{dbDisconnect}{duckdb_connection}(conn, ...)

\S4method{dbSendQuery}{duckdb_connection,character}(conn, statement, ...)

\S4method{dbSendStatement}{duckdb_connection,character}(conn, statement, ...)

\S4method{dbDataType}{duckdb_connection}(dbObj, obj, ...)

\S4method{dbWriteTable}{duckdb_connection,character,data.frame}(
  conn,
  name,
  value,
  row.names = FALSE,
  overwrite = FALSE,
  append = FALSE,
  field.types = NULL,
  temporary = FALSE,
  ...
)

\S4method{dbListTables}{duckdb_connection}(conn, ...)

\S4method{dbExistsTable}{duckdb_connection,character}(conn, name, ...)

\S4method{dbListFields}{duckdb_connection,character}(conn, name, ...)

\S4method{dbRemoveTable}{duckdb_connection,character}(conn, name, ...)

\S4method{dbGetInfo}{duckdb_connection}(dbObj, ...)

\S4method{dbBegin}{duckdb_connection}(conn, ...)

\S4method{dbCommit}{duckdb_connection}(conn, ...)

\S4method{dbRollback}{duckdb_connection}(conn, ...)

\S4method{show}{duckdb_result}(object)

\S4method{dbClearResult}{duckdb_result}(res, ...)

\S4method{dbFetch}{duckdb_result}(res, n = -1, ...)

\S4method{dbHasCompleted}{duckdb_result}(res, ...)

\S4method{dbGetInfo}{duckdb_result}(dbObj, ...)

\S4method{dbIsValid}{duckdb_result}(dbObj, ...)

\S4method{dbGetStatement}{duckdb_result}(res, ...)

\S4method{dbColumnInfo}{duckdb_result}(res, ...)

\S4method{dbGetRowCount}{duckdb_result}(res, ...)

\S4method{dbGetRowsAffected}{duckdb_result}(res, ...)

\S4method{dbBind}{duckdb_result}(res, params, ...)
}
\arguments{
\item{object}{Any R object}

\item{drv}{an object that inherits from \linkS4class{DBIDriver},
or an existing \linkS4class{DBIConnection}
object (in order to clone an existing connection).}

\item{...}{authentication arguments needed by the DBMS instance; these
typically include \code{user}, \code{password}, \code{host}, \code{port}, \code{dbname}, etc.
For details see the appropriate \code{DBIDriver}.}

\item{dbObj}{A object inheriting from \linkS4class{DBIDriver}
or \linkS4class{DBIConnection}}

\item{obj}{An R object whose SQL type we want to determine.}

\item{conn}{A \linkS4class{DBIConnection} object, as returned by
\code{\link[=dbConnect]{dbConnect()}}.}

\item{statement}{a character string containing SQL.}

\item{name}{A character string specifying the unquoted DBMS table name,
or the result of a call to \code{\link[=dbQuoteIdentifier]{dbQuoteIdentifier()}}.}

\item{value}{a \link[DBI]{data.frame} (or coercible to data.frame).}

\item{overwrite}{Allow overwriting the destination table. Cannot be
`TRUE` if `append` is also `TRUE`.}

\item{append}{Allow appending to the destination table. Cannot be
`TRUE` if `overwrite` is also `TRUE`.}

\item{res}{An object inheriting from \linkS4class{DBIResult}.}

\item{n}{maximum number of records to retrieve per fetch. Use \code{n = -1}
or \code{n = Inf}
to retrieve all pending records.  Some implementations may recognize other
special values.}

\item{params}{A list of bindings, named or unnamed.}
}
\description{
Implementations of pure virtual functions defined in the `DBI` package.
}
