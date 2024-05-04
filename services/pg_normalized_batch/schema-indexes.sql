CREATE INDEX idx_normalized_2 ON tweet_tags(tag, id_tweets);
CREATE INDEX idx_normalized_3 ON tweet_tags(id_tweets, tag);
CREATE INDEX idx_normalized_5 ON tweets USING GIN(to_tsvector('english', text)) WHERE lang = 'en';
CREATE INDEX idx_normalized_6 ON tweets(id_tweets, lang);
CREATE INDEX idx_normalized_7 ON tweets(lang);
CREATE INDEX idx_normalized_8 ON tweet_tags(tag text_pattern_ops, id_tweets);
