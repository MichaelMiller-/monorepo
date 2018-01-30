#define CATCH_CONFIG_MAIN
#include <catch.hpp>

#include <vector>

TEST_CASE("test case for the first algorithm", "[algo1]")
{
   SECTION("trivial test")
   {
      std::vector<int> result{};

      REQUIRE(result.empty() == true);
   }
}