# Function to import module by path
function import
    if test (count $argv) -eq 0
        echo "Usage: import <module>" >&2
        return 1
    end
    
    set module $argv[1]
    if not string match -q "*.fish" $module
        set module "$module.fish"
    end
    if test -f $module
        source $module
    else
        echo "Error: Module '$module' not found" >&2
        return 1
    end
end
