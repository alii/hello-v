FROM thevlang/vlang:alpine

# Build app
ADD main.v .
RUN v main.v

CMD ["./main"]