
FROM mverleg/rust_nightly_musl_base:nodeps_2022-10-01_35

COPY ./ ./

RUN cargo upgrade && cargo update

RUN cargo --offline outdated --exit-code 1
