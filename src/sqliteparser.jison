/*
 * SQLite Jison parser grammar rules
 * for SQLidx WebSQL shim over IndexedDB
 * 
 * 
 * The MIT License (MIT)
 *
 * Copyright (c) 2015 by Andrey Gershun
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 *
 * Project      : SQLidx: a JavaScript WebSQL shim over IndexedDB
 *                https://github.com/agershun/sqlidx
 * Developed by : Andrey Gerhsun, agershun@gmail.com
 				  Nolan Lawson, nolan@nolanlawson.com
 */

%lex
%options case-insensitive
%%

/*\[([^\]])*?\]									return 'BRALITERAL'*/
(["](\\.|[^"]|\\\")*?["])+                    	return 'BRALITERAL'
([`](\\.|[^"]|\\\")*?[`])+                    	return 'BRALITERAL'
X(['](\\.|[^']|\\\')*?['])+                     return 'XSTRING'
(['](\\.|[^']|\\\')*?['])+                  	return 'STRING'

([Tt][Rr][Uu][Ee])                  	return 'TRUE'
([Fa][Aa][Ll][Ss][Ee])                  	return 'FALSE'


"--"(.*?)($|\r\n|\r|\n)							/* skip -- comments */

\s+   											/* skip whitespace */

'ABORT'			return 'ABORT'
'ACTION'		return 'ACTION'
'ADD'			return 'ADD'
'AFTER'			return 'AFTER'
'ALL'			return 'ALL'
'ALTER'			return 'ALTER'
'ANALYZE'		return 'ANALYZE'
'AND'			return 'AND'
'ARRAY'			return 'ARRAY'
'AS'			return 'AS'
'ASC'			return 'ASC'
'ATTACH'		return 'ATTACH'
'AUTOINCREMENT'	return 'AUTOINCREMENT'
'BEFORE'		return 'BEFORE'
'BEGIN'			return 'BEGIN'
'BETWEEN'		return 'BETWEEN'
'BY'			return 'BY'
'CACHE'		return 'CACHE'
'CASCADE'		return 'CASCADE'
'CASE'			return 'CASE'
'CAST'			return 'CAST'
'CHECK'			return 'CHECK'
'COLLATE'		return 'COLLATE'
'COLUMN'		return 'COLUMN'
'COMMENT'		return 'COMMENT'
'COMMIT'		return 'COMMIT'
'CONFLICT'		return 'CONFLICT'
'CONSTRAINT'	return 'CONSTRAINT'
'CREATE'		return 'CREATE'
'CROSS'			return 'CROSS'
'CURRENT_DATE'	return 'CURRENT DATE'
'CURRENT_TIME'	return 'CURRENT TIME'
'CURRENT_TIMESTAMP'		return 'CURRENT TIMESTAMP'
'DATABASE'		return 'DATABASE'
'DEFAULT'		return 'DEFAULT'
'DEFERRABLE'	return 'DEFERRABLE'
'DEFERRED'		return 'DEFERRED'
'DELETE'		return 'DELETE'
'DESC'			return 'DESC'
'DETACH'		return 'DETACH'
'DISTINCT'		return 'DISTINCT'
'DROP'			return 'DROP'
'EACH'			return 'EACH'
'ELSE'			return 'ELSE'
'END'			return 'END'
'ENUM'			return 'ENUM'
'ESCAPE'		return 'ESCAPE'
'EXCEPT'		return 'EXCEPT'
'EXCLUSIVE'		return 'EXCLUSIVE'
'EXISTS'		return 'EXISTS'
'EXPLAIN'		return 'EXPLAIN'
'FAIL'			return 'FAIL'
'FOR'			return 'FOR'
'FOREIGN'		return 'FOREIGN'
'FROM'			return 'FROM'
'FULL'			return 'FULL'
'GLOB'			return 'GLOB'
'GROUP'			return 'GROUP'
'HAVING'		return 'HAVING'
'IF'			return 'IF'
'IGNORE'		return 'IGNORE'
'INHERITS'		return 'INHERITS'
'ILIKE'			return 'ILIKE'
'IMMEDIATE'		return 'IMMEDIATE'
'IN'			return 'IN'
'INCREMENT'			return 'INCREMENT'
'INDEX'			return 'INDEX'
'INDEXED'		return 'INDEXED'
'INITIALLY'		return 'INITIALLY'
'INNER'			return 'INNER'
'INSERT'		return 'INSERT'
'INSTEAD'		return 'INSTEAD'
'INTERSECT'		return 'INTERSECT'
'INTO'			return 'INTO'
'IS'			return 'IS'
'ISNULL'		return 'ISNULL'
'JOIN'			return 'JOIN'
'KEY'			return 'KEY'
'LEFT'			return 'LEFT'
'LIKE'			return 'LIKE'
'LIMIT'			return 'LIMIT'
'MATCH'			return 'MATCH'
'NATURAL'		return 'NATURAL'
'MAXVALUE'		return 'MAXVALUE'
'MINVALUE'		return 'MINVALUE'
'NO'			return 'NO'
'NOT'			return 'NOT'
'NOTNULL'		return 'NOTNULL'
'NULL'			return 'NULL'
'OF'			return 'OF'
'OFFSET'		return 'OFFSET'
'ON'			return 'ON'
'OR'			return 'OR'
'ORDER'			return 'ORDER'
'OUTER'			return 'OUTER'
'OWNER'			return 'OWNER'
'PLAN'			return 'PLAN'
'PRAGMA'		return 'PRAGMA'
'PRIMARY'		return 'PRIMARY'
'QUERY'			return 'QUERY'
'RAISE'			return 'RAISE'
'RECURSIVE'		return 'RECURSIVE'
'REFERENCES'	return 'REFERENCES'
'REGEXP'		return 'REGEXP'
'REINDEX'		return 'REINDEX'
'RELEASE'		return 'RELEASE'
'RENAME'		return 'RENAME'
'REPLACE'		return 'REPLACE'
'RESTRICT'		return 'RESTRICT'
'RETURNING'		return 'RETURNING'
'RIGHT'			return 'RIGHT'
'ROLLBACK'		return 'ROLLBACK'
'ROW'			return 'ROW'
'SAVEPOINT'		return 'SAVEPOINT'
'SELECT'		return 'SELECT'
'SEQUENCE'		return 'SEQUENCE'
'SET'			return 'SET'
'START'			return 'START'
'TABLE'			return 'TABLE'
'TEMP'			return 'TEMP'
'TEMPORARY'		return 'TEMPORARY'
'THEN'			return 'THEN'
'TO'			return 'TO'
'TRANSACTION'	return 'TRANSACTION'
'TRIGGER'		return 'TRIGGER'
'TRUNCATE'		return 'TRUNCATE'
'TYPE'		return 'TYPE'
'UNION'			return 'UNION'
'UNIQUE'		return 'UNIQUE'
'UPDATE'		return 'UPDATE'
'USING'			return 'USING'
'VACUUM'		return 'VACUUM'
'VALUES'		return 'VALUES'
'VIEW'			return 'VIEW'
'VIRTUAL'		return 'VIRTUAL'
'WHEN'			return 'WHEN'
'WHERE'			return 'WHERE'
'WITH'			return 'WITH'
'WITHOUT'		return 'WITHOUT'

