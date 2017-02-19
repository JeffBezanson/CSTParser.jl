facts("import statements") do
    strs = ["import ModA"
            "import ModA.subModA"
            "import ModA.subModA: a"
            "import ModA.subModA: a, b, c"
            "import ModA.subModA: a, b, c.d"]
    for str in strs
        test_parse(str)
    end
end

facts("export statements") do
    strs = ["export ModA"
            "export a, b, c"]
    for str in strs
        test_parse(str)
    end
end
