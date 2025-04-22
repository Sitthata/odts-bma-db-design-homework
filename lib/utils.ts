import { fakerTH as faker } from "@faker-js/faker";

type Course = {
  id: number;
  code: string;
  name: string;
};

type Offering = {
  id: number;
  course_id: number;
  term_id: number;
};

type Student = {
  id: number;
  first_name: string;
  last_name: string;
  gov_id: string;
  gender: "M" | "F";
};

type Enrollment = {
  id: number;
  student_id: number;
  course_id: number;
}

export const getSeedCourses = () => {
  return [
    { id: 1, code: "FLOR101", name: "จัดดอกไม้เพื่ออาชีพ" },
    { id: 2, code: "BVRG101", name: "เครื่องดื่มและเครื่องดื่มเพื่อสุขภาพ" },
    { id: 3, code: "BAKE101", name: "ขนมอบ" },
    { id: 4, code: "THAI101", name: "อาหารไทย ห้อง 1" },
    { id: 5, code: "BEAU101", name: "แต่งหน้า-เกล้าผม-แต่งเล็บ" },
    { id: 6, code: "FLOR102", name: "ศิลปะการจัดดอกไม้ FLORISTRY" },
    { id: 7, code: "BARI101", name: "บาริสต้าเบื้องต้น" },
    { id: 8, code: "PET101", name: "การตัดแต่งขนสุนัข" },
    { id: 9, code: "INTL101", name: "อาหารนานาชาติ" },
    { id: 10, code: "DESS101", name: "ขนมไทย" },
    { id: 11, code: "WEB101", name: "อินเตอร์เน็ตและการสร้างเว็บไซต์" },
    { id: 12, code: "CGAN101", name: "คอมพิวเตอร์กราฟิกและแอนิเมชั่น" },
    { id: 13, code: "MOBI101", name: "การใช้งานโมบายเทคโนโลยี" },
    { id: 14, code: "ENG101", name: "ภาษาอังกฤษในชีวิตประจำวัน" },
    { id: 15, code: "KOR101", name: "ภาษาเกาหลีในงานธุรกิจบริการ" },
    { id: 16, code: "CHIN101", name: "ภาษาจีนเพื่อการสื่อสารในชีวิตประจำวัน" },
    { id: 17, code: "ECOM101", name: "อินเตอร์เน็ตสำหรับงานอีคอมเมิร์ช" },
    { id: 18, code: "ENG102", name: "ภาษาอังกฤษในงานธุรกิจบริการ" },
    { id: 19, code: "KOR102", name: "ภาษาเกาหลีเพื่อการสื่อสาร" },
    { id: 20, code: "CHIN102", name: "ภาษาจีนเพื่อการสื่อสารในงานอาชีพ" },
  ] as Course[];
};

export const getSeedStudents = (size: number = 50) => {
  const govIdSet = new Set<string>();
  while (govIdSet.size < size) {
    const govId = faker.string.numeric(11);
    govIdSet.add(govId);
  }
  const govIds: string[] = Array.from(govIdSet);
  const students: Student[] = Array(size)
    .fill(null)
    .map((_, index) => ({
      id: index + 1,
      first_name: faker.person.firstName(),
      last_name: faker.person.lastName(),
      gov_id: govIds[index],
      gender: faker.helpers.arrayElement(["M", "F"]),
    }));

  const specialStudent: Student = {
    id: 999,
    first_name: "พิเศษ",
    last_name: "นักเรียน",
    gov_id: "12345678901",
    gender: "M",
  };

  students.push(specialStudent);
  return students;
};

export const getSeedEnrollments = (
  students: Student[],
  coursesOfferings: Offering[]
) => {
  const enrollments: Enrollment[] = [];
  let enrollmentsId = 1;

  [1, 2].forEach((termId) => {
    const termOfferings = coursesOfferings.filter(
      (offering) => offering.term_id === termId
    );

    termOfferings.forEach((offering) => {
      const studentCount = faker.number.int({ min: 1, max: 30 });
      const selectedStudents = new Set();
      
      while (selectedStudents.size < studentCount) {
        const randomStudent = faker.helpers.arrayElement(students);
        selectedStudents.add(randomStudent.id);

        enrollments.push({
          id: enrollmentsId++,
          student_id: randomStudent.id,
          course_id: offering.course_id,
        });
      }
    })
  });
  return enrollments;
};

export const getSeedAcademicYears = () => {
  return [
    {
      id: 1,
      year_label: "2024",
      start_date: "2024-01-01",
      end_date: "2024-12-31",
    },
    {
      id: 2,
      year_label: "2025",
      start_date: "2025-01-01",
      end_date: "2025-12-31",
    },
  ];
};

export const getSeedTerms = () => {
  return [
    {
      id: 1,
      term_name: "1/2024",
      start_date: "2024-05-01",
      end_date: "2024-9-31",
      academic_year_id: 1,
    },
    {
      id: 2,
      term_name: "2/2024",
      start_date: "2024-11-01",
      end_date: "2025-3-31",
      academic_year_id: 1,
    },
    {
      id: 3,
      term_name: "1/2025",
      start_date: "2025-05-01",
      end_date: "2025-9-31",
      academic_year_id: 2,
    },
    {
      id: 4,
      term_name: "2/2025",
      start_date: "2025-11-01",
      end_date: "2026-3-31",
      academic_year_id: 2,
    },
  ];
};

export const getSeedCourseOfferings = () => {
  const offerings: Offering[] = [];
  const allCourses = getSeedCourses();
  let offeringId = 1;

  const termOneCourses = getSeedCourseForTerm(allCourses, 5);
  const termTwoCourses = getSeedCourseForTerm(allCourses, 5);
  const termThreeCourses = getSeedCourseForTerm(allCourses, 5);

  termOneCourses.forEach((courseId) => {
    offerings.push({
      id: offeringId++,
      course_id: courseId,
      term_id: 1,
    });
  });

  // Add course offerings for Term 2/2024
  termTwoCourses.forEach((courseId) => {
    offerings.push({
      id: offeringId++,
      course_id: courseId,
      term_id: 2,
    });
  });

  // Add course offerings for Term 1/2025
  termThreeCourses.forEach((courseId) => {
    offerings.push({
      id: offeringId++,
      course_id: courseId,
      term_id: 3,
    });
  });

  return offerings;
};

export const getSeedCourseForTerm = (allCourses: Course[], count: number) => {
  const courses = allCourses.map((course) => course.id);
  return faker.helpers.arrayElements(courses, count);
};
