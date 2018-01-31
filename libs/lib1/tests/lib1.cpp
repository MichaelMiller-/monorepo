#define CATCH_CONFIG_MAIN
#include <catch.hpp>

#include <vector>

TEST_CASE("test case for library1", "[lib1]")
{
   SECTION("trivial test")
   {
      std::vector<int> result{};

      REQUIRE(result.empty() == true);
   }
}
