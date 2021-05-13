FROM thevlang/vlang:alpine

ADD . .
RUN v main.v

CMD ["./main"]