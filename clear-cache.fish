function clear-cache
echo 1 | sudo tee /proc/sys/vm/drop_caches 
end
