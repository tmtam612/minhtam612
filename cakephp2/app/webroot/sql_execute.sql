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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam612@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam612@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam612@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam612@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('tâm', 'abc@yahoo.com', '$2a$10$I8LgfXFpU1KshNJid5QETu73ewX5y5ZDacWR3f8vIsicprPIYz6/O', '2019-10-07 17:00:42', '2019-10-07 17:00:42')