[-]?(\d*[.])?\d+[eE]\d+							return 'NUMBER'
[-]?(\d*[.])?\d+								return 'NUMBER'

'~~'											return 'OPLIKE'
'~'												return 'TILDEs'
'+'												return 'PLUS'
'-' 											return 'MINUS'
'*'												return 'STAR'
'/'												return 'SLASH'
'%'												return 'REM'
'>>'											return 'RSHIFT'
'<<'											return 'LSHIFT'
'<>'											return 'NE'
'!='											return 'NE'
'>='											return 'GE'
'>'												return 'GT'
'<='											return 'LE'
'<'												return 'LT'
'='												return 'EQ'
'&'												return 'BITAND'
'|'												return 'BITOR'
'!~~'										  return 'OPNOTLIKE'

'('												return 'LPAR'
')'												return 'RPAR'


'.'												return 'DOT'
','												return 'COMMA'
':'												return 'COLON'
';'												return 'SEMICOLON'
'$'												return 'DOLLAR'
'?'												return 'QUESTION'
'^'												return 'CARET'
'['												return 'LBRA'
']'												return 'RBRA'

[a-zA-Z_][a-zA-Z_0-9]*                       	return 'LITERAL'

<<EOF>>               							return 'EOF'
.												return 'INVALID'

/lex

/* %left unary_operator binary_operator  */

%left OR
%left BETWEEN
%left AND
%right NOT
%left IS MATCH ILIKE LIKE IN ISNULL NOTNULL NE EQ
%left ESCAPE
%left GT LE LT GE
%left OPNOTLIKE OPLIKE
%left BITAND BITOR LSHIFT RSHIFT
$left PLUS MINUS
%left STAR SLASH REM
%left CONCAT
%left COLLATE
%right BITNOT


%start main

%%

name
	: LITERAL
		{ $$ = $1; }
	| BRALITERAL
		{ $$ = $1.substr(1,$1.length-2); }	
	;

signed_number
	: NUMBER
		{ $$ = $1; }
	;

boolean_literal
	: TRUE
		{ $$ = $1; }
	| FALSE
		{ $$ = $1; }
	;

string_literal
	: STRING
		{ $$ = $1; }
	| XSTRING
		{ $$ = $1; }
	;

database_table_name 
	: name DOT name
		{ $$ = {database:$1, table:$3}; }
	| name
		{ $$ = {table:$1}; }
	;

database_pragma_name 
	: name DOT name
		{ $$ = {database:$1, pragma:$3}; }
	| name
		{ $$ = {pragma:$1}; }
	;

database_index_name 
	: name DOT name
		{ $$ = {database:$1, index:$3}; }
	| name
		{ $$ = {index:$1}; }
	;

database_trigger_name 
	: name DOT name
		{ $$ = {database:$1, trigger:$3}; }
	| name
		{ $$ = {trigger:$1}; }
	;

database_view_name 
	: name DOT name
		{ $$ = {database:$1, view:$3}; }
	| name
		{ $$ = {view:$1}; }
	;

database_type_name 
	: name DOT name
		{ $$ = {database:$1, type:$3}; }
	| name
		{ $$ = {type:$1}; }
	;

database_sequence_name 
	: name DOT name
		{ $$ = {database:$1, sequence:$3}; }
	| name
		{ $$ = {type:$1}; }
	;

main
	: sql_stmt_list EOF
		{ 
			$$ = $1; 
			return $$;
		}
	;

sql_stmt_list
	: sql_stmt_list SEMICOLON sql_stmt 
		{ $$ = $1; if($3) $$.push($3); }
	| sql_stmt
		{ $$ = [$1]; }
	;

sql_stmt
	: sql_stmt_explain sql_stmt_stmt
		{ $$ = $2; Object.assign($$, $1); }
	| 
		{ $$ = undefined; }
	;

explain_stmt
	:
		{ $$ = undefined; }
	| EXPLAIN
		{ $$ = {explain:true}; }
	| EXPLAIN QUERY PLAN
		{ $$ = {explain:true}; }
	;

sql_stmt
	: alter_table_stmt
	| analyze_stmt
	| attach_stmt
	| begin_stmt
	| commit_stmt
	| create_index_stmt
	| create_table_stmt
	| create_trigger_stmt
	| create_view_stmt
	| create_virtual_table_stmt
	| create_type_stmt
	| create_sequence_stmt
	| delete_stmt
	| comment_stmt
/*
	| delete_stmt_limited
*/
	| detach_stmt
	| drop_index_stmt
	| drop_table_stmt
	| drop_trigger_stmt
	| drop_view_stmt
	| drop_type_stmt
	| drop_sequence_stmt
	| insert_stmt
	| pragma_stmt
	| reindex_stmt
	| release_stmt
	| rollback_stmt
	| savepoint_stmt
	| select_stmt
	| update_stmt
	| truncate_stmt
/*
	| update_stmt_limited
*/
	| vacuum_stmt
	;


alter_table_stmt
	: ALTER TABLE database_table_name alter_table_action
		{ $$ = {statement: 'ALTER TABLE'}; 
		Object.assign($$, $3); Object.assign($$, $4);  }
	;

