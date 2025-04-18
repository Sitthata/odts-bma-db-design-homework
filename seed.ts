/**
 * ! Executing this script will delete all data in your database and seed it with 10 users.
 * ! Make sure to adjust the script to your needs.
 * Use any TypeScript runner to run this script, for example: `npx tsx seed.ts`
 * Learn more about the Seed Client by following our guide: https://docs.snaplet.dev/seed/getting-started
 */
import { createSeedClient } from "@snaplet/seed";
import { getSeedCourses, getSeedEnrollments, getSeedStudents } from "./lib/utils";

const seed = await createSeedClient({ dryRun: true });

const main = async () => {
  // Truncate all tables in the database
  // await seed.$resetDatabase();

  // Seed the database with 10 users
  await seedDb();

  // Type completion not working? You might want to reload your TypeScript Server to pick up the changes

  process.exit();
};

const seedDb = async () => {
  const courses = getSeedCourses();
  await seed.course(courses);

  const students = getSeedStudents();
  await seed.student(students);

  const enrollments = getSeedEnrollments(students.length, courses.length);
  await seed.enrollment(enrollments);
};

main();
