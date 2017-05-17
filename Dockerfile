FROM centos:latest

RUN yum install -y file sudo

RUN curl -sSf https://static.rust-lang.org/rustup.sh | sh

RUN git clone https://github.com/mozilla/sccache

WORKDIR sccache

RUN cargo build --features=all --release && cargo install

CMD ["sleep", "1000000000"]