alter_table_action
	: RENAME TO name
		{ $$ = {action: 'RENAME TO', new_table:$3}; }
	| ADD COLUMN column_def
		{ $$ = {action: 'ADD COLUMN', column_def:$3}; }
	| OWNER TO name
		{ $$ = {action: 'OWNER TO', owner:$3}; }
	| ADD table_constraint
		{ $$ = {action: 'CONSTRAINT'}; Object.assign($$, $2); }
	;

analyze_stmt
	: ANALYZE database_table_name
		{ $$ = {statement: 'ANALYZE'}; Object.assign($$, $2); }
	;


attach_stmt
	: ATTACH database expr AS name
		{ $$ = {statement: 'ATTACH', expr: $3, database:$5}; }	
	;

database 
	:
	| DATABASE
	;


begin_stmt
	: BEGIN deferred_exclusive TRANSACTION
		{ $$ = {statement: 'BEGIN TRANSACTION', type: $2}; }			
	;

deferred_exclusive
	:
		{ $$ = undefined; }
	| DEFERRED
		{ $$ = 'DEFERRED'; }
	| IMMEDIATE
		{ $$ = 'IMMEDIATE'; }
	| EXCLUSIVE
		{ $$ = 'EXCLUSIVE'; }
	;


commit_stmt
	: commit transaction
		{ $$ = {statement: 'COMMIT TRANSACTION'}; }			
	;

commit
	: COMMIT
	| END
	;

transaction
	:
	| TRANSACTION
	;

create_index_stmt
	: CREATE INDEX if_not_exists database_index_name ON name using
	    LPAR columns RPAR where
	    { $$ = {statement: 'CREATE INDEX', table:$6, columns:$9 }; 
	    	Object.assign($$, $3, $4, $7, $11); 
	    }
	| CREATE UNIQUE INDEX if_not_exists database_index_name ON name using
	    LPAR columns RPAR where
	    { $$ = {statement: 'CREATE INDEX', unique:true, table:$7, columns: $10 }; 
	    	Object.assign($$, $4, $5, $8, $12); 
	    }
	;

using
	: 
		{ $$ = undefined }
	| USING name
		{ $$ = {using: $2} }
	;

if_not_exists
	:
		{ $$ = undefined; }
	| IF NOT EXISTS
		{ $$ = {if_not_exists: true}; }
	;

columns
	: columns COMMA name
		{ $$ = $1; $$.push($3); }
	| name
		{ $$ = [$1]; }
	;

where
	: WHERE expr
		{ $$ = {where: $2}; }
	|
	;

when
	: WHEN expr
		{ $$ = {when: $2}; }
	|
	;

create_table_stmt
	: CREATE temporary TABLE if_not_exists database_table_name AS select_stmt
		{ $$ = {statement: 'CREATE TABLE', select:$7};
			Object.assign($$,$2);
			Object.assign($$,$4);
			Object.assign($$,$5);
		}
	| CREATE temporary TABLE if_not_exists database_table_name LPAR column_defs 
		table_constraints RPAR table_postfix 
		{ $$ = {statement: 'CREATE TABLE', column_defs: $7, table_constraints:$8 };
			Object.assign($$,$2);
			Object.assign($$,$4);
			Object.assign($$,$5);
			Object.assign($$,$10);
		}
	;
table_postfix
	: 
		{ $$ = undefined; }
	| WITHOUT ROWID
		{ $$ = {without_rowid: true} }
	| INHERITS LPAR name DOT name RPAR
		{ $$ = {inherits: {schema: $3, table: $5}};}
	;

temporary
	:
		{ $$ = undefined; }
	| TEMPORARY
		{ $$ = {temporary:true}; }
	;

column_defs
	: column_defs COMMA column_def
		{ $$ = $1; $$.push($3); }
	| column_def
		{ $$ = [$1]; }
	;

column_def
	: name type_name column_constraints
		{ $$ = {column:$1, constraints: $3}; Object.assign($$,$2); }
	| name type_name
		{ $$ = {column:$1}; Object.assign($$,$2); }
	;

type_name
	: name
		{ $$ = {type: $1.toUpperCase()}; }
	| name LPAR signed_number RPAR
		{ $$ = {type: $1.toUpperCase(), precision: $3}; }
	| name LPAR signed_number COMMA signed_number RPAR
		{ $$ = {type: $1.toUpperCase(), precision: $3, scale:$5}; }
	| name LBRA RBRA
		{ $$ = {type: $1.toUpperCase()+'[]'}; }
	| name LPAR signed_number RPAR LBRA RBRA
		{ $$ = {type: $1.toUpperCase()+'[]', precision: $3}; }
	| name LPAR signed_number COMMA signed_number RPAR LBRA RBRA
		{ $$ = {type: $1.toUpperCase()+'[]', precision: $3, scale:$5}; }
	;

shorthand_type_cast
  : COLON COLON type_name
    { $$ = {cast: $3}; }
	| 
		{ $$ = undefined; }
  ;

names 
	: names name
		{ $$ = $1+' '+$2; }
	| name
		{ $$ =$1; }
	;


column_constraints
	: column_constraints column_constraint
		{ $$ = $1; $$.push($2); }
	| column_constraint
		{ $$ = [$1]; }
	;

column_constraint
	: CONSTRAINT name col_constraint
		{ $$ = {constraint: $2}; Object.assign($$,$3); }
	| col_constraint
		{ $$ = $1; }
	;

