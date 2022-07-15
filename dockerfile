# create jekly container from ruby alpine image
# use ruby 3.1.2
FROM ruby:3.1.2-alpine3.16

# add jekyll dependencies to alpin
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

#update ruby bunderl and install jekyll
RUN gem update bundler && gem install bundler jekyll
