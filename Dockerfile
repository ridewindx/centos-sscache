FROM centos:latest

RUM yum install -y file

RUN curl -sSf https://static.rust-lang.org/rustup.sh | sh

RUN git clone https://github.com/mozilla/sccache

WORKDIR sccache

RUN cargo build --features=all --release && cargo install

CMD ["sleep", "1000000000"]