col_constraint
	: PRIMARY KEY asc_desc conflict_clause autoincrement
		{ $$ = {type: 'PRIMARY KEY'}; Object.assign($$,$3); 
			Object.assign($$,$4); Object.assign($$,$5); }
	| NOT NULL conflict_clause
		{ $$ = {type: 'NOT NULL'}; Object.assign($$,$3); }
	| UNIQUE conflict_clause
		{ $$ = {type: 'UNIQUE'}; Object.assign($$,$2); }
	| CHECK LPAR expr RPAR
		{ $$ = {type: 'CHECK', expr: $3}; }
	| DEFAULT NULL shorthand_type_cast
		{ $$ = {type: 'DEFAULT', expr: {type: 'null'}}; }
	| DEFAULT signed_number
		{ $$ = {type: 'DEFAULT', expr: {type: 'number', value: $2}}; }
	| DEFAULT boolean_literal
		{ $$ = {type: 'DEFAULT', expr: {type: 'boolean', value: $2}}; }
	| DEFAULT string_literal shorthand_type_cast
		{ $$ = {type: 'DEFAULT', expr: {type: 'string', value: $2}}; }
	| DEFAULT name
		{ $$ = {type: 'DEFAULT', value: $2}; }
	| DEFAULT name LPAR RPAR
		{ $$ = {type: 'DEFAULT', expr: { function: $2, arguments: []}}; } 
	| DEFAULT name LPAR arguments RPAR
		{ $$ = {type: 'DEFAULT', expr: { function: $2, arguments: $4}}; } 
	| DEFAULT ARRAY LBRA RBRA shorthand_type_cast
		{ $$={type: 'DEFAULT', expr: {type: 'array', value: []}}; }
	| DEFAULT LPAR expr RPAR
		{ $$ = {type: 'DEFAULT', expr: $3}; }
	| COLLATE name
		{ $$ = {type: 'COLLATE', collate: $2}; }
	| COLLATE name DOT name
		{ $$ = {type: 'COLLATE', collate: $2 + '.' + $4}; }
	| foreign_key_clause
		{ $$ = {type: 'FOREIGN KEY'}; Object.assign($$,$1); }
	;

asc_desc
	:
		{ $$ = undefined; }
	| ASC
		{ $$ = {order:'ASC'}; }
	| DESC
		{ $$ = {order:'DESC'}; }
	;

autoincrement
	: 
		{ $$ = undefined; }
	| AUTOINCREMENT
		{ $$ = {autoincrement:true}; }
	;


table_constraints
	: 
		{ $$ = undefined; }
	| COMMA tab_constraints
		{ $$ = $2; }
	;

tab_constraints
	: tab_constraints COMMA table_constraint
		{ $$ = $1; $$.push($3); }
	| table_constraint
		{ $$ = [$1]; } 
	;

table_constraint
	: CONSTRAINT name tab_constraint
		{ $$ = {constraint: $2}; Object.assign($$,$3); } 
	| tab_constraint
		{ $$ = $1; }
	;

tab_constraint
	: PRIMARY KEY LPAR columns RPAR conflict_clause
		{ $$ = {type:'PRIMARY KEY', columns: $4}; Object.assign($$,$6); }
	| UNIQUE LPAR columns RPAR conflict_clause
		{ $$ = {type:'UNIQUE', columns: $3}; Object.assign($$,$5); }
	| CHECK LPAR expr RPAR
		{ $$ = {type:'CHECK', expr: $3}; }
	| FOREIGN KEY LPAR columns RPAR foreign_key_clause
		{ $$ = {type:'FOREIGN KEY', columns: $4}; Object.assign($$, $6); }
	;

foreign_key_clause
	: REFERENCES name LPAR columns RPAR on_foreign_key_clause
		{ $$ = {table: $2, columns: $4}; Object.assign($$, $6); }
	;

on_foreign_key_clause
	:
		{ $$ = null; }
	| ON DELETE NO ACTION
		{ $$ = {on_delete_no_action:true}; }
	| ON UPDATE NO ACTION
		{$$ = {on_update_no_action:true}; }
	| ON DELETE NO ACTION ON UPDATE NO ACTION
		{$$ = {on_delete_no_action:true, on_update_no_action:true}; }
	;

conflict_clause
	: 
		{ $$ = undefined; }
	| ON CONFLICT ROLLBACK
		{ $$ = {conflict: 'ROLLBACK'}; }
	| ON CONFLICT ABORT
		{ $$ = {conflict: 'ABORT'}; }
	| ON CONFLICT FAIL
		{ $$ = {conflict: 'FAIL'}; }
	| ON CONFLICT IGNORE
		{ $$ = {conflict: 'IGNORE'}; }
	| ON CONFLICT REPLACE
		{ $$ = {conflict: 'REPLACE'}; }
	;

create_trigger_stmt
	: CREATE temporary TRIGGER if_not_exists database_trigger_name before_after
		delete_insert_update ON name for_each_row when begin_trigger_end
		{
			$$ = {statement: 'CREATE TRIGGER', table:$9};
			Object.assign($$,$2);
			Object.assign($$,$4);
			Object.assign($$,$5);
			Object.assign($$,$6);
			Object.assign($$,$7);
			Object.assign($$,$10);
			Object.assign($$,$11);
			Object.assign($$,$12);
		}
	;

	
before_after 
	:
		{ $$ = undefined; }
	| BEFORE
		{ $$ = {when: 'BEFORE'}; }
	| AFTER
		{ $$ = {when: 'AFTER'}; }
	| INSTEAD OF
		{ $$ = {when: 'INSTEAD OF'}; }
	;

delete_insert_update
	: DELETE
		{ $$ = {action: 'DELETE'}; }
	| INSERT
		{ $$ = {action: 'INSERT'}; }
	| UPDATE 
		{ $$ = {action: 'UPDATE'}; }
	| UPDATE OF columns
		{ $$ = {action: 'UPDATE', columns: $3}; }
	;	


for_each_row
	:
		{ $$ = undefined; }
	| FOR EACH ROW
		{ $$ = {for_each_row: true}; }
	;


begin_trigger_end
	: BEGIN uids_stmts END
		{ $$ = {stmts: $2}; }
	;

uids_stmts
	: uids_stmts uids_stmt SEMICOLON
		{ $$ = $1; $$.push($2); }
	| uids_stmt SEMICOLON
		{ $$ = [$2]; }
	;

uids_stmt
	: update_stmt 
		{ $$ = $1; }
	| insert_stmt 
		{ $$ = $1; }
	| delete_stmt 
		{ $$ = $1; }
	| select_stmt 
		{ $$ = $1; }
	;


create_view_stmt
	: CREATE temporary VIEW if_not_exists database_view_name AS select_stmt
		{ 
			$$ = {statement: 'CREATE VIEW', select: $7}; 
			Object.assign($$,$2); 
			Object.assign($$,$4); 
			Object.assign($$,$5); 
		}
	;

	
create_virtual_table_stmt
	: CREATE VIRTUAL TABLE if_not_exists database_table_name USING name module_arguments_par
		{ 
			$$ = {statement: 'CREATE VIRTUAL TABLE', module: $7}; 
			Object.assign($$,$4); 
			Object.assign($$,$5); 
			Object.assign($$,$8); 
		}
	;

