CREATE INDEX idx_denormalized_1 ON tweets_jsonb USING GIN((data->'entities'->'hashtags'));
CREATE INDEX idx_denormalized_2 ON tweets_jsonb USING GIN((data->'extended_tweet'->'entities'->'hashtags'));
CREATE INDEX idx_denormalized_3 ON tweets_jsonb USING GIN(to_tsvector('english', COALESCE(data->'extended_tweet'->>'full_text', data->>'text'))) WHERE (data->>'lang'='en');
CREATE INDEX idx_denormalized_4 ON tweets_jsonb((data->>'lang'));
