#include <gtest/gtest.h>
#include "header.h"

TEST(Example, EmptyTest) {
    std::string ftp_path = "../";
    filer(ftp_path);
    EXPECT_EQ(Brokers.size(), 3);

    if (out.is_open())
        if (bf::is_directory(ftp_path)) {
            out << "\n\tOverall:\n";
            if (!Brokers.empty()) {
                std::for_each(Brokers.begin(), Brokers.end(),
                              [](const auto &i) {
                                  for (const auto &j : i.second)
                                      out << "broker: " << i.first << " account: " << j.first << " files: "
                                          << j.second.second << " lastdate: " << j.second.first << std::endl;
                              });
            } else
                std::cout << "\n!Empty!\n";

        }

    Brokers.clear();
    out.clear();
}