create_type_stmt
	: CREATE TYPE if_not_exists database_type_name AS type_definition
		{ 
			$$ = {statement: 'CREATE TYPE', definition: $6}; 
			Object.assign($$,$3); 
			Object.assign($$,$4); 
		}
	;

type_definition
  : ENUM LPAR enum_values RPAR
    { $$ = {type: 'ENUM', values: $3}}
  ;

enum_values
  : enum_values COMMA literal_value
    { $$ = $1; $$.push($3)}
  | literal_value
    { $$ = [$1]}
  ;
	
create_sequence_stmt
	: CREATE SEQUENCE if_not_exists database_sequence_name 
    INCREMENT signed_number MINVALUE signed_number MAXVALUE signed_number START signed_number CACHE signed_number
		{ 
			$$ = {statement: 'CREATE SEQUENCE', increment: $6, minvalue: $8, maxvalue: $10, start: $12, cache: $14}; 
			Object.assign($$,$3); 
			Object.assign($$,$4); 
		}
	;

module_arguments_par
	: 
		{ $$ = undefined; }
	| LPAR module_arguments RPAR 
		{ $$ = {module_arguments: $2}; }
	;


module_arguments
	: module_arguments COMMA module_argument
		{ $$ = $1; $$.push($3); }
	| module_argument
		{ $$ = [$1]; }
	;

delete_stmt
	: DELETE FROM qualified_table_name where order_limit_clause
		{ 
			$$ = {statement:'DELETE'};
			Object.assign($$,$3);
			Object.assign($$,$4);
			Object.assign($$,$5);
		}
	| with DELETE FROM qualified_table_name where order_limit_clause
		{ 
			$$ = {statement:'DELETE'};
			Object.assign($$,$1);
			Object.assign($$,$4);
			Object.assign($$,$5);
			Object.assign($$,$6);
		}
	;

comment_stmt
  : COMMENT ON COLUMN name DOT name IS string_literal
    { $$ = {statement:'COMMENT', table: $4, column: $6, comment: $8}}
  | COMMENT ON TABLE name IS string_literal
    { $$ = {statement:'COMMENT', table: $4, comment: $6}}
  ;
	
qualified_table_name 
	: database_table_name indexed
		{ $$ = $1; Object.assign($$, $2); }
	;	

indexed
	: 
		{ $$ = undefined; }
	| INDEXED BY name
		{ $$ = {indexed_by:$4}; }
	| NOT INDEXED
		{ $$ = {not_indexed:true}; }
	;

with
	: WITH recursive cte_tables
		{ $$ = {with: $3}; Object.assign($$,$2); }
	;

recursive
	: RECURSIVE
		{ $$ = {recursive:true}; }
	|
		{ $$ = undefined; }
	;

cte_tables
	: cte_table_name AS LPAR select_stmt RPAR
		{ 	
			Object.assign($1, {select:$4});
			$$ = [$1];
		}
	| cte_tables COMMA cte_table_name AS LPAR select_stmt RPAR
		{
			Object.assign($3, {select:$6});		
			$$ = $1;
			$$.push($3);
		}
	;

cte_table_name
	: name 
		{ $$ = {table: $1}; }
	| name LPAR columns RPAR
		{ $$ = {table:$1, columns: $3}}
	;

order_limit_clause
	:
		{ $$ = undefined; }
	| ORDER BY ordering_terms
		{
			$$ = {order_by:$3};
		}
	| ORDER BY ordering_terms limit_offset_clause
		{
			$$ = {order_by:$3}; Object.assign($$, $4);
		}
	| limit_offset_clause
		{ 
			$$ = $1;
		}
	;

ordering_terms
	: ordering_terms COMMA ordering_term
		{ $$ = $1; $$.push($3); }
	| ordering_term
		{ $$ = [$1]; }
	;

ordering_term
	: expr asc_desc
		{ 
			$$ = {expr: $1}; 
			Object.assign($$, $2);
		}
	;

limit_offset_clause
	: limit offset
		{ $$ = {}; Object.assign($$, $1, $2)}
	| limit
		{ $$ = $1 }
	| offset
		{ $$ = $1 }
	;

limit
	: LIMIT signed_number
		{ $$ = {limit:$2}; }
	;

offset
	: OFFSET signed_number
		{ $$ = {offset:$2}; }
	;

detach_stmt
	: DETACH name
		{ $$ = {statement:'DETACH', database:$2}; }
	| DETACH DATABASE name
		{ $$ = {statement:'DETACH', database:$3}; }
	;

	
drop_index_stmt
	: DROP INDEX if_exists database_index_name
		{ 
			$$ = {statement: 'DROP INDEX'}; 
			Object.assign($$,$3);
			Object.assign($$,$4);
		} 
	;
	
if_exists
	: IF EXISTS
		{ $$ = {if_exists:true}; }
	|
		{ $$ = undefined; }
	;

drop_table_stmt
	: DROP TABLE if_exists database_table_name
		{ 
			$$ = {statement: 'DROP TABLE'}; 
			Object.assign($$,$3);
			Object.assign($$,$4);
		} 
	;

drop_trigger_stmt
	: DROP TRIGGER if_exists database_trigger_name
		{ 
			$$ = {statement: 'DROP TRIGGER'}; 
			Object.assign($$,$3);
			Object.assign($$,$4);
		} 
	;

	
	
drop_view_stmt
	: DROP VIEW if_exists database_view_name
		{ 
			$$ = {statement: 'DROP VIEW'}; 
			Object.assign($$,$3);
			Object.assign($$,$4);
		} 
	;

drop_type_stmt
	: DROP TYPE if_exists database_type_name
		{ 
			$$ = {statement: 'DROP TYPE'}; 
			Object.assign($$,$3);
			Object.assign($$,$4);
		} 
	;

drop_sequence_stmt
	: DROP SEQUENCE if_exists database_sequence_name
		{ 
			$$ = {statement: 'DROP SEQUENCE'}; 
			Object.assign($$,$3);
			Object.assign($$,$4);
		} 
	;

insert_stmt
	: with insert_action INTO database_table_name columns_par insert_values pg_return_columns
		{ 
			$$ = {statement: 'INSERT', action: $2};
			Object.assign($$,$1);
			Object.assign($$,$4);
			Object.assign($$,$5);
			Object.assign($$,$6);
			Object.assign($$,$7);
		}

	| insert_action INTO database_table_name columns_par insert_values pg_return_columns
		{ 
			$$ = {statement: 'INSERT', action: $1};
			Object.assign($$,$3);
			Object.assign($$,$4);
			Object.assign($$,$5);
			Object.assign($$,$6);
		}
	;

