SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam612@yahoo.com' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam612@yahoo.com' AND "password" = ''
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam612@yahoo.com' AND "password" = ''
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'xyz@abc.com' AND "password" = ''
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'xyz@abc.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'xyz@abc.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'xyz@abc.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'xyz@abc.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'xyz@abc.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam612@yahoo.com' AND "password" = '12345'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam612@yahoo.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam612@yahoo.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam612@yahoo.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."id" AS "User__id", "User"."email" AS "User__email", "User"."password" AS "User__password", "User"."created" AS "User__created", "User"."modified" AS "User__modified", "User"."delete_flg" AS "User__delete_flg" FROM "public"."users" AS "User"   WHERE 1 = 1
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = '' AND "password" = ''
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" IS NULL AND "password" IS NULL
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tmtam612@gmail.com'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '1234'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '1234'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '1'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam612@yahoo.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '123'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '$2a$10$Q4SRF6Ls.5pVz6LWsqC9kuXl1qYuq8irBpMh5lZSzDPuzqo04YA..'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '$2a$10$Zn6ORIOoHr0CGz9yNJMO5ead.ZSH4w3090NYjX7P.9hpk5uZsTS.K'
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SET search_path TO "public"
SELECT table_name as name FROM INFORMATION_SCHEMA.tables WHERE table_schema = ?
SELECT DISTINCT table_schema AS schema,
					column_name AS name,
					data_type AS type,
					is_nullable AS null,
					column_default AS default,
					ordinal_position AS position,
					character_maximum_length AS char_length,
					character_octet_length AS oct_length,
					pg_get_serial_sequence(attr.attrelid::regclass::text, attr.attname) IS NOT NULL AS has_serial
				FROM information_schema.columns c
				INNER JOIN pg_catalog.pg_namespace ns ON (ns.nspname = table_schema)
				INNER JOIN pg_catalog.pg_class cl ON (cl.relnamespace = ns.oid AND cl.relname = table_name)
				LEFT JOIN pg_catalog.pg_attribute attr ON (cl.oid = attr.attrelid AND column_name = attr.attname)
				WHERE table_name = ? AND table_schema = ? AND table_catalog = ?
				ORDER BY ordinal_position
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@gmail.com' AND "password" = '$2a$10$CBQT5MI0tWQbKnDvVbVr/OOYUTAUbll2L1Z8sp9k4iUR7CMKcOLya'
SET search_path TO "public"
