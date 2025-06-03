FROM jekyll/jekyll

ENV JEKYLL_ENV=production

COPY --chown=jekyll:jekyll Gemfile .
COPY --chown=jekyll:jekyll Gemfile.lock .

RUN bundle install --quiet
RUN bundle exec jekyll clean
RUN bundle exec jekyll build

CMD ["jekyll", "serve"]