insert_action
	: INSERT
		{ $$ = 'INSERT'; }
	| REPLACE
		{ $$ = 'REPLACE'; }
	| INSERT OR REPLACE
		{ $$ = 'INSERT OR REPLACE'; }
	| INSERT OR ROLLBACK
		{ $$ = 'INSERT OR ROLLBACK'; }
	| INSERT OR ABORT
		{ $$ = 'INSERT OR ABORT'; }
	| INSERT OR FAIL
		{ $$ = 'INSERT OR FAIL'; }
	| INSERT OR IGNORE
		{ $$ = 'INSERT OR IGNORE'; }
	;

insert_values
	: VALUES values
		{ $$ = {values: $2}; }
	| select_stmt
		{ $$ = {select:$1}; }
	| DEFAULT VALUES
		{ $$ = {default_values: true}; }
	;

pg_return_columns
	: RETURNING result_columns
		{ $$ = {returning:$2}; }
	|
		{ $$ = undefined; }
	;

columns_par
	: 
		{ $$ = undefined; }
	| LPAR columns RPAR
		{ $$ = {columns: $2}}
	;
pragma_stmt
	: PRAGMA database_pragma_name 
		{ $$ = {statement: 'PRAGMA'}; Object.assign($$,$1); }
	| PRAGMA database_pragma_name EQ pragma_value
		{ $$ = {statement: 'PRAGMA', value:$4}; Object.assign($$,$1); }
	| PRAGMA database_pragma_name EQ LPAR pragma_value RPAR
		{ $$ = {statement: 'PRAGMA', value:$5}; Object.assign($$,$1); }
	;

pragma_value
	: signed_number
		{ $$ = {number: $1}; }
	| name
		{ $$ = {name: $1}; }
	| string_literal
		{ $$ = {string: $1}; }
	;
reindex_stmt
	: REINDEX
		{ $$ = {statement: 'REINDEX'}; }
	| REINDEX name
		{ $$ = {statement: 'REINDEX', name: $2}; }
	| REINDEX name DOT name
		{ $$ = {statement: 'REINDEX', database: $2, name: $2}; }
	;
	
release_stmt
	: RELEASE savepoint name
		{ $$ = {statement: 'RELEASE SAVEPOINT', savepoint: $3}; }
	;

savepoint
	: 
	| SAVEPOINT
	;
	
rollback_stmt
	: ROLLBACK transaction TO savepoint name
		{ $$ = {statement: 'ROLLBACK TRANSACTION', savepoint: $3}; }
	| ROLLBACK transaction
		{ $$ = {statement: 'ROLLBACK TRANSACTION'}; }
	;

savepoint_stmt
	: SAVEPOINT name
		{ $$ = {statement: 'SAVEPOINT', savepoint: $3}; }
	;

select_stmt
	: with compound_selects order_limit_clause 
		{ 
			$$ = {statement: 'SELECT', selects: $2};
			Object.assign($$,$3);
		}
	| compound_selects order_limit_clause 
		{ 
			$$ = {statement: 'SELECT', selects: $1};
			Object.assign($$,$2);
		}
	;

compound_selects
	: compound_selects compound_operator select
		{ $$ = $1; Object.assign($3,{compound:$2}); $$.push($3); }
	| select
		{ $$ = [$1]; }
	;

compound_operator
	: UNION
		{ $$ = 'UNION'; }
	| UNION ALL
		{ $$ = 'UNION ALL'; }
	| INTERSECT
		{ $$ = 'INTERSECT'; }
	| EXCEPT
		{ $$ = 'EXCEPT'; }
	;

select
	: SELECT distinct_all result_columns from where group_by
		{ 
			$$ = {columns:$3};
			Object.assign($$,$2);
			Object.assign($$,$4);
			Object.assign($$,$5);
			Object.assign($$,$6);
		}
/*	| VALUES values
		{ $$ = {values: $2}; }
*/	;

distinct_all
	:
		{ $$ = undefined; }
	| DISTINCT
		{ $$ = {distinct:true}; }
	| ALL
		{ $$ = {all:true}; }
	;

result_columns
	: result_columns COMMA result_column
		{ $$ = $1; $$.push($3); }
	| result_column
		{ $$ = [$1]; }
	;

result_column
	: STAR
		{ $$ = {star:true}; }
	| name DOT STAR
		{ $$ = {table: $1, star:true}; }
	| expr alias
		{ $$ = {expr: $1}; Object.assign($$,$2);  }
	;

alias
	:
		{ $$ = undefined;}
	| name
		{ $$ = {alias: $1};}
	| AS name
		{ $$ = {alias: $2};}
	;

from
	: 
		{ $$ = undefined; }
/*	| FROM table_or_subqueries
		{ $$ = {from:$2}; }
*/	| FROM join_clause
		{ $$ = {from:$2}; }
	;
/*
table_or_subqueries
	: table_or_subqueries COMMA table_or_subquery
		{ $$ = $1; $$.push($3); }
	| table_or_subquery
		{ $$ = [$1]; }
	;
*/
table_or_subquery
	: database_table_name alias indexed
		{ $$ = $1; Object.assign($$,$2); Object.assign($$,$3); }
/*	| LPAR table_or_subqueries RPAR
		{ $$ = {tabsubs: $2}; }
*/	| LPAR join_clause RPAR
		{ $$ = {join:$2}; }
	| LPAR select_stmt RPAR alias
		{ $$ = {select: $2}; Object.assign($$,$4); }
	; 

join_clause
	: table_or_subquery
		{ $$ = [$1]; }
	| join_clause join_operator table_or_subquery join_constraint
		{ 
			Object.assign($3,$2);
			Object.assign($3,$4);
			$$.push($3);
		}
	;
join_operator
	: COMMA
		{ $$ = {join_type: 'CROSS'}; } 
	| join_type JOIN
		{ $$ = $1; } 
	| NATURAL join_type JOIN
		{ $$ = $1; Object.assign($$, {natural:true}); } 
	;

