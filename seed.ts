/**
 * ! Executing this script will delete all data in your database and seed it with 10 users.
 * ! Make sure to adjust the script to your needs.
 * Use any TypeScript runner to run this script, for example: `npx tsx seed.ts`
 * Learn more about the Seed Client by following our guide: https://docs.snaplet.dev/seed/getting-started
 */
import { createSeedClient } from "@snaplet/seed";
import { getSeedAcademicYears, getSeedCourseOfferings, getSeedCourses, getSeedEnrollments, getSeedStudents, getSeedTerms } from "./lib/utils";

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

  const students = getSeedStudents(49);

  const academicYears = getSeedAcademicYears();

  const terms = getSeedTerms();

  const courseOfferings = getSeedCourseOfferings();

  const enrollments = getSeedEnrollments(students, courseOfferings);

  await seed.course(courses);
  await seed.student(students);
  await seed.academic_year(academicYears);
  await seed.term(terms);
  await seed.course_offering(courseOfferings);
  await seed.enrollment(enrollments);
};

main();
