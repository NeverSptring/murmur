echo "$(basename "$0")"
   rustc --opt-level 1 -L . --lib str2.rs \
&& rustc --opt-level 1 -L . --lib vec2.rs \
&& rustc --opt-level 1 -L . --lib djb.rs \
&& rustc --opt-level 0 -L . --lib bench.rs \
&& rustc --opt-level 1 -L . --lib bench2.rs \
&& rustc --opt-level 1 -L . main.rs -o main \
&& ./main