join_type
	: 
		{ $$ = {join_type: 'INNER'}; }
	| LEFT OUTER
		{ $$ = {join_type: 'LEFT'}; }
	| LEFT
		{ $$ = {join_type: 'LEFT'}; }
	| INNER
		{ $$ = {join_type: 'INNER'}; }
	| CROSS
		{ $$ = {join_type: 'CROSS'}; }
	;

join_constraint
	:
		{ $$ = undefined; } 
	| ON expr
		{ $$ = {on: $2}; }
	| USING LPAR columns RPAR
		{ $$ = {using: $3}; }
	;

group_by
	:
	| GROUP BY exprs
		{ $$ = {group_by: $3}; }
	| GROUP BY exprs HAVING expr	
		{ $$ = {group_by: $3, having: $5}; }
	;

exprs
	: exprs COMMA expr
		{ $$ = $1; $$.push($3); }
	| expr
		{ $$ = [$1]; }
	;

values
	: values COMMA value
		{ $$ = $1; $$.push($3); }
	| value
		{ $$ = [$1]; }
	;

value
	: LPAR subvalues RPAR
		{ $$ = $2; }
	;

subvalues
	: subvalues COMMA expr
		{ $$ = $1; $$.push($3); }
	| expr
		{ $$ = [$1]; }
	;


update_stmt
	: with update_action qualified_table_name SET column_expr_list where order_limit_clause
		{ 
			$$ = {statement: 'UPDATE', action: $2, set: $5};
			Object.assign($$,$1);
			Object.assign($$,$3);
			Object.assign($$,$6);
		}
	| update_action qualified_table_name SET column_expr_list where order_limit_clause
		{ 
			$$ = {statement: 'UPDATE', action: $1, set: $4};
			Object.assign($$,$2);
			Object.assign($$,$5);
		}
	;

truncate_stmt
	: TRUNCATE qualified_table_name
		{ 
			$$ = {statement: 'TRUNCATE'};
			Object.assign($$,$2);
		}
	;

update_action
	: UPDATE
		{ $$ = 'UPDATE'}
	| UPDATE OR ROLLBACK
		{ $$ = 'UPDATE OR ROLLBACK'}
	| UPDATE OR ABORT
		{ $$ = 'UPDATE OR ABORT'}
	| UPDATE OR REPLACE
		{ $$ = 'UPDATE OR REPLACE'}
	| UPDATE OR FAIL
		{ $$ = 'UPDATE OR FAIL'}
	| UPDATE OR IGNORE
		{ $$ = 'UPDATE OR IGNORE'}
	;
column_expr_list
	: column_expr_list COMMA column_expr
		{ $$ = $1; $$.push($3); }
	| column_expr
		{ $$ = [$1]; }
	;


column_expr
	: name EQ expr
		{ $$ = {column:$1, expr: $3}; }
	;

	
vacuum_stmt
	: VACUUM
		{ $$ = {statement: 'VACUUM'}; }
	;

expr
	: literal_value	shorthand_type_cast
		{ $$=$1; Object.assign($$, $2) }
	| ARRAY LBRA RBRA shorthand_type_cast
		{ $$={type: 'array', value: []}; }
	| ARRAY LBRA exprs RBRA shorthand_type_cast
		{ $$={type: 'array', value: $3}; }
	| NULL
		{ $$ = {type:'NULL'}; }
	| bind_parameter
		{ $$ = {bind_parameter: $1}; }
	| name shorthand_type_cast
		{ $$ = {column: $1}; }
	| name DOT name shorthand_type_cast
		{ $$ = {table: $1, column: $3}; }
	| name DOT name DOT name shorthand_type_cast
		{ $$ = {database: $1, table: $3, column: $5}; }

	| PLUS expr
		{ $$ = {op: 'UNIPLUS', expr: $2}; }
	| MINUS expr
		{ $$ = {op: 'UNIMINUS', expr: $2}; }
	| NOT LPAR expr RPAR
		{ $$ = {op: 'NOT', expr: $3}; }

	| expr PLUS expr
		{ $$ = {op: 'PLUS', left: $1, right: $3}; }
	| expr MINUS expr
		{ $$ = {op: 'MINUS', left: $1, right: $3}; }
	| expr STAR expr
		{ $$ = {op: 'MULTIPLY', left: $1, right: $3}; }
	| expr SLASH expr
		{ $$ = {op: 'DIVIDE', left: $1, right: $3}; }
	| expr REM expr
		{ $$ = {op: 'REM', left: $1, right: $3}; }

	| expr LSHIFT expr
		{ $$ = {op: 'LSHIFT', left: $1, right: $3}; }
	| expr RSHIFT expr
		{ $$ = {op: 'RSHIFT', left: $1, right: $3}; }

	| expr EQ expr
		{ $$ = {op: 'EQ', left: $1, right: $3}; }
	| expr NE expr
		{ $$ = {op: 'NE', left: $1, right: $3}; }
	| expr GT expr
		{ $$ = {op: 'GT', left: $1, right: $3}; }
	| expr GE expr
		{ $$ = {op: 'GE', left: $1, right: $3}; }
	| expr LT expr
		{ $$ = {op: 'LT', left: $1, right: $3}; }
	| expr LE expr
		{ $$ = {op: 'LE', left: $1, right: $3}; }

	| expr AND expr
		{ $$ = {op: 'AND', left: $1, right: $3}; }
	| expr OR expr
		{ $$ = {op: 'OR', left: $1, right: $3}; }

	| name LPAR RPAR
		{ $$ = {function:$1, arguments: []}; } 
	| name LPAR arguments RPAR
		{ $$ = {function:$1, arguments: $3}; } 
	| LPAR expr RPAR shorthand_type_cast
		{ $$ = {op: 'PAR', expr:$2, cast: $4}; }
	| CAST LPAR expr AS type_name RPAR
		{ $$ = {op: 'CAST', expr:$2}; Object.assign($$,$5); }

	| expr COLLATE name
		{ $$ = {op: 'COLLATE', left: $1, right:$3};}
	| expr ISNULL
		{ $$ = {op: 'ISNULL', expr:$1}; }
	| expr IS NULL
		{ $$ = {op: 'ISNULL', expr:$1}; }
	| expr NOTNULL
		{ $$ = {op: 'NOTNULL', expr:$1}; }
	| expr NOT NULL
		{ $$ = {op: 'NOTNULL', expr:$1}; }
	| expr IS NOT NULL
		{ $$ = {op: 'NOTNULL', expr:$1}; }

	| expr ESCAPE expr
		{ $$ = {op:'ESCAPE', left: $1, right: $3}; }
	| expr LIKE expr
		{ 
			$$ = {op: 'LIKE', left:$1, right:$3}; 
			/*if(typeof $3 != 'undefined') {
				if($3.op != 'ESCAPE') {
					throw new Error('Should be ESCAPE');
				} else {
					$$.right = $3.left; 
					$$.escape = $3.right; 
				}
			}*/
		}
	| expr OPLIKE expr
		{ $$ = {op: 'LIKE', left:$1, right:$3}; }
	| expr NOT LIKE expr
		{ 
			$$ = {op: 'LIKE', not:true, left:$1, right:$4}; 
			/*if(typeof $4 != 'undefined') {
				if($4.op != 'ESCAPE') {
					throw new Error('Should be ESCAPE');
				} else {
					$$.right = $4.left; 
					$$.escape = $4.right; 
				}
			}*/
		}
	| expr OPNOTLIKE expr
		{ $$ = {op: 'LIKE', not:true, left:$1, right:$3}; }
	| expr ILIKE expr
		{ 
			$$ = {op: 'ILIKE', left:$1, right:$3};
		}
	| expr NOT ILIKE expr
		{ 
			$$ = {op: 'ILIKE', not: true, left:$1, right:$4};
		}
	| expr MATCH expr
		{ 
			$$ = {op: 'MATCH', left:$1, right:$3}; 
			if(typeof $3 != 'undefined') {
				if($3.op != 'ESCAPE') {
					throw new Error('Should be ESCAPE');
				} else {
					$$.right = $3.left; 
					$$.escape = $3.right; 
				}
			} 
		}
	| expr NOT MATCH expr
		{ 
			$$ = {op: 'MATCH', not:true, left:$1, right:$4}; 
			if(typeof $4 != 'undefined') {
				if($4.op != 'ESCAPE') {
					throw new Error('Should be ESCAPE');
				} else {
					$$.right = $4.left; 
					$$.escape = $4.right; 
				}
			} 
		}

