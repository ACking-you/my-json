#define ANKERL_NANOBENCH_IMPLEMENT
#include "chrono"
#include "ejson/parser.h"
#include "nanobench.h"
#include "gtest/gtest.h"
#include <fstream>
#include <string>

struct Score {
  double p;
};

struct student {
  int id{};
  std::string name;
  Score score{};
};

struct person {
  std::string name;
  int id{};
};

class Value {
private:
  int id_;
  std::string name_;

public:
  //	FROM_JSON_FRIEND_FUNC(Value, a, b)
  //	{
  //		a.at("id").get_to(b.id_);
  //		a.at("name").get_to(b.name_);
  //	}
  //	TO_JSON_FRIEND_FUNC(Value, a, b)
  //	{
  //		a.at("id").get_from(b.id_);
  //		a.at("name").get_from(b.name_);
  //	}
  AUTO_GEN_INTRUSIVE(Value, id_, name_)
};

AUTO_GEN_NON_INTRUSIVE(person, id, name)

AUTO_GEN_NON_INTRUSIVE(Score, p)
AUTO_GEN_NON_INTRUSIVE(student, id, name, score)

#define BASE_DIR "../../"
// 获取用于测试的json数据
auto getSourceString() -> std::string {
  auto ifs = std::ifstream(BASE_DIR "test.json");
  if (ifs) {
    return std::string{std::istreambuf_iterator<char>(ifs),
                       std::istreambuf_iterator<char>()};
  }
  throw std::runtime_error("error in getSource");
}

void outPutValidJson(std::string const &src) {
  auto ofs = std::ofstream(BASE_DIR "valid.json");
  ofs << src;
}

TEST(Parser, FromJson_FromJson) {
  const char *json1 =
      R"({"id":324,"name":"刘xx","score":{"p":2342343243242.124}})";
  const char *json2 = R"({"name":"老王","id":324})";
  student stu;
  person p;
  ejson::Parser::FromJSON(json2, p);
  ejson::Parser::FromJSON(json1, stu);
  auto j1 = ejson::Parser::ToJSON(stu);
  auto j2 = ejson::Parser::ToJSON(p);

  using namespace ejson_literals;

  //重载字面量运算符
  auto j = R"({"id":32,"name":"测试"})"_json;
  EXPECT_EQ(j.to_string(), R"({"id":32,"name":"测试"})");

  EXPECT_EQ(p.id, 324);
  EXPECT_EQ(p.name, "老王");
  EXPECT_EQ(stu.id, 324);
  EXPECT_EQ(stu.name, "刘xx");
  EXPECT_EQ(stu.score.p, 2342343243242.124);

  EXPECT_EQ(j1, json1); // 会因为浮点数的精度问题导致结果不一致
  EXPECT_EQ(j2, json2);
}

ENABLE_JSON_COUT(student)

TEST(JObject, to_json) {
  student stu;
  stu.id = 3242;
  stu.score.p = 3243.242;
  stu.name = "李明";
  for (int i = 0; i < 100; i++) {
    stu.id = i;
    std::cout << stu << "\n";
  }
}

TEST(Parser, valid) {
  auto src = getSourceString();
  auto j = ejson::Parser::FromString(src);
  outPutValidJson(j.to_string());
}

TEST(Parser, FromFile) {
  auto j = ejson::Parser::FromFile("../../test.json");
  outPutValidJson(j.to_string());
}

TEST(Parser, ToFile) {
  student stu;
  stu.id = 3242;
  stu.score.p = 3243.242;
  stu.name = "李明";
  ejson::Parser::ToFile("../../valid.json", stu);
}

TEST(Parser, BenchM) {
  auto src = getSourceString();
  ejson::JObject j;
  ankerl::nanobench::Bench().minEpochIterations(1185).run(
      "FromJson", [&]() { j = std::move(ejson::Parser::FromString(src)); });
  std::string out;
  ankerl::nanobench::Bench().minEpochIterations(109).run(
      "ToJson to_json", [&]() { out = std::move(j.to_string()); });
  outPutValidJson(out);
}
