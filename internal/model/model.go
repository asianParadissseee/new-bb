package model

import "time"

type Item struct {
	Title      string
	Categories []string
	Link       string
	Date       time.Time
	Summary    string
	SourceName string
}

type Source struct {
	ID       int64
	Name     string
	FeedUrl  string
	CreateAt time.Time
}

type Article struct {
	ID          int64
	SourceId    int64
	Title       string
	Summary     string
	PublishedAt time.Time
	PostedAt    time.Time
	CreatedAt   time.Time
}
