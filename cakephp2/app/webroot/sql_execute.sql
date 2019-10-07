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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc1@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc1@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('tâm', 'abc1@yahoo.com', '$2a$10$TZnDkuVKB7VCgtHZlh3b9.rms8RgzX4GVO8cDh4B6x6INF7NICq8S', '2019-10-07 17:26:25', '2019-10-07 17:26:25')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc1@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc2@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc2@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('tâm', 'abc2@yahoo.com', '$2a$10$L03Uo6B0jnAttp9uJdY63.VaS9dMknPBwpoTkrhiwo.aXwt4Lle4a', '2019-10-07 17:27:12', '2019-10-07 17:27:12')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc2@yahoo.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc3@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc3@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('tâm', 'abc3@yahoo.com', '$2a$10$QX0T0vroMo/AErWCIhUCQ.5mKnuarGFgBH6YXvzX4LuCSIjngvOhS', '2019-10-07 17:28:07', '2019-10-07 17:28:07')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc3@yahoo.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc3@yahoo.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc3@yahoo.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc4@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc4@yahoo.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc4@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc4@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('tâm', 'abc4@yahoo.com', '$2a$10$42B88dlkYXUfV6h5VuvDNuy0HOGqxDJp088d4f68m7/vRZf3LBvD6', '2019-10-07 17:29:56', '2019-10-07 17:29:56')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc2@yahoo.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc5@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc5@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('tâm', 'abc5@yahoo.com', '$2a$10$o7RtnDALNCeKv3J.RP.Iuu679AgqdXbkgW7edIhDDQlZtRQGMBI2S', '2019-10-07 17:30:24', '2019-10-07 17:30:24')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc5@yahoo.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc6@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'abc6@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('tâm', 'abc6@yahoo.com', '$2a$10$tp5o2lnS6Iy9WdZlWc.fe.gTj7b5CjYutV0EuwOfkivvAvQmsHQqK', '2019-10-07 17:31:05', '2019-10-07 17:31:05')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'xyz@abc.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'xyz@abc.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('a', 'xyz@abc.com', '$2a$10$kSTUN2HbD4MNNJJmQ6RRhewuMoR5vwlYipkpO66hkyUjecHwo1hBC', '2019-10-07 17:32:54', '2019-10-07 17:32:54')
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'xyz@abc.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'xyz2@abc.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'xyz2@abc.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('a', 'xyz2@abc.com', '$2a$10$Kon/tvoGu/yn5KjYD1eMcu7EwsEO7dch5VY/plA6ctxPyf5VvSzJy', '2019-10-07 17:33:03', '2019-10-07 17:33:03')
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
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('a', 'tranminhtam612@yahoo.com', '$2a$10$aQUibjAof6esIawXjV7youSefZ.1d5JupabjwQC6UuB/ic5fz2ECK', '2019-10-07 17:37:42', '2019-10-07 17:37:42')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tmtam@gmail.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tmtam@gmail.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('a', 'tmtam@gmail.com', '$2a$10$BWpjpa4ABJEMJhobJXjyBebi1a3bUIeJaChTGvjn0YVt7qDUfawyG', '2019-10-07 17:38:09', '2019-10-07 17:38:09')
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tmtam@gmail.com'
SET search_path TO "public"
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tmtam1@gmail.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tmtam1@gmail.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('a', 'tmtam1@gmail.com', '$2a$10$JsH2.UyZrEsN4U.1MVCCle3kxtaYiWI4x4IuHOpaaK5H67VmZzgay', '2019-10-07 17:38:15', '2019-10-07 17:38:15')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tmtam6@gmail.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tmtam6@gmail.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('a', 'tmtam6@gmail.com', '$2a$10$FuutBiMKQkTgvE0OjYStjOXa20jVBMCS735lYyxMmjphIP8usgKjy', '2019-10-07 17:43:09', '2019-10-07 17:43:09')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tmtam6@gmail.com'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam6123@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam6123@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('123', 'tranminhtam6123@yahoo.com', '$2a$10$CMrr.db.rrGLDAmVC3WX9exhledSXSflcwTlDNAduI8ap2nIJ.ify', '2019-10-07 17:44:21', '2019-10-07 17:44:21')
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
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$WJa8..MbnTSsKOsOEn45zezfLQTXmPe/67SGm3KFskYq/uMBEiIku'
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$rW8UMzHE22xYjBCLMDr6AuRF3Quc.afsXYhElqslMz./9smH0t0zm'
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
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$HVczhslo6KSy7v9Lg.OWXOaUbzWQfEZ8LnQ7Ok.xcbsm8kPm1LSL6'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$993qItBnhFPv0u843D1EXu32AIFG9V3KPtcZExka1Xjiado4KLtR.'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$up4wWc7gXkLxr0uWjYUbseHFUMtjzNti9EFVzx97rMVqXRAjHquli'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$JPFCcYZ585Fux8n.tZhf.uMuVbglUdyvXLycHQOKoy1kDqU2snpdW'
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
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@yahoo.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@yahoo.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@yahoo.com' AND "password" = '123'
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
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@yahoo.com' AND "password" = '123'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@yahoo.com' AND "password" = '123'
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
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tmtam612@yahoo.com' AND "password" = '123'
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam61@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam61@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('123', 'tranminhtam61@yahoo.com', '$2a$10$01kpXMy248cR/UqwKjfBI.sv0ghpu/.Wz4CGCW/iPmDxT2qJatie2', '2019-10-07 17:48:04', '2019-10-07 17:48:04')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam62@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam62@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('123', 'tranminhtam62@yahoo.com', '$2a$10$keHK9E6cDXSLVXN2FfaMgu..h17gk8.gd.SbQHU0B0OH3h5yJeKem', '2019-10-07 17:48:46', '2019-10-07 17:48:46')
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
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam63@yahoo.com'
SELECT COUNT(*) AS "count" FROM "public"."users" AS "User"   WHERE "User"."email" = 'tranminhtam63@yahoo.com'
INSERT INTO "public"."users" ("name", "email", "password", "modified", "created") VALUES ('123', 'tranminhtam63@yahoo.com', '$2a$10$2FE8/ksnV3ZYztw3ZkVpfey6F1NZ03Jsn03KWSgXTUf.mbFVMezei', '2019-10-07 17:49:16', '2019-10-07 17:49:16')
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
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$hlOfCwtUF2bJUuMZsbyiH.wXA9BXnbgZjLhpx3CR1rh/0vu3frt4S'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$7afXzacMFM3M4MFiO8CIRO64JjPhzBDAx4OQg/.owy0nGDusVtI2W'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$bVGXl05Zw1lVR1AILR9WC.5835vAx4QRsKR6BbE9YfCkwYIZBk7QK'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$4QRnyIw7SH4XUwzzASe9xuLXzO862.c2vxhbo/nkU4krwXgjka3EO'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$3c/3KFkyn7.mtpI2R3lXAOxsNtgMSJn6K.zoe7xb3/PnOEHlBkt5C'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$Gwt7P8mLbKZMtmTWwGykMu5wXBv0/AglpyZ5oDemB16SXGFJ1Lpv2'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$8S3HXjJnkFtkNpko4RTGoeBcUTC7YVvV5MpRUGjWXMVRfalyejI8e'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$mZgkUID3psVyvFV8qjmuZev7nnNhrOng4VH0Pm1uC772Mv9ohpsWe'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$d5ckWdpWduYn5GPAVG3v3O51BOapstQG1sRyfcF3kMw448TUNyK.m'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$TVoV8JzdLDoR3oYiuBGhD.by688YFNRXtoO/.YfsWemXwQh5xwm.m'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$WuSEa/uQZnno5M8rv2/aYeVzyyBMpU13D9MfrfmJHs5gVvDa4IICu'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$2jWpvrdNaCthE6VJj5NtZODk0/6a61WvMvfSzuoZzdg27KpJ0YN4S'
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
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$DePev1n8n1zZMYHOJfAl7OvNl7lbhTMpjwydL.0rxSmqTB7khJPHG'
SET search_path TO "public"
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '$2a$10$awboOdtJHC91jBwaketyde.3gm84O0KIxiDzbm/EwT5CxMBcS5gza'
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
SELECT "User"."email" AS "User__email" FROM "public"."users" AS "User"   WHERE "delete_flg" = 'FALSE' AND "email" = 'tranminhtam6123@yahoo.com' AND "password" = '123'