/*	| expr like_match expr escape_expr
*/
/*	| expr NOT NULL
		{ $$ = {op: 'NOTNULL', expr:$1}; }
	| expr IS not expr
*/
/*	| expr not BETWEEN expr
		{ 
			if($4.op != 'AND') throw new Error('Wrong syntax of BETWEEN AND');
			$$ = {op: 'BETWEEN', expr: $1, left:$4.left, right:$6.right}; 
			Object.assign($$,$2); 
		}
*/	
	| expr BETWEEN expr 
		{ 
			if($3.op != 'AND') throw new Error('Wrong syntax of BETWEEN AND');
			$$ = {op: 'BETWEEN', expr: $1, left:$3.left, right:$3.right}; 
		}
	| expr NOT BETWEEN expr 
		{ 
			if($4.op != 'AND') throw new Error('Wrong syntax of NOT BETWEEN AND');
			$$ = {op: 'BETWEEN', not:true, expr: $1, left:$4.left, right:$4.right}; 
		}
	| expr IN database_table_name
		{ $$ = {op: 'IN', expr: $1}; Object.assign($$,$3);}
	| expr IN LPAR RPAR 
		{ $$ = {op: 'IN', expr: $1}; Object.assign($$,$3);}
	| expr IN LPAR select_stmt RPAR 
		{ $$ = {op: 'IN', expr: $1, select: $4}; }
	| expr IN LPAR exprs RPAR 
		{ $$ = {op: 'IN', expr: $1, exprs: $4}; }
	| expr NOT IN database_table_name
		{ $$ = {op: 'IN', not: true, expr: $1}; Object.assign($$,$4);}
	| expr NOT IN LPAR RPAR 
		{ $$ = {op: 'IN', not: true, expr: $1}; Object.assign($$,$4);}
	| expr NOT IN LPAR select_stmt RPAR 
		{ $$ = {op: 'IN', not: true, expr: $1, select: $5}; }
	| expr NOT IN LPAR exprs RPAR 
		{ $$ = {op: 'IN', not: true, expr: $1, exprs: $5}; }
	| not EXISTS LPAR select_stmt RPAR
		{ $$ = {op:'EXISTS', select: $4}; Object.assign($$,$1);}
	| LPAR select_stmt RPAR
		{ $$ = {op:'SELECT', select:$2}; } 
	| CASE expr when_then_list else END
		{ $$ = {op: 'CASE', expr: $2, whens: $3}; Object.assign($$,$4); }
	| CASE when_then_list else END
		{ $$ = {op: 'WHEN', whens: $2}; Object.assign($$,$3);}
	;

literal_value
	: signed_number
		{ $$ = {type:'number', value: $1}; }
	| boolean_literal
		{ $$ = {type:'boolean', value: $1}}
	| string_literal
		{ $$ = {type:'string', value: $1}}
	;

not
	:
		{ $$ = undefined; }
	| NOT
		{ $$ = {not: true}; }
	;
/*
unary_operator
	: PLUS
		{ $$ = 'UNIPLUS'; }
	| MINUS
		{ $$ = 'UNIMINUS'; }
	| TILDE
		{ $$ = 'UNITILDE'; }
	;

binary_operator
	: PLUS
		{ $$ = 'PLUS'; }
	| MINUS
		{ $$ = 'MINUS'; }
	| STAR
		{ $$ = 'MULTIPLY'; }
	| SLASH
		{ $$ = 'DIVIDE'; }
	;
*/

arguments
	: arguments COMMA expr
		{ $$ = $1; $$.push($3); }
	| expr
		{ $$ = [$1]; }
  | STAR
		{ $$ = [{star:true}]; }
	| DISTINCT LPAR arguments RPAR
		{ $$ = {function:'distinct', arguments: $3}; } 
	;

when_then_list 
	: when_then_list when_then
		{ $$ = $1; $$.push($2); }
	| when_then
		{ $$ = [$1]; }
	;

when_then
	: WHEN expr THEN expr
		{ $$ = {when: $2, then: $4}; }
	;	

else
	:
		{ $$ = undefined; }
	| ELSE expr
		{ $$ = {else:$2}; }
	;
