FROM intercity/nginx-jekyll-static-site
COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir /source
WORKDIR /source
ADD . /source
RUN JEKYLL_ENV=production bundle exec jekyll build --destination /usr/share/nginx/html
