class Song 
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def name
        @name
    end

    def artist 
        @artist
    end 

    def genre
        @genre
    end

    def self.count
        @@count
    end

    def self.genres
        @unique_genres = @@genres.uniq
        @unique_genres
    end

    def self.artists
        @unique_artist = @@artists.uniq
        @unique_artist
    end

    def self.genre_count
        @genre_count={}
        @@genres.each do |genre|
            if @genre_count["#{genre}"] == nil
                @genre_count["#{genre}"] = 1
            elsif @genre_count["#{genre}"] >= 1
                @genre_count["#{genre}"] += 1
            end
        end
        @genre_count
    end

    def self.artist_count 
        @artist_count={}
        @@artists.each do |artist|
            if @artist_count["#{artist}"] == nil
                @artist_count["#{artist}"] = 1
            elsif @artist_count["#{artist}"] >= 1
                @artist_count["#{artist}"] += 1
            end
        end
        @artist_count
    end
end
